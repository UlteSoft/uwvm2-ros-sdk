// @file records.odin
// @brief Full fourier odin codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in odin. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 uwvm_fourier_bridge/MotionRecipe value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..1170 bytes
// and is identified by UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeMotionRecipe :: struct {
 // @brief uwvm_fourier_bridge/MotionRecipe.move_type: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_move_type: u8,
 // @brief uwvm_fourier_bridge/MotionRecipe.group: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/MotionRecipe.position: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief uwvm_fourier_bridge/MotionRecipe.has_velocity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_has_velocity: bool,
 // @brief uwvm_fourier_bridge/MotionRecipe.velocity: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief uwvm_fourier_bridge/MotionRecipe.expected_velocity: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
 field_expected_velocity: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/MotionRecipe in bytes.
// @details The inclusive bound is 1170 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeMotionRecipe_Maximum_Wire_Bytes :: 1170
// @brief Canonical codec identity of uwvm_fourier_bridge/MotionRecipe.
// @details Exact identity UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeMotionRecipe_Codec_Identity :: "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a"
// @brief Original ROS type name for uwvm_fourier_bridge/MotionRecipe.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeMotionRecipe_Native_Type :: "uwvm_fourier_bridge/MotionRecipe"
// @brief Selected original native identity for uwvm_fourier_bridge/MotionRecipe.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeMotionRecipe_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/MotionRecipe.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc() -> Ros1Uwvm_fourier_bridgeMotionRecipe {
 v: Ros1Uwvm_fourier_bridgeMotionRecipe
 v.field_move_type = 0
 v.field_group = ""
 v.field_position = nil
 v.field_has_velocity = false
 v.field_velocity = nil
 v.field_expected_velocity = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/MotionRecipe.
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
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc(v: ^Ros1Uwvm_fourier_bridgeMotionRecipe, w: ^Writer) -> bool {
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
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/MotionRecipe.
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
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeMotionRecipe,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeMotionRecipe()
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
// @brief Encode one complete uwvm_fourier_bridge/MotionRecipe value.
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
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc(v: ^Ros1Uwvm_fourier_bridgeMotionRecipe, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1170}
 if !write_Ros1Uwvm_fourier_bridgeMotionRecipe(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1170}
 if !write_Ros1Uwvm_fourier_bridgeMotionRecipe(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/MotionRecipe value.
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
// @see Ros1Uwvm_fourier_bridgeMotionRecipe; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeMotionRecipe,u32) {
 if len(bytes)<18 || len(bytes)>1170 { return Ros1Uwvm_fourier_bridgeMotionRecipe{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeMotionRecipe(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeMotionRecipe{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/ExecuteMoveRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..9372 bytes
// and is identified by UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveRequest :: struct {
 // @brief uwvm_fourier_bridge/ExecuteMoveRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/ExecuteMoveRequest.moves: uwvm_fourier_bridge/MotionRecipe; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
 field_moves: []Ros1Uwvm_fourier_bridgeMotionRecipe,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/ExecuteMoveRequest in bytes.
// @details The inclusive bound is 9372 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveRequest_Maximum_Wire_Bytes :: 9372
// @brief Canonical codec identity of uwvm_fourier_bridge/ExecuteMoveRequest.
// @details Exact identity UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveRequest_Codec_Identity :: "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b"
// @brief Original ROS type name for uwvm_fourier_bridge/ExecuteMoveRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveRequest_Native_Type :: "uwvm_fourier_bridge/ExecuteMoveRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/ExecuteMoveRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/ExecuteMoveRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeExecuteMoveRequest :: proc() -> Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
 v: Ros1Uwvm_fourier_bridgeExecuteMoveRequest
 v.field_sequence = 0
 v.field_moves = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/ExecuteMoveRequest.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeExecuteMoveRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_moves)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_moves)),4) { return false }
 for e in v.field_moves {
 item:=e
 if !write_Ros1Uwvm_fourier_bridgeMotionRecipe(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/ExecuteMoveRequest.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeExecuteMoveRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeExecuteMoveRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeExecuteMoveRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_moves=make([]Ros1Uwvm_fourier_bridgeMotionRecipe,int(n),allocator)
 }
 for &e in v.field_moves {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeMotionRecipe(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/ExecuteMoveRequest value.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeExecuteMoveRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeExecuteMoveRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9372}
 if !write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9372}
 if !write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/ExecuteMoveRequest value.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeExecuteMoveRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeExecuteMoveRequest,u32) {
 if len(bytes)<12 || len(bytes)>9372 { return Ros1Uwvm_fourier_bridgeExecuteMoveRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeExecuteMoveRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/ExecuteMoveResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveResponse :: struct {
 // @brief uwvm_fourier_bridge/ExecuteMoveResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/ExecuteMoveResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/ExecuteMoveResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/ExecuteMoveResponse.
// @details Exact identity UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveResponse_Codec_Identity :: "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115"
// @brief Original ROS type name for uwvm_fourier_bridge/ExecuteMoveResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveResponse_Native_Type :: "uwvm_fourier_bridge/ExecuteMoveResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/ExecuteMoveResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeExecuteMoveResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/ExecuteMoveResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeExecuteMoveResponse :: proc() -> Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
 v: Ros1Uwvm_fourier_bridgeExecuteMoveResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/ExecuteMoveResponse.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeExecuteMoveResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/ExecuteMoveResponse.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeExecuteMoveResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeExecuteMoveResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeExecuteMoveResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/ExecuteMoveResponse value.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeExecuteMoveResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeExecuteMoveResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/ExecuteMoveResponse value.
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
// @see Ros1Uwvm_fourier_bridgeExecuteMoveResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeExecuteMoveResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeExecuteMoveResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeExecuteMoveResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeExecuteMoveResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetBaseDataRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataRequest :: struct {
 // @brief uwvm_fourier_bridge/GetBaseDataRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/GetBaseDataRequest.key: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetBaseDataRequest in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataRequest_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetBaseDataRequest.
// @details Exact identity UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataRequest_Codec_Identity :: "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528"
// @brief Original ROS type name for uwvm_fourier_bridge/GetBaseDataRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataRequest_Native_Type :: "uwvm_fourier_bridge/GetBaseDataRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetBaseDataRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetBaseDataRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetBaseDataRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
 v: Ros1Uwvm_fourier_bridgeGetBaseDataRequest
 v.field_sequence = 0
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetBaseDataRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetBaseDataRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetBaseDataRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetBaseDataRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetBaseDataRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetBaseDataRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/GetBaseDataRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetBaseDataRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetBaseDataRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetBaseDataRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetBaseDataRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetBaseDataRequest,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetBaseDataRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetBaseDataRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetBaseDataResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataResponse :: struct {
 // @brief uwvm_fourier_bridge/GetBaseDataResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetBaseDataResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetBaseDataResponse.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetBaseDataResponse in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataResponse_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/GetBaseDataResponse.
// @details Exact identity UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataResponse_Codec_Identity :: "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a"
// @brief Original ROS type name for uwvm_fourier_bridge/GetBaseDataResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataResponse_Native_Type :: "uwvm_fourier_bridge/GetBaseDataResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetBaseDataResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetBaseDataResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetBaseDataResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetBaseDataResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
 v: Ros1Uwvm_fourier_bridgeGetBaseDataResponse
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetBaseDataResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetBaseDataResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetBaseDataResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetBaseDataResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetBaseDataResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetBaseDataResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetBaseDataResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetBaseDataResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetBaseDataResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetBaseDataResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetBaseDataResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetBaseDataResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetBaseDataResponse,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros1Uwvm_fourier_bridgeGetBaseDataResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetBaseDataResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetCartesianStateRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateRequest :: struct {
 // @brief uwvm_fourier_bridge/GetCartesianStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/GetCartesianStateRequest.group: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/GetCartesianStateRequest.key: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetCartesianStateRequest in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateRequest_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of uwvm_fourier_bridge/GetCartesianStateRequest.
// @details Exact identity UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateRequest_Codec_Identity :: "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae"
// @brief Original ROS type name for uwvm_fourier_bridge/GetCartesianStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateRequest_Native_Type :: "uwvm_fourier_bridge/GetCartesianStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetCartesianStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetCartesianStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
 v: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
 v.field_sequence = 0
 v.field_group = ""
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetCartesianStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetCartesianStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/GetCartesianStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetCartesianStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros1Uwvm_fourier_bridgeGetCartesianStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetCartesianStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetCartesianStateResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateResponse :: struct {
 // @brief uwvm_fourier_bridge/GetCartesianStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetCartesianStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetCartesianStateResponse.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetCartesianStateResponse in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateResponse_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/GetCartesianStateResponse.
// @details Exact identity UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateResponse_Codec_Identity :: "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671"
// @brief Original ROS type name for uwvm_fourier_bridge/GetCartesianStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateResponse_Native_Type :: "uwvm_fourier_bridge/GetCartesianStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetCartesianStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetCartesianStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetCartesianStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
 v: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetCartesianStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetCartesianStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetCartesianStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetCartesianStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetCartesianStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetCartesianStateResponse,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros1Uwvm_fourier_bridgeGetCartesianStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetCartesianStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetContactDataRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataRequest :: struct {
 // @brief uwvm_fourier_bridge/GetContactDataRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/GetContactDataRequest.key: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetContactDataRequest in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataRequest_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetContactDataRequest.
// @details Exact identity UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataRequest_Codec_Identity :: "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787"
// @brief Original ROS type name for uwvm_fourier_bridge/GetContactDataRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataRequest_Native_Type :: "uwvm_fourier_bridge/GetContactDataRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetContactDataRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetContactDataRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetContactDataRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetContactDataRequest {
 v: Ros1Uwvm_fourier_bridgeGetContactDataRequest
 v.field_sequence = 0
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetContactDataRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetContactDataRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetContactDataRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetContactDataRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetContactDataRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetContactDataRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetContactDataRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/GetContactDataRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetContactDataRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetContactDataRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetContactDataRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetContactDataRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetContactDataRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetContactDataRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetContactDataRequest,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetContactDataRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetContactDataRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetContactDataRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetContactDataResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataResponse :: struct {
 // @brief uwvm_fourier_bridge/GetContactDataResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetContactDataResponse.error: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetContactDataResponse.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetContactDataResponse in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataResponse_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/GetContactDataResponse.
// @details Exact identity UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataResponse_Codec_Identity :: "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293"
// @brief Original ROS type name for uwvm_fourier_bridge/GetContactDataResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataResponse_Native_Type :: "uwvm_fourier_bridge/GetContactDataResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetContactDataResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetContactDataResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetContactDataResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetContactDataResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetContactDataResponse {
 v: Ros1Uwvm_fourier_bridgeGetContactDataResponse
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetContactDataResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetContactDataResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetContactDataResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetContactDataResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetContactDataResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetContactDataResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetContactDataResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetContactDataResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetContactDataResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetContactDataResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetContactDataResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetContactDataResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetContactDataResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetContactDataResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetContactDataResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetContactDataResponse,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros1Uwvm_fourier_bridgeGetContactDataResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetContactDataResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetContactDataResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetFsmNameRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameRequest :: struct {
 // @brief uwvm_fourier_bridge/GetFsmNameRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetFsmNameRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetFsmNameRequest.
// @details Exact identity UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameRequest_Codec_Identity :: "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33"
// @brief Original ROS type name for uwvm_fourier_bridge/GetFsmNameRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameRequest_Native_Type :: "uwvm_fourier_bridge/GetFsmNameRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetFsmNameRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetFsmNameRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetFsmNameRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
 v: Ros1Uwvm_fourier_bridgeGetFsmNameRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetFsmNameRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmNameRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetFsmNameRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetFsmNameRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmNameRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetFsmNameRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetFsmNameRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetFsmNameRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmNameRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetFsmNameRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetFsmNameRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmNameRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetFsmNameRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetFsmNameRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetFsmNameResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
// and is identified by UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameResponse :: struct {
 // @brief uwvm_fourier_bridge/GetFsmNameResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetFsmNameResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetFsmNameResponse.value: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetFsmNameResponse in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameResponse_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of uwvm_fourier_bridge/GetFsmNameResponse.
// @details Exact identity UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameResponse_Codec_Identity :: "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55"
// @brief Original ROS type name for uwvm_fourier_bridge/GetFsmNameResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameResponse_Native_Type :: "uwvm_fourier_bridge/GetFsmNameResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetFsmNameResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmNameResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetFsmNameResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetFsmNameResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
 v: Ros1Uwvm_fourier_bridgeGetFsmNameResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetFsmNameResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmNameResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetFsmNameResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetFsmNameResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmNameResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetFsmNameResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetFsmNameResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetFsmNameResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmNameResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetFsmNameResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetFsmNameResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmNameResponse,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros1Uwvm_fourier_bridgeGetFsmNameResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetFsmNameResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetFsmStateRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateRequest :: struct {
 // @brief uwvm_fourier_bridge/GetFsmStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetFsmStateRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetFsmStateRequest.
// @details Exact identity UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateRequest_Codec_Identity :: "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e"
// @brief Original ROS type name for uwvm_fourier_bridge/GetFsmStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateRequest_Native_Type :: "uwvm_fourier_bridge/GetFsmStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetFsmStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetFsmStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetFsmStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
 v: Ros1Uwvm_fourier_bridgeGetFsmStateRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetFsmStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetFsmStateRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetFsmStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmStateRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetFsmStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetFsmStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetFsmStateResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateResponse :: struct {
 // @brief uwvm_fourier_bridge/GetFsmStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetFsmStateResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetFsmStateResponse.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetFsmStateResponse in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateResponse_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetFsmStateResponse.
// @details Exact identity UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateResponse_Codec_Identity :: "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812"
// @brief Original ROS type name for uwvm_fourier_bridge/GetFsmStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateResponse_Native_Type :: "uwvm_fourier_bridge/GetFsmStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetFsmStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetFsmStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetFsmStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetFsmStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
 v: Ros1Uwvm_fourier_bridgeGetFsmStateResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetFsmStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetFsmStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetFsmStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetFsmStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetFsmStateResponse,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetFsmStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetFsmStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetGroupMotionStateRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: struct {
 // @brief uwvm_fourier_bridge/GetGroupMotionStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/GetGroupMotionStateRequest.group: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetGroupMotionStateRequest in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetGroupMotionStateRequest.
// @details Exact identity UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_Codec_Identity :: "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f"
// @brief Original ROS type name for uwvm_fourier_bridge/GetGroupMotionStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_Native_Type :: "uwvm_fourier_bridge/GetGroupMotionStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetGroupMotionStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetGroupMotionStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
 v: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
 v.field_sequence = 0
 v.field_group = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetGroupMotionStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetGroupMotionStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/GetGroupMotionStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetGroupMotionStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetGroupMotionStateResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: struct {
 // @brief uwvm_fourier_bridge/GetGroupMotionStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetGroupMotionStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetGroupMotionStateResponse.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetGroupMotionStateResponse in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetGroupMotionStateResponse.
// @details Exact identity UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_Codec_Identity :: "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2"
// @brief Original ROS type name for uwvm_fourier_bridge/GetGroupMotionStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_Native_Type :: "uwvm_fourier_bridge/GetGroupMotionStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetGroupMotionStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetGroupMotionStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
 v: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetGroupMotionStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetGroupMotionStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetGroupMotionStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetGroupMotionStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetGroupMotorCfgRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: struct {
 // @brief uwvm_fourier_bridge/GetGroupMotorCfgRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/GetGroupMotorCfgRequest.group: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/GetGroupMotorCfgRequest.key: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetGroupMotorCfgRequest in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of uwvm_fourier_bridge/GetGroupMotorCfgRequest.
// @details Exact identity UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_Codec_Identity :: "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576"
// @brief Original ROS type name for uwvm_fourier_bridge/GetGroupMotorCfgRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_Native_Type :: "uwvm_fourier_bridge/GetGroupMotorCfgRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetGroupMotorCfgRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetGroupMotorCfgRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
 v: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
 v.field_sequence = 0
 v.field_group = ""
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetGroupMotorCfgRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetGroupMotorCfgRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/GetGroupMotorCfgRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetGroupMotorCfgRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetGroupMotorCfgResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: struct {
 // @brief uwvm_fourier_bridge/GetGroupMotorCfgResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetGroupMotorCfgResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetGroupMotorCfgResponse.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetGroupMotorCfgResponse in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/GetGroupMotorCfgResponse.
// @details Exact identity UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_Codec_Identity :: "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72"
// @brief Original ROS type name for uwvm_fourier_bridge/GetGroupMotorCfgResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_Native_Type :: "uwvm_fourier_bridge/GetGroupMotorCfgResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetGroupMotorCfgResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetGroupMotorCfgResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
 v: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetGroupMotorCfgResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetGroupMotorCfgResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetGroupMotorCfgResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetGroupMotorCfgResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetGroupStateRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateRequest :: struct {
 // @brief uwvm_fourier_bridge/GetGroupStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/GetGroupStateRequest.group: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/GetGroupStateRequest.key: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetGroupStateRequest in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateRequest_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of uwvm_fourier_bridge/GetGroupStateRequest.
// @details Exact identity UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateRequest_Codec_Identity :: "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc"
// @brief Original ROS type name for uwvm_fourier_bridge/GetGroupStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateRequest_Native_Type :: "uwvm_fourier_bridge/GetGroupStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetGroupStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetGroupStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetGroupStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
 v: Ros1Uwvm_fourier_bridgeGetGroupStateRequest
 v.field_sequence = 0
 v.field_group = ""
 v.field_key = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetGroupStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_string(w,v.field_group,128) { return false }
 if !put_string(w,v.field_key,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetGroupStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetGroupStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetGroupStateRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/GetGroupStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetGroupStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetGroupStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetGroupStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupStateRequest,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros1Uwvm_fourier_bridgeGetGroupStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetGroupStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetGroupStateResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateResponse :: struct {
 // @brief uwvm_fourier_bridge/GetGroupStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetGroupStateResponse.error: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetGroupStateResponse.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetGroupStateResponse in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateResponse_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/GetGroupStateResponse.
// @details Exact identity UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateResponse_Codec_Identity :: "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb"
// @brief Original ROS type name for uwvm_fourier_bridge/GetGroupStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateResponse_Native_Type :: "uwvm_fourier_bridge/GetGroupStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetGroupStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetGroupStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetGroupStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetGroupStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
 v: Ros1Uwvm_fourier_bridgeGetGroupStateResponse
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetGroupStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetGroupStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetGroupStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetGroupStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetGroupStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetGroupStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetGroupStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetGroupStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetGroupStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetGroupStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetGroupStateResponse,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros1Uwvm_fourier_bridgeGetGroupStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetGroupStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetSnapshotRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotRequest :: struct {
 // @brief uwvm_fourier_bridge/GetSnapshotRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetSnapshotRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetSnapshotRequest.
// @details Exact identity UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotRequest_Codec_Identity :: "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c"
// @brief Original ROS type name for uwvm_fourier_bridge/GetSnapshotRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotRequest_Native_Type :: "uwvm_fourier_bridge/GetSnapshotRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetSnapshotRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetSnapshotRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetSnapshotRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
 v: Ros1Uwvm_fourier_bridgeGetSnapshotRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetSnapshotRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetSnapshotRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetSnapshotRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetSnapshotRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetSnapshotRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetSnapshotRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetSnapshotRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetSnapshotRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetSnapshotRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetSnapshotRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetSnapshotRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetSnapshotRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetSnapshotRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetSnapshotRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GroupState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..1684 bytes
// and is identified by UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupState :: struct {
 // @brief uwvm_fourier_bridge/GroupState.group: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/GroupState.position: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief uwvm_fourier_bridge/GroupState.velocity: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief uwvm_fourier_bridge/GroupState.effort: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_effort: []f64,
 // @brief uwvm_fourier_bridge/GroupState.motion_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
 field_motion_state: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GroupState in bytes.
// @details The inclusive bound is 1684 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupState_Maximum_Wire_Bytes :: 1684
// @brief Canonical codec identity of uwvm_fourier_bridge/GroupState.
// @details Exact identity UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupState_Codec_Identity :: "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855"
// @brief Original ROS type name for uwvm_fourier_bridge/GroupState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupState_Native_Type :: "uwvm_fourier_bridge/GroupState"
// @brief Selected original native identity for uwvm_fourier_bridge/GroupState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupState_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GroupState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGroupState :: proc() -> Ros1Uwvm_fourier_bridgeGroupState {
 v: Ros1Uwvm_fourier_bridgeGroupState
 v.field_group = ""
 v.field_position = nil
 v.field_velocity = nil
 v.field_effort = nil
 v.field_motion_state = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GroupState.
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
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGroupState :: proc(v: ^Ros1Uwvm_fourier_bridgeGroupState, w: ^Writer) -> bool {
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
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GroupState.
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
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGroupState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGroupState,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGroupState()
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
// @brief Encode one complete uwvm_fourier_bridge/GroupState value.
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
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGroupState :: proc(v: ^Ros1Uwvm_fourier_bridgeGroupState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1684}
 if !write_Ros1Uwvm_fourier_bridgeGroupState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1684}
 if !write_Ros1Uwvm_fourier_bridgeGroupState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GroupState value.
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
// @see Ros1Uwvm_fourier_bridgeGroupState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGroupState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGroupState,u32) {
 if len(bytes)<20 || len(bytes)>1684 { return Ros1Uwvm_fourier_bridgeGroupState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGroupState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGroupState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/Status value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 32..14400
// bytes and is identified by UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeStatus :: struct {
 // @brief uwvm_fourier_bridge/Status.fsm_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_fsm_state: i32,
 // @brief uwvm_fourier_bridge/Status.fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_fsm_name: string,
 // @brief uwvm_fourier_bridge/Status.upper_fsm_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_upper_fsm_state: i32,
 // @brief uwvm_fourier_bridge/Status.upper_fsm_name: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_upper_fsm_name: string,
 // @brief uwvm_fourier_bridge/Status.velocity_source: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_velocity_source: i32,
 // @brief uwvm_fourier_bridge/Status.velocity_source_name: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_velocity_source_name: string,
 // @brief uwvm_fourier_bridge/Status.stand_pose: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_stand_pose: []f64,
 // @brief uwvm_fourier_bridge/Status.groups: uwvm_fourier_bridge/GroupState; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
 field_groups: []Ros1Uwvm_fourier_bridgeGroupState,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/Status in bytes.
// @details The inclusive bound is 14400 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeStatus_Maximum_Wire_Bytes :: 14400
// @brief Canonical codec identity of uwvm_fourier_bridge/Status.
// @details Exact identity UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeStatus_Codec_Identity :: "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e"
// @brief Original ROS type name for uwvm_fourier_bridge/Status.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeStatus_Native_Type :: "uwvm_fourier_bridge/Status"
// @brief Selected original native identity for uwvm_fourier_bridge/Status.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeStatus_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/Status.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeStatus :: proc() -> Ros1Uwvm_fourier_bridgeStatus {
 v: Ros1Uwvm_fourier_bridgeStatus
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
// @brief Append every canonical field of uwvm_fourier_bridge/Status.
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
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeStatus :: proc(v: ^Ros1Uwvm_fourier_bridgeStatus, w: ^Writer) -> bool {
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
 if !write_Ros1Uwvm_fourier_bridgeGroupState(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/Status.
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
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeStatus,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeStatus()
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
 v.field_groups=make([]Ros1Uwvm_fourier_bridgeGroupState,int(n),allocator)
 }
 for &e in v.field_groups {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeGroupState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/Status value.
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
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeStatus :: proc(v: ^Ros1Uwvm_fourier_bridgeStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=14400}
 if !write_Ros1Uwvm_fourier_bridgeStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=14400}
 if !write_Ros1Uwvm_fourier_bridgeStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/Status value.
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
// @see Ros1Uwvm_fourier_bridgeStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeStatus,u32) {
 if len(bytes)<32 || len(bytes)>14400 { return Ros1Uwvm_fourier_bridgeStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetSnapshotResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 40..14536
// bytes and is identified by UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotResponse :: struct {
 // @brief uwvm_fourier_bridge/GetSnapshotResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetSnapshotResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetSnapshotResponse.value: uwvm_fourier_bridge/Status.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: Ros1Uwvm_fourier_bridgeStatus,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetSnapshotResponse in bytes.
// @details The inclusive bound is 14536 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotResponse_Maximum_Wire_Bytes :: 14536
// @brief Canonical codec identity of uwvm_fourier_bridge/GetSnapshotResponse.
// @details Exact identity UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotResponse_Codec_Identity :: "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a"
// @brief Original ROS type name for uwvm_fourier_bridge/GetSnapshotResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotResponse_Native_Type :: "uwvm_fourier_bridge/GetSnapshotResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetSnapshotResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetSnapshotResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetSnapshotResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetSnapshotResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
 v: Ros1Uwvm_fourier_bridgeGetSnapshotResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = Ros1Uwvm_fourier_bridgeStatus{}
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetSnapshotResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetSnapshotResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !write_Ros1Uwvm_fourier_bridgeStatus(&v.field_value,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetSnapshotResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetSnapshotResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetSnapshotResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetSnapshotResponse()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error=b
 }
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeStatus(r,allocator); if !ok { return v,false }
 v.field_value=b
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetSnapshotResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetSnapshotResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetSnapshotResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=14536}
 if !write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=14536}
 if !write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetSnapshotResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetSnapshotResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetSnapshotResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetSnapshotResponse,u32) {
 if len(bytes)<40 || len(bytes)>14536 { return Ros1Uwvm_fourier_bridgeGetSnapshotResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetSnapshotResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetStandPoseRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseRequest :: struct {
 // @brief uwvm_fourier_bridge/GetStandPoseRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetStandPoseRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetStandPoseRequest.
// @details Exact identity UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseRequest_Codec_Identity :: "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738"
// @brief Original ROS type name for uwvm_fourier_bridge/GetStandPoseRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseRequest_Native_Type :: "uwvm_fourier_bridge/GetStandPoseRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetStandPoseRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetStandPoseRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetStandPoseRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
 v: Ros1Uwvm_fourier_bridgeGetStandPoseRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetStandPoseRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetStandPoseRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetStandPoseRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetStandPoseRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetStandPoseRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetStandPoseRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetStandPoseRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetStandPoseRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetStandPoseRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetStandPoseRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetStandPoseRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetStandPoseRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetStandPoseRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetStandPoseRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetStandPoseResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..652 bytes
// and is identified by UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseResponse :: struct {
 // @brief uwvm_fourier_bridge/GetStandPoseResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetStandPoseResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetStandPoseResponse.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetStandPoseResponse in bytes.
// @details The inclusive bound is 652 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseResponse_Maximum_Wire_Bytes :: 652
// @brief Canonical codec identity of uwvm_fourier_bridge/GetStandPoseResponse.
// @details Exact identity UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseResponse_Codec_Identity :: "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d"
// @brief Original ROS type name for uwvm_fourier_bridge/GetStandPoseResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseResponse_Native_Type :: "uwvm_fourier_bridge/GetStandPoseResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetStandPoseResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetStandPoseResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetStandPoseResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetStandPoseResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
 v: Ros1Uwvm_fourier_bridgeGetStandPoseResponse
 v.field_status = 0
 v.field_error = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetStandPoseResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetStandPoseResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetStandPoseResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetStandPoseResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetStandPoseResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetStandPoseResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetStandPoseResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetStandPoseResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetStandPoseResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=652}
 if !write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetStandPoseResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetStandPoseResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetStandPoseResponse,u32) {
 if len(bytes)<12 || len(bytes)>652 { return Ros1Uwvm_fourier_bridgeGetStandPoseResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetStandPoseResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetUpperFsmNameRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: struct {
 // @brief uwvm_fourier_bridge/GetUpperFsmNameRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetUpperFsmNameRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetUpperFsmNameRequest.
// @details Exact identity UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest_Codec_Identity :: "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a"
// @brief Original ROS type name for uwvm_fourier_bridge/GetUpperFsmNameRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest_Native_Type :: "uwvm_fourier_bridge/GetUpperFsmNameRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetUpperFsmNameRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetUpperFsmNameRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
 v: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetUpperFsmNameRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetUpperFsmNameRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetUpperFsmNameRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetUpperFsmNameRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetUpperFsmNameResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
// and is identified by UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: struct {
 // @brief uwvm_fourier_bridge/GetUpperFsmNameResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetUpperFsmNameResponse.error: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetUpperFsmNameResponse.value: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetUpperFsmNameResponse in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of uwvm_fourier_bridge/GetUpperFsmNameResponse.
// @details Exact identity UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_Codec_Identity :: "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe"
// @brief Original ROS type name for uwvm_fourier_bridge/GetUpperFsmNameResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_Native_Type :: "uwvm_fourier_bridge/GetUpperFsmNameResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetUpperFsmNameResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetUpperFsmNameResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
 v: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetUpperFsmNameResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetUpperFsmNameResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetUpperFsmNameResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetUpperFsmNameResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetUpperFsmStateRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: struct {
 // @brief uwvm_fourier_bridge/GetUpperFsmStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetUpperFsmStateRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetUpperFsmStateRequest.
// @details Exact identity UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest_Codec_Identity :: "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12"
// @brief Original ROS type name for uwvm_fourier_bridge/GetUpperFsmStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest_Native_Type :: "uwvm_fourier_bridge/GetUpperFsmStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetUpperFsmStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetUpperFsmStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
 v: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetUpperFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetUpperFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetUpperFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetUpperFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetUpperFsmStateResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: struct {
 // @brief uwvm_fourier_bridge/GetUpperFsmStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetUpperFsmStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetUpperFsmStateResponse.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetUpperFsmStateResponse in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetUpperFsmStateResponse.
// @details Exact identity UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_Codec_Identity :: "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71"
// @brief Original ROS type name for uwvm_fourier_bridge/GetUpperFsmStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_Native_Type :: "uwvm_fourier_bridge/GetUpperFsmStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetUpperFsmStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetUpperFsmStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
 v: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetUpperFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetUpperFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetUpperFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetUpperFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetVelocitySourceRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest :: struct {
 // @brief uwvm_fourier_bridge/GetVelocitySourceRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetVelocitySourceRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetVelocitySourceRequest.
// @details Exact identity UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest_Codec_Identity :: "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042"
// @brief Original ROS type name for uwvm_fourier_bridge/GetVelocitySourceRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest_Native_Type :: "uwvm_fourier_bridge/GetVelocitySourceRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetVelocitySourceRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetVelocitySourceRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
 v: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetVelocitySourceRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetVelocitySourceRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetVelocitySourceRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetVelocitySourceRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetVelocitySourceResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse :: struct {
 // @brief uwvm_fourier_bridge/GetVelocitySourceResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetVelocitySourceResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetVelocitySourceResponse.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetVelocitySourceResponse in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of uwvm_fourier_bridge/GetVelocitySourceResponse.
// @details Exact identity UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_Codec_Identity :: "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60"
// @brief Original ROS type name for uwvm_fourier_bridge/GetVelocitySourceResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_Native_Type :: "uwvm_fourier_bridge/GetVelocitySourceResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetVelocitySourceResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetVelocitySourceResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
 v: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetVelocitySourceResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetVelocitySourceResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetVelocitySourceResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetVelocitySourceResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetVelocitySourceNameRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: struct {
 // @brief uwvm_fourier_bridge/GetVelocitySourceNameRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetVelocitySourceNameRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_fourier_bridge/GetVelocitySourceNameRequest.
// @details Exact identity UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest_Codec_Identity :: "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b"
// @brief Original ROS type name for uwvm_fourier_bridge/GetVelocitySourceNameRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest_Native_Type :: "uwvm_fourier_bridge/GetVelocitySourceNameRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/GetVelocitySourceNameRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetVelocitySourceNameRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: proc() -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
 v: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
 v.field_sequence = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetVelocitySourceNameRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetVelocitySourceNameRequest.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/GetVelocitySourceNameRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetVelocitySourceNameRequest value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GetVelocitySourceNameResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes
// and is identified by UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: struct {
 // @brief uwvm_fourier_bridge/GetVelocitySourceNameResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/GetVelocitySourceNameResponse.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/GetVelocitySourceNameResponse.value: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GetVelocitySourceNameResponse in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of uwvm_fourier_bridge/GetVelocitySourceNameResponse.
// @details Exact identity UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_Codec_Identity :: "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b"
// @brief Original ROS type name for uwvm_fourier_bridge/GetVelocitySourceNameResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_Native_Type :: "uwvm_fourier_bridge/GetVelocitySourceNameResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/GetVelocitySourceNameResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GetVelocitySourceNameResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: proc() -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
 v: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
 v.field_status = 0
 v.field_error = ""
 v.field_value = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GetVelocitySourceNameResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GetVelocitySourceNameResponse.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/GetVelocitySourceNameResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GetVelocitySourceNameResponse value.
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
// @see Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/GroupValues value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..648 bytes
// and is identified by UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupValues :: struct {
 // @brief uwvm_fourier_bridge/GroupValues.group: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
 field_group: string,
 // @brief uwvm_fourier_bridge/GroupValues.values: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/GroupValues in bytes.
// @details The inclusive bound is 648 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupValues_Maximum_Wire_Bytes :: 648
// @brief Canonical codec identity of uwvm_fourier_bridge/GroupValues.
// @details Exact identity UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupValues_Codec_Identity :: "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c"
// @brief Original ROS type name for uwvm_fourier_bridge/GroupValues.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupValues_Native_Type :: "uwvm_fourier_bridge/GroupValues"
// @brief Selected original native identity for uwvm_fourier_bridge/GroupValues.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeGroupValues_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/GroupValues.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeGroupValues :: proc() -> Ros1Uwvm_fourier_bridgeGroupValues {
 v: Ros1Uwvm_fourier_bridgeGroupValues
 v.field_group = ""
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/GroupValues.
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
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeGroupValues :: proc(v: ^Ros1Uwvm_fourier_bridgeGroupValues, w: ^Writer) -> bool {
 if !put_string(w,v.field_group,128) { return false }
 if len(v.field_values)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/GroupValues.
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
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeGroupValues :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGroupValues,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeGroupValues()
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
// @brief Encode one complete uwvm_fourier_bridge/GroupValues value.
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
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeGroupValues :: proc(v: ^Ros1Uwvm_fourier_bridgeGroupValues, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=648}
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=648}
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/GroupValues value.
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
// @see Ros1Uwvm_fourier_bridgeGroupValues; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeGroupValues :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeGroupValues,u32) {
 if len(bytes)<8 || len(bytes)>648 { return Ros1Uwvm_fourier_bridgeGroupValues{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeGroupValues(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeGroupValues{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetFsmStateRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateRequest :: struct {
 // @brief uwvm_fourier_bridge/SetFsmStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetFsmStateRequest.state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_state: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetFsmStateRequest in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateRequest_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_fourier_bridge/SetFsmStateRequest.
// @details Exact identity UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateRequest_Codec_Identity :: "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885"
// @brief Original ROS type name for uwvm_fourier_bridge/SetFsmStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateRequest_Native_Type :: "uwvm_fourier_bridge/SetFsmStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetFsmStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetFsmStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetFsmStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
 v: Ros1Uwvm_fourier_bridgeSetFsmStateRequest
 v.field_sequence = 0
 v.field_state = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetFsmStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_integer(w,u64(v.field_state),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetFsmStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetFsmStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetFsmStateRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/SetFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetFsmStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetFsmStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetFsmStateRequest,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros1Uwvm_fourier_bridgeSetFsmStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetFsmStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetFsmStateResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateResponse :: struct {
 // @brief uwvm_fourier_bridge/SetFsmStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetFsmStateResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetFsmStateResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetFsmStateResponse.
// @details Exact identity UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateResponse_Codec_Identity :: "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1"
// @brief Original ROS type name for uwvm_fourier_bridge/SetFsmStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateResponse_Native_Type :: "uwvm_fourier_bridge/SetFsmStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetFsmStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetFsmStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetFsmStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetFsmStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
 v: Ros1Uwvm_fourier_bridgeSetFsmStateResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetFsmStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetFsmStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetFsmStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetFsmStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetFsmStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetFsmStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetFsmStateResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetFsmStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetFsmStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetGroupCommandRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..15572
// bytes and is identified by UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandRequest :: struct {
 // @brief uwvm_fourier_bridge/SetGroupCommandRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetGroupCommandRequest.position: uwvm_fourier_bridge/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
 field_position: []Ros1Uwvm_fourier_bridgeGroupValues,
 // @brief uwvm_fourier_bridge/SetGroupCommandRequest.velocity: uwvm_fourier_bridge/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []Ros1Uwvm_fourier_bridgeGroupValues,
 // @brief uwvm_fourier_bridge/SetGroupCommandRequest.torque: uwvm_fourier_bridge/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
 field_torque: []Ros1Uwvm_fourier_bridgeGroupValues,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetGroupCommandRequest in bytes.
// @details The inclusive bound is 15572 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandRequest_Maximum_Wire_Bytes :: 15572
// @brief Canonical codec identity of uwvm_fourier_bridge/SetGroupCommandRequest.
// @details Exact identity UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandRequest_Codec_Identity :: "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220"
// @brief Original ROS type name for uwvm_fourier_bridge/SetGroupCommandRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandRequest_Native_Type :: "uwvm_fourier_bridge/SetGroupCommandRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetGroupCommandRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetGroupCommandRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
 v: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
 v.field_sequence = 0
 v.field_position = nil
 v.field_velocity = nil
 v.field_torque = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetGroupCommandRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_position)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 item:=e
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(&item,w) { return false }
 }
 if len(v.field_velocity)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 item:=e
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(&item,w) { return false }
 }
 if len(v.field_torque)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_torque)),4) { return false }
 for e in v.field_torque {
 item:=e
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetGroupCommandRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_position=make([]Ros1Uwvm_fourier_bridgeGroupValues,int(n),allocator)
 }
 for &e in v.field_position {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_velocity=make([]Ros1Uwvm_fourier_bridgeGroupValues,int(n),allocator)
 }
 for &e in v.field_velocity {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_torque=make([]Ros1Uwvm_fourier_bridgeGroupValues,int(n),allocator)
 }
 for &e in v.field_torque {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/SetGroupCommandRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=15572}
 if !write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=15572}
 if !write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetGroupCommandRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,u32) {
 if len(bytes)<20 || len(bytes)>15572 { return Ros1Uwvm_fourier_bridgeSetGroupCommandRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetGroupCommandRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetGroupCommandResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandResponse :: struct {
 // @brief uwvm_fourier_bridge/SetGroupCommandResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetGroupCommandResponse.error: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetGroupCommandResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetGroupCommandResponse.
// @details Exact identity UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandResponse_Codec_Identity :: "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b"
// @brief Original ROS type name for uwvm_fourier_bridge/SetGroupCommandResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandResponse_Native_Type :: "uwvm_fourier_bridge/SetGroupCommandResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetGroupCommandResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetGroupCommandResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetGroupCommandResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
 v: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetGroupCommandResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetGroupCommandResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetGroupCommandResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetGroupCommandResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetGroupCommandResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetGroupCommandResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetGroupCommandResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetGroupCommandResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetMotorCfgPdRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..10384
// bytes and is identified by UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: struct {
 // @brief uwvm_fourier_bridge/SetMotorCfgPdRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetMotorCfgPdRequest.kp: uwvm_fourier_bridge/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
 field_kp: []Ros1Uwvm_fourier_bridgeGroupValues,
 // @brief uwvm_fourier_bridge/SetMotorCfgPdRequest.kd: uwvm_fourier_bridge/GroupValues; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
 field_kd: []Ros1Uwvm_fourier_bridgeGroupValues,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetMotorCfgPdRequest in bytes.
// @details The inclusive bound is 10384 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_Maximum_Wire_Bytes :: 10384
// @brief Canonical codec identity of uwvm_fourier_bridge/SetMotorCfgPdRequest.
// @details Exact identity UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_Codec_Identity :: "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d"
// @brief Original ROS type name for uwvm_fourier_bridge/SetMotorCfgPdRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_Native_Type :: "uwvm_fourier_bridge/SetMotorCfgPdRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetMotorCfgPdRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetMotorCfgPdRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
 v: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
 v.field_sequence = 0
 v.field_kp = nil
 v.field_kd = nil
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetMotorCfgPdRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if len(v.field_kp)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_kp)),4) { return false }
 for e in v.field_kp {
 item:=e
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(&item,w) { return false }
 }
 if len(v.field_kd)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_kd)),4) { return false }
 for e in v.field_kd {
 item:=e
 if !write_Ros1Uwvm_fourier_bridgeGroupValues(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetMotorCfgPdRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_sequence=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_kp=make([]Ros1Uwvm_fourier_bridgeGroupValues,int(n),allocator)
 }
 for &e in v.field_kp {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_kd=make([]Ros1Uwvm_fourier_bridgeGroupValues,int(n),allocator)
 }
 for &e in v.field_kd {
 {
 b,ok:=read_Ros1Uwvm_fourier_bridgeGroupValues(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_fourier_bridge/SetMotorCfgPdRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10384}
 if !write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10384}
 if !write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetMotorCfgPdRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,u32) {
 if len(bytes)<16 || len(bytes)>10384 { return Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetMotorCfgPdResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: struct {
 // @brief uwvm_fourier_bridge/SetMotorCfgPdResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetMotorCfgPdResponse.error: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetMotorCfgPdResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetMotorCfgPdResponse.
// @details Exact identity UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_Codec_Identity :: "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc"
// @brief Original ROS type name for uwvm_fourier_bridge/SetMotorCfgPdResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_Native_Type :: "uwvm_fourier_bridge/SetMotorCfgPdResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetMotorCfgPdResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetMotorCfgPdResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
 v: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetMotorCfgPdResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetMotorCfgPdResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetMotorCfgPdResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetMotorCfgPdResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetStandPoseRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
// and is identified by UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseRequest :: struct {
 // @brief uwvm_fourier_bridge/SetStandPoseRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetStandPoseRequest.delta_z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
 field_delta_z: f64,
 // @brief uwvm_fourier_bridge/SetStandPoseRequest.delta_pitch: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
 field_delta_pitch: f64,
 // @brief uwvm_fourier_bridge/SetStandPoseRequest.delta_yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
 field_delta_yaw: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetStandPoseRequest in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseRequest_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of uwvm_fourier_bridge/SetStandPoseRequest.
// @details Exact identity UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseRequest_Codec_Identity :: "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed"
// @brief Original ROS type name for uwvm_fourier_bridge/SetStandPoseRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseRequest_Native_Type :: "uwvm_fourier_bridge/SetStandPoseRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetStandPoseRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetStandPoseRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetStandPoseRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
 v: Ros1Uwvm_fourier_bridgeSetStandPoseRequest
 v.field_sequence = 0
 v.field_delta_z = 0
 v.field_delta_pitch = 0
 v.field_delta_yaw = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetStandPoseRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetStandPoseRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_float64(w,v.field_delta_z) { return false }
 if !put_float64(w,v.field_delta_pitch) { return false }
 if !put_float64(w,v.field_delta_yaw) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetStandPoseRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetStandPoseRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetStandPoseRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetStandPoseRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/SetStandPoseRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetStandPoseRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetStandPoseRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetStandPoseRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetStandPoseRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetStandPoseRequest,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros1Uwvm_fourier_bridgeSetStandPoseRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetStandPoseRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetStandPoseResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseResponse :: struct {
 // @brief uwvm_fourier_bridge/SetStandPoseResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetStandPoseResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetStandPoseResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetStandPoseResponse.
// @details Exact identity UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseResponse_Codec_Identity :: "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e"
// @brief Original ROS type name for uwvm_fourier_bridge/SetStandPoseResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseResponse_Native_Type :: "uwvm_fourier_bridge/SetStandPoseResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetStandPoseResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetStandPoseResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetStandPoseResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetStandPoseResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
 v: Ros1Uwvm_fourier_bridgeSetStandPoseResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetStandPoseResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetStandPoseResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetStandPoseResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetStandPoseResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetStandPoseResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetStandPoseResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetStandPoseResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetStandPoseResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetStandPoseResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetStandPoseResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetStandPoseResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetStandPoseResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetStandPoseResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetStandPoseResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetStandPoseResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetUpperFsmStateRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: struct {
 // @brief uwvm_fourier_bridge/SetUpperFsmStateRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetUpperFsmStateRequest.state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
 field_state: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetUpperFsmStateRequest in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_fourier_bridge/SetUpperFsmStateRequest.
// @details Exact identity UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_Codec_Identity :: "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758"
// @brief Original ROS type name for uwvm_fourier_bridge/SetUpperFsmStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_Native_Type :: "uwvm_fourier_bridge/SetUpperFsmStateRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetUpperFsmStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetUpperFsmStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
 v: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
 v.field_sequence = 0
 v.field_state = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetUpperFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_integer(w,u64(v.field_state),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetUpperFsmStateRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/SetUpperFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetUpperFsmStateRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetUpperFsmStateResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: struct {
 // @brief uwvm_fourier_bridge/SetUpperFsmStateResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetUpperFsmStateResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetUpperFsmStateResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetUpperFsmStateResponse.
// @details Exact identity UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_Codec_Identity :: "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1"
// @brief Original ROS type name for uwvm_fourier_bridge/SetUpperFsmStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_Native_Type :: "uwvm_fourier_bridge/SetUpperFsmStateResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetUpperFsmStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetUpperFsmStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
 v: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetUpperFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetUpperFsmStateResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetUpperFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetUpperFsmStateResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetVelocityRequest value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
// and is identified by UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityRequest :: struct {
 // @brief uwvm_fourier_bridge/SetVelocityRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetVelocityRequest.vx: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_vx: f64,
 // @brief uwvm_fourier_bridge/SetVelocityRequest.vy: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_vy: f64,
 // @brief uwvm_fourier_bridge/SetVelocityRequest.yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_yaw: f64,
 // @brief uwvm_fourier_bridge/SetVelocityRequest.duration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
 field_duration: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetVelocityRequest in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityRequest_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of uwvm_fourier_bridge/SetVelocityRequest.
// @details Exact identity UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityRequest_Codec_Identity :: "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d"
// @brief Original ROS type name for uwvm_fourier_bridge/SetVelocityRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityRequest_Native_Type :: "uwvm_fourier_bridge/SetVelocityRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetVelocityRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetVelocityRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetVelocityRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetVelocityRequest {
 v: Ros1Uwvm_fourier_bridgeSetVelocityRequest
 v.field_sequence = 0
 v.field_vx = 0
 v.field_vy = 0
 v.field_yaw = 0
 v.field_duration = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetVelocityRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetVelocityRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocityRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_float64(w,v.field_vx) { return false }
 if !put_float64(w,v.field_vy) { return false }
 if !put_float64(w,v.field_yaw) { return false }
 if !put_float64(w,v.field_duration) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetVelocityRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetVelocityRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocityRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetVelocityRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/SetVelocityRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetVelocityRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocityRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocityRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocityRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetVelocityRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetVelocityRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocityRequest,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros1Uwvm_fourier_bridgeSetVelocityRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetVelocityRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetVelocityRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetVelocityResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityResponse :: struct {
 // @brief uwvm_fourier_bridge/SetVelocityResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetVelocityResponse.error: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetVelocityResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetVelocityResponse.
// @details Exact identity UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityResponse_Codec_Identity :: "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a"
// @brief Original ROS type name for uwvm_fourier_bridge/SetVelocityResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityResponse_Native_Type :: "uwvm_fourier_bridge/SetVelocityResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetVelocityResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocityResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetVelocityResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetVelocityResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetVelocityResponse {
 v: Ros1Uwvm_fourier_bridgeSetVelocityResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetVelocityResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetVelocityResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocityResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetVelocityResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetVelocityResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocityResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetVelocityResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetVelocityResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetVelocityResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocityResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocityResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocityResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetVelocityResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocityResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetVelocityResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocityResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetVelocityResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetVelocityResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetVelocityResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetVelocitySourceRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest :: struct {
 // @brief uwvm_fourier_bridge/SetVelocitySourceRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/SetVelocitySourceRequest.source: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
 field_source: i32,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetVelocitySourceRequest in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_fourier_bridge/SetVelocitySourceRequest.
// @details Exact identity UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_Codec_Identity :: "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb"
// @brief Original ROS type name for uwvm_fourier_bridge/SetVelocitySourceRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_Native_Type :: "uwvm_fourier_bridge/SetVelocitySourceRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/SetVelocitySourceRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetVelocitySourceRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest :: proc() -> Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
 v: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
 v.field_sequence = 0
 v.field_source = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetVelocitySourceRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_integer(w,u64(v.field_source),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetVelocitySourceRequest.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/SetVelocitySourceRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetVelocitySourceRequest value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/SetVelocitySourceResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse :: struct {
 // @brief uwvm_fourier_bridge/SetVelocitySourceResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/SetVelocitySourceResponse.error: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/SetVelocitySourceResponse in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of uwvm_fourier_bridge/SetVelocitySourceResponse.
// @details Exact identity UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_Codec_Identity :: "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be"
// @brief Original ROS type name for uwvm_fourier_bridge/SetVelocitySourceResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_Native_Type :: "uwvm_fourier_bridge/SetVelocitySourceResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/SetVelocitySourceResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/SetVelocitySourceResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse :: proc() -> Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
 v: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
 v.field_status = 0
 v.field_error = ""
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/SetVelocitySourceResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/SetVelocitySourceResponse.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/SetVelocitySourceResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/SetVelocitySourceResponse value.
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
// @see Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/VelocityCommand value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
// and is identified by UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeVelocityCommand :: struct {
 // @brief uwvm_fourier_bridge/VelocityCommand.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/VelocityCommand.vx: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_vx: f64,
 // @brief uwvm_fourier_bridge/VelocityCommand.vy: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_vy: f64,
 // @brief uwvm_fourier_bridge/VelocityCommand.yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_yaw: f64,
 // @brief uwvm_fourier_bridge/VelocityCommand.duration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
 field_duration: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/VelocityCommand in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeVelocityCommand_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of uwvm_fourier_bridge/VelocityCommand.
// @details Exact identity UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeVelocityCommand_Codec_Identity :: "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54"
// @brief Original ROS type name for uwvm_fourier_bridge/VelocityCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeVelocityCommand_Native_Type :: "uwvm_fourier_bridge/VelocityCommand"
// @brief Selected original native identity for uwvm_fourier_bridge/VelocityCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeVelocityCommand_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/VelocityCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc() -> Ros1Uwvm_fourier_bridgeVelocityCommand {
 v: Ros1Uwvm_fourier_bridgeVelocityCommand
 v.field_sequence = 0
 v.field_vx = 0
 v.field_vy = 0
 v.field_yaw = 0
 v.field_duration = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/VelocityCommand.
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
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc(v: ^Ros1Uwvm_fourier_bridgeVelocityCommand, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_sequence),8) { return false }
 if !put_float64(w,v.field_vx) { return false }
 if !put_float64(w,v.field_vy) { return false }
 if !put_float64(w,v.field_yaw) { return false }
 if !put_float64(w,v.field_duration) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/VelocityCommand.
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
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeVelocityCommand,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeVelocityCommand()
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
// @brief Encode one complete uwvm_fourier_bridge/VelocityCommand value.
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
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc(v: ^Ros1Uwvm_fourier_bridgeVelocityCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros1Uwvm_fourier_bridgeVelocityCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros1Uwvm_fourier_bridgeVelocityCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/VelocityCommand value.
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
// @see Ros1Uwvm_fourier_bridgeVelocityCommand; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeVelocityCommand,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros1Uwvm_fourier_bridgeVelocityCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeVelocityCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeVelocityCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..1084 bytes
// and is identified by UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: struct {
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.sequence: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u64,
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.groups: string; 0..8 elements; each string is 0..128
 // bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
 field_groups: []string,
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.timeout_seconds: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
 field_timeout_seconds: f64,
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.poll_seconds: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
 field_poll_seconds: f64,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest in bytes.
// @details The inclusive bound is 1084 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_Maximum_Wire_Bytes :: 1084
// @brief Canonical codec identity of uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
// @details Exact identity UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_Codec_Identity :: "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33"
// @brief Original ROS type name for uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_Native_Type :: "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest"
// @brief Selected original native identity for uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: proc() -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
 v: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
 v.field_sequence = 0
 v.field_groups = nil
 v.field_timeout_seconds = 0
 v.field_poll_seconds = 0
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, w: ^Writer) -> bool {
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
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
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
// @brief Encode one complete uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest value.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: proc(v: ^Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1084}
 if !write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1084}
 if !write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest value.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,u32) {
 if len(bytes)<28 || len(bytes)>1084 { return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..137 bytes
// and is identified by UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: struct {
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.error: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
 // @brief uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.complete: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
 field_complete: bool,
}
// @brief Maximum canonical extent of uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse in bytes.
// @details The inclusive bound is 137 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_Maximum_Wire_Bytes :: 137
// @brief Canonical codec identity of uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
// @details Exact identity UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_Codec_Identity :: "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8"
// @brief Original ROS type name for uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_Native_Type :: "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse"
// @brief Selected original native identity for uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: proc() -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
 v: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
 v.field_status = 0
 v.field_error = ""
 v.field_complete = false
 return v
}
// @brief Append every canonical field of uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_string(w,v.field_error,128) { return false }
 if !put_bool(w,v.field_complete) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse,bool) {
 v:=init_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
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
// @brief Encode one complete uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse value.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: proc(v: ^Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=137}
 if !write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=137}
 if !write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse value.
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
// @see Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse,u32) {
 if len(bytes)<9 || len(bytes)>137 { return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse{},reader.code }
 return value,0
}
