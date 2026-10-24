// @file records.odin
// @brief Full leju odin codecs and original record metadata.
// @details Complete leju ros1_master_unregistered_dtos values in odin. 2 original records retain 5 fields and 2
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 kuavo_sdk/qv value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
// and is identified by UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkQv :: struct {
 // @brief kuavo_sdk/qv.value: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
 field_value: []f64,
}
// @brief Maximum canonical extent of kuavo_sdk/qv in bytes.
// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkQv_Maximum_Wire_Bytes :: 132
// @brief Canonical codec identity of kuavo_sdk/qv.
// @details Exact identity UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkQv_Codec_Identity :: "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32"
// @brief Original ROS type name for kuavo_sdk/qv.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkQv_Native_Type :: "kuavo_sdk/qv"
// @brief Selected original native identity for kuavo_sdk/qv.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkQv_Native_Identity :: ""
// @brief Construct the declared defaults of kuavo_sdk/qv.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Kuavo_sdkQv :: proc() -> Ros1Kuavo_sdkQv {
 v: Ros1Kuavo_sdkQv
 v.field_value = nil
 return v
}
// @brief Append every canonical field of kuavo_sdk/qv.
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
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Kuavo_sdkQv :: proc(v: ^Ros1Kuavo_sdkQv, w: ^Writer) -> bool {
 if len(v.field_value)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_value)),4) { return false }
 for e in v.field_value {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of kuavo_sdk/qv.
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
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Kuavo_sdkQv :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Kuavo_sdkQv,bool) {
 v:=init_Ros1Kuavo_sdkQv()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_value=make([]f64,int(n),allocator)
 }
 for &e in v.field_value {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete kuavo_sdk/qv value.
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
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Kuavo_sdkQv :: proc(v: ^Ros1Kuavo_sdkQv, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=132}
 if !write_Ros1Kuavo_sdkQv(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=132}
 if !write_Ros1Kuavo_sdkQv(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuavo_sdk/qv value.
// @details Require the complete 4..132-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Kuavo_sdkQv; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Kuavo_sdkQv :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Kuavo_sdkQv,u32) {
 if len(bytes)<4 || len(bytes)>132 { return Ros1Kuavo_sdkQv{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Kuavo_sdkQv(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Kuavo_sdkQv{},reader.code }
 return value,0
}
// @brief Complete ROS 1 kuavo_sdk/fullBodyTargetTrajectories value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..2320 bytes
// and is identified by UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkFullBodyTargetTrajectories :: struct {
 // @brief kuavo_sdk/fullBodyTargetTrajectories.timeTrajectory: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
 field_timeTrajectory: []f64,
 // @brief kuavo_sdk/fullBodyTargetTrajectories.footIndexTrajectory: int32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
 field_footIndexTrajectory: []i32,
 // @brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyQTrajectory: kuavo_sdk/qv; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
 field_fullBodyQTrajectory: []Ros1Kuavo_sdkQv,
 // @brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyVTrajectory: kuavo_sdk/qv; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
 field_fullBodyVTrajectory: []Ros1Kuavo_sdkQv,
}
// @brief Maximum canonical extent of kuavo_sdk/fullBodyTargetTrajectories in bytes.
// @details The inclusive bound is 2320 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkFullBodyTargetTrajectories_Maximum_Wire_Bytes :: 2320
// @brief Canonical codec identity of kuavo_sdk/fullBodyTargetTrajectories.
// @details Exact identity UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkFullBodyTargetTrajectories_Codec_Identity :: "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32"
// @brief Original ROS type name for kuavo_sdk/fullBodyTargetTrajectories.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkFullBodyTargetTrajectories_Native_Type :: "kuavo_sdk/fullBodyTargetTrajectories"
// @brief Selected original native identity for kuavo_sdk/fullBodyTargetTrajectories.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
Ros1Kuavo_sdkFullBodyTargetTrajectories_Native_Identity :: ""
// @brief Construct the declared defaults of kuavo_sdk/fullBodyTargetTrajectories.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Kuavo_sdkFullBodyTargetTrajectories :: proc() -> Ros1Kuavo_sdkFullBodyTargetTrajectories {
 v: Ros1Kuavo_sdkFullBodyTargetTrajectories
 v.field_timeTrajectory = nil
 v.field_footIndexTrajectory = nil
 v.field_fullBodyQTrajectory = nil
 v.field_fullBodyVTrajectory = nil
 return v
}
// @brief Append every canonical field of kuavo_sdk/fullBodyTargetTrajectories.
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
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Kuavo_sdkFullBodyTargetTrajectories :: proc(v: ^Ros1Kuavo_sdkFullBodyTargetTrajectories, w: ^Writer) -> bool {
 if len(v.field_timeTrajectory)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_timeTrajectory)),4) { return false }
 for e in v.field_timeTrajectory {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_footIndexTrajectory)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_footIndexTrajectory)),4) { return false }
 for e in v.field_footIndexTrajectory {
 if !put_integer(w,u64(e),4) { return false }
 }
 if len(v.field_fullBodyQTrajectory)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_fullBodyQTrajectory)),4) { return false }
 for e in v.field_fullBodyQTrajectory {
 item:=e
 if !write_Ros1Kuavo_sdkQv(&item,w) { return false }
 }
 if len(v.field_fullBodyVTrajectory)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_fullBodyVTrajectory)),4) { return false }
 for e in v.field_fullBodyVTrajectory {
 item:=e
 if !write_Ros1Kuavo_sdkQv(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of kuavo_sdk/fullBodyTargetTrajectories.
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
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Kuavo_sdkFullBodyTargetTrajectories :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Kuavo_sdkFullBodyTargetTrajectories,bool) {
 v:=init_Ros1Kuavo_sdkFullBodyTargetTrajectories()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_timeTrajectory=make([]f64,int(n),allocator)
 }
 for &e in v.field_timeTrajectory {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_footIndexTrajectory=make([]i32,int(n),allocator)
 }
 for &e in v.field_footIndexTrajectory {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=i32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_fullBodyQTrajectory=make([]Ros1Kuavo_sdkQv,int(n),allocator)
 }
 for &e in v.field_fullBodyQTrajectory {
 {
 b,ok:=read_Ros1Kuavo_sdkQv(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_fullBodyVTrajectory=make([]Ros1Kuavo_sdkQv,int(n),allocator)
 }
 for &e in v.field_fullBodyVTrajectory {
 {
 b,ok:=read_Ros1Kuavo_sdkQv(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete kuavo_sdk/fullBodyTargetTrajectories value.
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
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Kuavo_sdkFullBodyTargetTrajectories :: proc(v: ^Ros1Kuavo_sdkFullBodyTargetTrajectories, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2320}
 if !write_Ros1Kuavo_sdkFullBodyTargetTrajectories(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2320}
 if !write_Ros1Kuavo_sdkFullBodyTargetTrajectories(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuavo_sdk/fullBodyTargetTrajectories value.
// @details Require the complete 16..2320-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Kuavo_sdkFullBodyTargetTrajectories :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Kuavo_sdkFullBodyTargetTrajectories,u32) {
 if len(bytes)<16 || len(bytes)>2320 { return Ros1Kuavo_sdkFullBodyTargetTrajectories{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Kuavo_sdkFullBodyTargetTrajectories(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Kuavo_sdkFullBodyTargetTrajectories{},reader.code }
 return value,0
}
