// @file records.odin
// @brief Full leju odin codecs and original record metadata.
// @details Complete leju ros1_main_packaged_ik values in odin. 17 original records retain 55 fields and 15
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 motion_capture_ik/armHandPose value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 136..136 bytes
// and is identified by UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPose :: struct {
 // @brief motion_capture_ik/armHandPose.pos_xyz: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_pos_xyz: [3]f64,
 // @brief motion_capture_ik/armHandPose.quat_xyzw: float64; exactly 4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_quat_xyzw: [4]f64,
 // @brief motion_capture_ik/armHandPose.elbow_pos_xyz: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_elbow_pos_xyz: [3]f64,
 // @brief motion_capture_ik/armHandPose.joint_angles: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_joint_angles: [7]f64,
}
// @brief Maximum canonical extent of motion_capture_ik/armHandPose in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPose_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of motion_capture_ik/armHandPose.
// @details Exact identity UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPose_Codec_Identity :: "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08"
// @brief Original ROS type name for motion_capture_ik/armHandPose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPose_Native_Type :: "motion_capture_ik/armHandPose"
// @brief Selected original native identity for motion_capture_ik/armHandPose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPose_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/armHandPose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikArmHandPose :: proc() -> Ros1Motion_capture_ikArmHandPose {
 v: Ros1Motion_capture_ikArmHandPose
 v.field_pos_xyz = [3]f64{0,0,0}
 v.field_quat_xyzw = [4]f64{0,0,0,0}
 v.field_elbow_pos_xyz = [3]f64{0,0,0}
 v.field_joint_angles = [7]f64{0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of motion_capture_ik/armHandPose.
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
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikArmHandPose :: proc(v: ^Ros1Motion_capture_ikArmHandPose, w: ^Writer) -> bool {
 for e in v.field_pos_xyz {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_quat_xyzw {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_elbow_pos_xyz {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_joint_angles {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/armHandPose.
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
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikArmHandPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikArmHandPose,bool) {
 v:=init_Ros1Motion_capture_ikArmHandPose()
 for &e in v.field_pos_xyz {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_quat_xyzw {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_elbow_pos_xyz {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_joint_angles {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/armHandPose value.
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
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikArmHandPose :: proc(v: ^Ros1Motion_capture_ikArmHandPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros1Motion_capture_ikArmHandPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros1Motion_capture_ikArmHandPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/armHandPose value.
// @details Require the complete 136..136-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikArmHandPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikArmHandPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikArmHandPose,u32) {
 if len(bytes)<136 || len(bytes)>136 { return Ros1Motion_capture_ikArmHandPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikArmHandPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikArmHandPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/armHandPoseFree value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 84..212 bytes
// and is identified by UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPoseFree :: struct {
 // @brief motion_capture_ik/armHandPoseFree.pos_xyz: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_pos_xyz: [3]f64,
 // @brief motion_capture_ik/armHandPoseFree.quat_xyzw: float64; exactly 4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_quat_xyzw: [4]f64,
 // @brief motion_capture_ik/armHandPoseFree.elbow_pos_xyz: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_elbow_pos_xyz: [3]f64,
 // @brief motion_capture_ik/armHandPoseFree.joint_angles: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_joint_angles: []f64,
}
// @brief Maximum canonical extent of motion_capture_ik/armHandPoseFree in bytes.
// @details The inclusive bound is 212 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPoseFree_Maximum_Wire_Bytes :: 212
// @brief Canonical codec identity of motion_capture_ik/armHandPoseFree.
// @details Exact identity UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPoseFree_Codec_Identity :: "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf"
// @brief Original ROS type name for motion_capture_ik/armHandPoseFree.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPoseFree_Native_Type :: "motion_capture_ik/armHandPoseFree"
// @brief Selected original native identity for motion_capture_ik/armHandPoseFree.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikArmHandPoseFree_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/armHandPoseFree.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikArmHandPoseFree :: proc() -> Ros1Motion_capture_ikArmHandPoseFree {
 v: Ros1Motion_capture_ikArmHandPoseFree
 v.field_pos_xyz = [3]f64{0,0,0}
 v.field_quat_xyzw = [4]f64{0,0,0,0}
 v.field_elbow_pos_xyz = [3]f64{0,0,0}
 v.field_joint_angles = nil
 return v
}
// @brief Append every canonical field of motion_capture_ik/armHandPoseFree.
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
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikArmHandPoseFree :: proc(v: ^Ros1Motion_capture_ikArmHandPoseFree, w: ^Writer) -> bool {
 for e in v.field_pos_xyz {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_quat_xyzw {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_elbow_pos_xyz {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_joint_angles)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_angles)),4) { return false }
 for e in v.field_joint_angles {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/armHandPoseFree.
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
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikArmHandPoseFree :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikArmHandPoseFree,bool) {
 v:=init_Ros1Motion_capture_ikArmHandPoseFree()
 for &e in v.field_pos_xyz {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_quat_xyzw {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_elbow_pos_xyz {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_joint_angles=make([]f64,int(n),allocator)
 }
 for &e in v.field_joint_angles {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/armHandPoseFree value.
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
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikArmHandPoseFree :: proc(v: ^Ros1Motion_capture_ikArmHandPoseFree, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=212}
 if !write_Ros1Motion_capture_ikArmHandPoseFree(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=212}
 if !write_Ros1Motion_capture_ikArmHandPoseFree(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/armHandPoseFree value.
// @details Require the complete 84..212-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikArmHandPoseFree :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikArmHandPoseFree,u32) {
 if len(bytes)<84 || len(bytes)>212 { return Ros1Motion_capture_ikArmHandPoseFree{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikArmHandPoseFree(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikArmHandPoseFree{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/changeArmCtrlModeRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeRequest :: struct {
 // @brief motion_capture_ik/changeArmCtrlModeRequest.control_mode: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_control_mode: bool,
}
// @brief Maximum canonical extent of motion_capture_ik/changeArmCtrlModeRequest in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeRequest_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of motion_capture_ik/changeArmCtrlModeRequest.
// @details Exact identity UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeRequest_Codec_Identity :: "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd"
// @brief Original ROS type name for motion_capture_ik/changeArmCtrlModeRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeRequest_Native_Type :: "motion_capture_ik/changeArmCtrlModeRequest"
// @brief Selected original native identity for motion_capture_ik/changeArmCtrlModeRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeRequest_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/changeArmCtrlModeRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikChangeArmCtrlModeRequest :: proc() -> Ros1Motion_capture_ikChangeArmCtrlModeRequest {
 v: Ros1Motion_capture_ikChangeArmCtrlModeRequest
 v.field_control_mode = false
 return v
}
// @brief Append every canonical field of motion_capture_ik/changeArmCtrlModeRequest.
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikChangeArmCtrlModeRequest :: proc(v: ^Ros1Motion_capture_ikChangeArmCtrlModeRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_control_mode) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/changeArmCtrlModeRequest.
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikChangeArmCtrlModeRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikChangeArmCtrlModeRequest,bool) {
 v:=init_Ros1Motion_capture_ikChangeArmCtrlModeRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_control_mode=bool(b)
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/changeArmCtrlModeRequest value.
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikChangeArmCtrlModeRequest :: proc(v: ^Ros1Motion_capture_ikChangeArmCtrlModeRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Motion_capture_ikChangeArmCtrlModeRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Motion_capture_ikChangeArmCtrlModeRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/changeArmCtrlModeRequest value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikChangeArmCtrlModeRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikChangeArmCtrlModeRequest,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Motion_capture_ikChangeArmCtrlModeRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikChangeArmCtrlModeRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikChangeArmCtrlModeRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/changeArmCtrlModeResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeResponse :: struct {
 // @brief motion_capture_ik/changeArmCtrlModeResponse.result: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_result: bool,
}
// @brief Maximum canonical extent of motion_capture_ik/changeArmCtrlModeResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of motion_capture_ik/changeArmCtrlModeResponse.
// @details Exact identity UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeResponse_Codec_Identity :: "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac"
// @brief Original ROS type name for motion_capture_ik/changeArmCtrlModeResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeResponse_Native_Type :: "motion_capture_ik/changeArmCtrlModeResponse"
// @brief Selected original native identity for motion_capture_ik/changeArmCtrlModeResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikChangeArmCtrlModeResponse_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/changeArmCtrlModeResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikChangeArmCtrlModeResponse :: proc() -> Ros1Motion_capture_ikChangeArmCtrlModeResponse {
 v: Ros1Motion_capture_ikChangeArmCtrlModeResponse
 v.field_result = false
 return v
}
// @brief Append every canonical field of motion_capture_ik/changeArmCtrlModeResponse.
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikChangeArmCtrlModeResponse :: proc(v: ^Ros1Motion_capture_ikChangeArmCtrlModeResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_result) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/changeArmCtrlModeResponse.
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikChangeArmCtrlModeResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikChangeArmCtrlModeResponse,bool) {
 v:=init_Ros1Motion_capture_ikChangeArmCtrlModeResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_result=bool(b)
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/changeArmCtrlModeResponse value.
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikChangeArmCtrlModeResponse :: proc(v: ^Ros1Motion_capture_ikChangeArmCtrlModeResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Motion_capture_ikChangeArmCtrlModeResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Motion_capture_ikChangeArmCtrlModeResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/changeArmCtrlModeResponse value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Motion_capture_ikChangeArmCtrlModeResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikChangeArmCtrlModeResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikChangeArmCtrlModeResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Motion_capture_ikChangeArmCtrlModeResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikChangeArmCtrlModeResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikChangeArmCtrlModeResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/handPose value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
// and is identified by UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikHandPose :: struct {
 // @brief motion_capture_ik/handPose.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief motion_capture_ik/handPose.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief motion_capture_ik/handPose.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
 // @brief motion_capture_ik/handPose.roll: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_roll: f64,
 // @brief motion_capture_ik/handPose.pitch: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_pitch: f64,
 // @brief motion_capture_ik/handPose.yaw: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_yaw: f64,
}
// @brief Maximum canonical extent of motion_capture_ik/handPose in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikHandPose_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of motion_capture_ik/handPose.
// @details Exact identity UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikHandPose_Codec_Identity :: "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f"
// @brief Original ROS type name for motion_capture_ik/handPose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikHandPose_Native_Type :: "motion_capture_ik/handPose"
// @brief Selected original native identity for motion_capture_ik/handPose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikHandPose_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/handPose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikHandPose :: proc() -> Ros1Motion_capture_ikHandPose {
 v: Ros1Motion_capture_ikHandPose
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_roll = 0
 v.field_pitch = 0
 v.field_yaw = 0
 return v
}
// @brief Append every canonical field of motion_capture_ik/handPose.
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
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikHandPose :: proc(v: ^Ros1Motion_capture_ikHandPose, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 if !put_float64(w,v.field_roll) { return false }
 if !put_float64(w,v.field_pitch) { return false }
 if !put_float64(w,v.field_yaw) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/handPose.
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
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikHandPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikHandPose,bool) {
 v:=init_Ros1Motion_capture_ikHandPose()
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
 v.field_roll=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_pitch=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_yaw=f64(b)
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/handPose value.
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
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikHandPose :: proc(v: ^Ros1Motion_capture_ikHandPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Motion_capture_ikHandPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Motion_capture_ikHandPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/handPose value.
// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikHandPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikHandPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikHandPose,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Motion_capture_ikHandPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikHandPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikHandPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/ikSolveError value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 100..356 bytes
// and is identified by UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveError :: struct {
 // @brief motion_capture_ik/ikSolveError.ik_type: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
 field_ik_type: string,
 // @brief motion_capture_ik/ikSolveError.left_pose_error: motion_capture_ik/handPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
 field_left_pose_error: Ros1Motion_capture_ikHandPose,
 // @brief motion_capture_ik/ikSolveError.right_pose_error: motion_capture_ik/handPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
 field_right_pose_error: Ros1Motion_capture_ikHandPose,
}
// @brief Maximum canonical extent of motion_capture_ik/ikSolveError in bytes.
// @details The inclusive bound is 356 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveError_Maximum_Wire_Bytes :: 356
// @brief Canonical codec identity of motion_capture_ik/ikSolveError.
// @details Exact identity UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveError_Codec_Identity :: "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94"
// @brief Original ROS type name for motion_capture_ik/ikSolveError.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveError_Native_Type :: "motion_capture_ik/ikSolveError"
// @brief Selected original native identity for motion_capture_ik/ikSolveError.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveError_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/ikSolveError.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikIkSolveError :: proc() -> Ros1Motion_capture_ikIkSolveError {
 v: Ros1Motion_capture_ikIkSolveError
 v.field_ik_type = ""
 v.field_left_pose_error = Ros1Motion_capture_ikHandPose{}
 v.field_right_pose_error = Ros1Motion_capture_ikHandPose{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/ikSolveError.
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
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikIkSolveError :: proc(v: ^Ros1Motion_capture_ikIkSolveError, w: ^Writer) -> bool {
 if !put_string(w,v.field_ik_type,256) { return false }
 if !write_Ros1Motion_capture_ikHandPose(&v.field_left_pose_error,w) { return false }
 if !write_Ros1Motion_capture_ikHandPose(&v.field_right_pose_error,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/ikSolveError.
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
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikIkSolveError :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikIkSolveError,bool) {
 v:=init_Ros1Motion_capture_ikIkSolveError()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_ik_type=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikHandPose(r,allocator); if !ok { return v,false }
 v.field_left_pose_error=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikHandPose(r,allocator); if !ok { return v,false }
 v.field_right_pose_error=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/ikSolveError value.
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
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikIkSolveError :: proc(v: ^Ros1Motion_capture_ikIkSolveError, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=356}
 if !write_Ros1Motion_capture_ikIkSolveError(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=356}
 if !write_Ros1Motion_capture_ikIkSolveError(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/ikSolveError value.
// @details Require the complete 100..356-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikIkSolveError; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikIkSolveError :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikIkSolveError,u32) {
 if len(bytes)<100 || len(bytes)>356 { return Ros1Motion_capture_ikIkSolveError{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikIkSolveError(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikIkSolveError{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/ikSolveParam value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
// and is identified by UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveParam :: struct {
 // @brief motion_capture_ik/ikSolveParam.major_optimality_tol: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_major_optimality_tol: f64,
 // @brief motion_capture_ik/ikSolveParam.major_feasibility_tol: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_major_feasibility_tol: f64,
 // @brief motion_capture_ik/ikSolveParam.minor_feasibility_tol: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_minor_feasibility_tol: f64,
 // @brief motion_capture_ik/ikSolveParam.major_iterations_limit: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_major_iterations_limit: f64,
 // @brief motion_capture_ik/ikSolveParam.oritation_constraint_tol: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_oritation_constraint_tol: f64,
 // @brief motion_capture_ik/ikSolveParam.pos_constraint_tol: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_pos_constraint_tol: f64,
 // @brief motion_capture_ik/ikSolveParam.pos_cost_weight: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
 field_pos_cost_weight: f64,
}
// @brief Maximum canonical extent of motion_capture_ik/ikSolveParam in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveParam_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of motion_capture_ik/ikSolveParam.
// @details Exact identity UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveParam_Codec_Identity :: "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981"
// @brief Original ROS type name for motion_capture_ik/ikSolveParam.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveParam_Native_Type :: "motion_capture_ik/ikSolveParam"
// @brief Selected original native identity for motion_capture_ik/ikSolveParam.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikIkSolveParam_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/ikSolveParam.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikIkSolveParam :: proc() -> Ros1Motion_capture_ikIkSolveParam {
 v: Ros1Motion_capture_ikIkSolveParam
 v.field_major_optimality_tol = 0
 v.field_major_feasibility_tol = 0
 v.field_minor_feasibility_tol = 0
 v.field_major_iterations_limit = 0
 v.field_oritation_constraint_tol = 0
 v.field_pos_constraint_tol = 0
 v.field_pos_cost_weight = 0
 return v
}
// @brief Append every canonical field of motion_capture_ik/ikSolveParam.
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
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikIkSolveParam :: proc(v: ^Ros1Motion_capture_ikIkSolveParam, w: ^Writer) -> bool {
 if !put_float64(w,v.field_major_optimality_tol) { return false }
 if !put_float64(w,v.field_major_feasibility_tol) { return false }
 if !put_float64(w,v.field_minor_feasibility_tol) { return false }
 if !put_float64(w,v.field_major_iterations_limit) { return false }
 if !put_float64(w,v.field_oritation_constraint_tol) { return false }
 if !put_float64(w,v.field_pos_constraint_tol) { return false }
 if !put_float64(w,v.field_pos_cost_weight) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/ikSolveParam.
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
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikIkSolveParam :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikIkSolveParam,bool) {
 v:=init_Ros1Motion_capture_ikIkSolveParam()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_major_optimality_tol=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_major_feasibility_tol=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_minor_feasibility_tol=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_major_iterations_limit=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_oritation_constraint_tol=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_pos_constraint_tol=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_pos_cost_weight=f64(b)
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/ikSolveParam value.
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
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikIkSolveParam :: proc(v: ^Ros1Motion_capture_ikIkSolveParam, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Motion_capture_ikIkSolveParam(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Motion_capture_ikIkSolveParam(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/ikSolveParam value.
// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikIkSolveParam; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikIkSolveParam :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikIkSolveParam,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Motion_capture_ikIkSolveParam{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikIkSolveParam(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikIkSolveParam{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/recordArmHandPose value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 272..272 bytes
// and is identified by UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPose :: struct {
 // @brief motion_capture_ik/recordArmHandPose.left_pose: motion_capture_ik/armHandPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_left_pose: Ros1Motion_capture_ikArmHandPose,
 // @brief motion_capture_ik/recordArmHandPose.right_pose: motion_capture_ik/armHandPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_right_pose: Ros1Motion_capture_ikArmHandPose,
}
// @brief Maximum canonical extent of motion_capture_ik/recordArmHandPose in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPose_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of motion_capture_ik/recordArmHandPose.
// @details Exact identity UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPose_Codec_Identity :: "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a"
// @brief Original ROS type name for motion_capture_ik/recordArmHandPose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPose_Native_Type :: "motion_capture_ik/recordArmHandPose"
// @brief Selected original native identity for motion_capture_ik/recordArmHandPose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPose_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/recordArmHandPose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikRecordArmHandPose :: proc() -> Ros1Motion_capture_ikRecordArmHandPose {
 v: Ros1Motion_capture_ikRecordArmHandPose
 v.field_left_pose = Ros1Motion_capture_ikArmHandPose{}
 v.field_right_pose = Ros1Motion_capture_ikArmHandPose{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/recordArmHandPose.
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
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikRecordArmHandPose :: proc(v: ^Ros1Motion_capture_ikRecordArmHandPose, w: ^Writer) -> bool {
 if !write_Ros1Motion_capture_ikArmHandPose(&v.field_left_pose,w) { return false }
 if !write_Ros1Motion_capture_ikArmHandPose(&v.field_right_pose,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/recordArmHandPose.
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
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikRecordArmHandPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRecordArmHandPose,bool) {
 v:=init_Ros1Motion_capture_ikRecordArmHandPose()
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPose(r,allocator); if !ok { return v,false }
 v.field_left_pose=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPose(r,allocator); if !ok { return v,false }
 v.field_right_pose=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/recordArmHandPose value.
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
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikRecordArmHandPose :: proc(v: ^Ros1Motion_capture_ikRecordArmHandPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros1Motion_capture_ikRecordArmHandPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros1Motion_capture_ikRecordArmHandPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/recordArmHandPose value.
// @details Require the complete 272..272-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikRecordArmHandPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikRecordArmHandPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRecordArmHandPose,u32) {
 if len(bytes)<272 || len(bytes)>272 { return Ros1Motion_capture_ikRecordArmHandPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikRecordArmHandPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikRecordArmHandPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/recordArmHandPoseFree value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 168..424 bytes
// and is identified by UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPoseFree :: struct {
 // @brief motion_capture_ik/recordArmHandPoseFree.left_pose: motion_capture_ik/armHandPoseFree.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_left_pose: Ros1Motion_capture_ikArmHandPoseFree,
 // @brief motion_capture_ik/recordArmHandPoseFree.right_pose: motion_capture_ik/armHandPoseFree.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_right_pose: Ros1Motion_capture_ikArmHandPoseFree,
}
// @brief Maximum canonical extent of motion_capture_ik/recordArmHandPoseFree in bytes.
// @details The inclusive bound is 424 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPoseFree_Maximum_Wire_Bytes :: 424
// @brief Canonical codec identity of motion_capture_ik/recordArmHandPoseFree.
// @details Exact identity UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPoseFree_Codec_Identity :: "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811"
// @brief Original ROS type name for motion_capture_ik/recordArmHandPoseFree.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPoseFree_Native_Type :: "motion_capture_ik/recordArmHandPoseFree"
// @brief Selected original native identity for motion_capture_ik/recordArmHandPoseFree.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRecordArmHandPoseFree_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/recordArmHandPoseFree.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikRecordArmHandPoseFree :: proc() -> Ros1Motion_capture_ikRecordArmHandPoseFree {
 v: Ros1Motion_capture_ikRecordArmHandPoseFree
 v.field_left_pose = Ros1Motion_capture_ikArmHandPoseFree{}
 v.field_right_pose = Ros1Motion_capture_ikArmHandPoseFree{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/recordArmHandPoseFree.
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
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikRecordArmHandPoseFree :: proc(v: ^Ros1Motion_capture_ikRecordArmHandPoseFree, w: ^Writer) -> bool {
 if !write_Ros1Motion_capture_ikArmHandPoseFree(&v.field_left_pose,w) { return false }
 if !write_Ros1Motion_capture_ikArmHandPoseFree(&v.field_right_pose,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/recordArmHandPoseFree.
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
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikRecordArmHandPoseFree :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRecordArmHandPoseFree,bool) {
 v:=init_Ros1Motion_capture_ikRecordArmHandPoseFree()
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPoseFree(r,allocator); if !ok { return v,false }
 v.field_left_pose=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPoseFree(r,allocator); if !ok { return v,false }
 v.field_right_pose=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/recordArmHandPoseFree value.
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
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikRecordArmHandPoseFree :: proc(v: ^Ros1Motion_capture_ikRecordArmHandPoseFree, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=424}
 if !write_Ros1Motion_capture_ikRecordArmHandPoseFree(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=424}
 if !write_Ros1Motion_capture_ikRecordArmHandPoseFree(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/recordArmHandPoseFree value.
// @details Require the complete 168..424-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikRecordArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikRecordArmHandPoseFree :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRecordArmHandPoseFree,u32) {
 if len(bytes)<168 || len(bytes)>424 { return Ros1Motion_capture_ikRecordArmHandPoseFree{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikRecordArmHandPoseFree(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikRecordArmHandPoseFree{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/robotArmQVVD value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..396 bytes
// and is identified by UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotArmQVVD :: struct {
 // @brief motion_capture_ik/robotArmQVVD.q: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
 field_q: []f64,
 // @brief motion_capture_ik/robotArmQVVD.v: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
 field_v: []f64,
 // @brief motion_capture_ik/robotArmQVVD.vd: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
 field_vd: []f64,
}
// @brief Maximum canonical extent of motion_capture_ik/robotArmQVVD in bytes.
// @details The inclusive bound is 396 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotArmQVVD_Maximum_Wire_Bytes :: 396
// @brief Canonical codec identity of motion_capture_ik/robotArmQVVD.
// @details Exact identity UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotArmQVVD_Codec_Identity :: "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb"
// @brief Original ROS type name for motion_capture_ik/robotArmQVVD.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotArmQVVD_Native_Type :: "motion_capture_ik/robotArmQVVD"
// @brief Selected original native identity for motion_capture_ik/robotArmQVVD.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotArmQVVD_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/robotArmQVVD.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikRobotArmQVVD :: proc() -> Ros1Motion_capture_ikRobotArmQVVD {
 v: Ros1Motion_capture_ikRobotArmQVVD
 v.field_q = nil
 v.field_v = nil
 v.field_vd = nil
 return v
}
// @brief Append every canonical field of motion_capture_ik/robotArmQVVD.
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
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikRobotArmQVVD :: proc(v: ^Ros1Motion_capture_ikRobotArmQVVD, w: ^Writer) -> bool {
 if len(v.field_q)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_q)),4) { return false }
 for e in v.field_q {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_v)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_v)),4) { return false }
 for e in v.field_v {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_vd)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_vd)),4) { return false }
 for e in v.field_vd {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/robotArmQVVD.
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
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikRobotArmQVVD :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRobotArmQVVD,bool) {
 v:=init_Ros1Motion_capture_ikRobotArmQVVD()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_q=make([]f64,int(n),allocator)
 }
 for &e in v.field_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_v=make([]f64,int(n),allocator)
 }
 for &e in v.field_v {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_vd=make([]f64,int(n),allocator)
 }
 for &e in v.field_vd {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/robotArmQVVD value.
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
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikRobotArmQVVD :: proc(v: ^Ros1Motion_capture_ikRobotArmQVVD, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=396}
 if !write_Ros1Motion_capture_ikRobotArmQVVD(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=396}
 if !write_Ros1Motion_capture_ikRobotArmQVVD(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/robotArmQVVD value.
// @details Require the complete 12..396-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikRobotArmQVVD; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikRobotArmQVVD :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRobotArmQVVD,u32) {
 if len(bytes)<12 || len(bytes)>396 { return Ros1Motion_capture_ikRobotArmQVVD{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikRobotArmQVVD(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikRobotArmQVVD{},reader.code }
 return value,0
}
// @brief Complete ROS 1 time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
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
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_sec: u32,
 // @brief time.nsec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_nsec: u32,
}
// @brief Maximum canonical extent of time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of time.
// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
// order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
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
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..272 bytes
// and is identified by UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7.
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
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_seq: u32,
 // @brief std_msgs/Header.stamp: time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros1Time,
 // @brief std_msgs/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/Header in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of std_msgs/Header.
// @details Exact identity UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7 binds field
// order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_seq),4) { return false }
 if !write_Ros1Time(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/Header.
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Std_msgsHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros1Std_msgsHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_msgsHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_msgsHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/robotHandPosition value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..792 bytes
// and is identified by UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotHandPosition :: struct {
 // @brief motion_capture_ik/robotHandPosition.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief motion_capture_ik/robotHandPosition.left_hand_position: uint8; 0..256 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
 field_left_hand_position: []u8,
 // @brief motion_capture_ik/robotHandPosition.right_hand_position: uint8; 0..256 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
 field_right_hand_position: []u8,
}
// @brief Maximum canonical extent of motion_capture_ik/robotHandPosition in bytes.
// @details The inclusive bound is 792 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotHandPosition_Maximum_Wire_Bytes :: 792
// @brief Canonical codec identity of motion_capture_ik/robotHandPosition.
// @details Exact identity UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotHandPosition_Codec_Identity :: "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa"
// @brief Original ROS type name for motion_capture_ik/robotHandPosition.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotHandPosition_Native_Type :: "motion_capture_ik/robotHandPosition"
// @brief Selected original native identity for motion_capture_ik/robotHandPosition.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikRobotHandPosition_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/robotHandPosition.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikRobotHandPosition :: proc() -> Ros1Motion_capture_ikRobotHandPosition {
 v: Ros1Motion_capture_ikRobotHandPosition
 v.field_header = Ros1Std_msgsHeader{}
 v.field_left_hand_position = nil
 v.field_right_hand_position = nil
 return v
}
// @brief Append every canonical field of motion_capture_ik/robotHandPosition.
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
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikRobotHandPosition :: proc(v: ^Ros1Motion_capture_ikRobotHandPosition, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if len(v.field_left_hand_position)>256 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_left_hand_position)),4) { return false }
 for e in v.field_left_hand_position {
 if !put_integer(w,u64(e),1) { return false }
 }
 if len(v.field_right_hand_position)>256 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_right_hand_position)),4) { return false }
 for e in v.field_right_hand_position {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/robotHandPosition.
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
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikRobotHandPosition :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRobotHandPosition,bool) {
 v:=init_Ros1Motion_capture_ikRobotHandPosition()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>256 { r.code=22; return v,false }
 v.field_left_hand_position=make([]u8,int(n),allocator)
 }
 for &e in v.field_left_hand_position {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>256 { r.code=22; return v,false }
 v.field_right_hand_position=make([]u8,int(n),allocator)
 }
 for &e in v.field_right_hand_position {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/robotHandPosition value.
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
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikRobotHandPosition :: proc(v: ^Ros1Motion_capture_ikRobotHandPosition, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=792}
 if !write_Ros1Motion_capture_ikRobotHandPosition(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=792}
 if !write_Ros1Motion_capture_ikRobotHandPosition(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/robotHandPosition value.
// @details Require the complete 24..792-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikRobotHandPosition; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikRobotHandPosition :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikRobotHandPosition,u32) {
 if len(bytes)<24 || len(bytes)>792 { return Ros1Motion_capture_ikRobotHandPosition{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikRobotHandPosition(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikRobotHandPosition{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/twoArmHandPose value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 288..544 bytes
// and is identified by UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPose :: struct {
 // @brief motion_capture_ik/twoArmHandPose.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief motion_capture_ik/twoArmHandPose.left_pose: motion_capture_ik/armHandPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_left_pose: Ros1Motion_capture_ikArmHandPose,
 // @brief motion_capture_ik/twoArmHandPose.right_pose: motion_capture_ik/armHandPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
 field_right_pose: Ros1Motion_capture_ikArmHandPose,
}
// @brief Maximum canonical extent of motion_capture_ik/twoArmHandPose in bytes.
// @details The inclusive bound is 544 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPose_Maximum_Wire_Bytes :: 544
// @brief Canonical codec identity of motion_capture_ik/twoArmHandPose.
// @details Exact identity UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPose_Codec_Identity :: "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181"
// @brief Original ROS type name for motion_capture_ik/twoArmHandPose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPose_Native_Type :: "motion_capture_ik/twoArmHandPose"
// @brief Selected original native identity for motion_capture_ik/twoArmHandPose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPose_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/twoArmHandPose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikTwoArmHandPose :: proc() -> Ros1Motion_capture_ikTwoArmHandPose {
 v: Ros1Motion_capture_ikTwoArmHandPose
 v.field_header = Ros1Std_msgsHeader{}
 v.field_left_pose = Ros1Motion_capture_ikArmHandPose{}
 v.field_right_pose = Ros1Motion_capture_ikArmHandPose{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/twoArmHandPose.
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
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikTwoArmHandPose :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPose, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !write_Ros1Motion_capture_ikArmHandPose(&v.field_left_pose,w) { return false }
 if !write_Ros1Motion_capture_ikArmHandPose(&v.field_right_pose,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/twoArmHandPose.
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
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikTwoArmHandPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPose,bool) {
 v:=init_Ros1Motion_capture_ikTwoArmHandPose()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPose(r,allocator); if !ok { return v,false }
 v.field_left_pose=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPose(r,allocator); if !ok { return v,false }
 v.field_right_pose=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/twoArmHandPose value.
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
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikTwoArmHandPose :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=544}
 if !write_Ros1Motion_capture_ikTwoArmHandPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=544}
 if !write_Ros1Motion_capture_ikTwoArmHandPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/twoArmHandPose value.
// @details Require the complete 288..544-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikTwoArmHandPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikTwoArmHandPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPose,u32) {
 if len(bytes)<288 || len(bytes)>544 { return Ros1Motion_capture_ikTwoArmHandPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikTwoArmHandPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikTwoArmHandPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/twoArmHandPoseCmd value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 346..602 bytes
// and is identified by UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmd :: struct {
 // @brief motion_capture_ik/twoArmHandPoseCmd.hand_poses: motion_capture_ik/twoArmHandPose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
 field_hand_poses: Ros1Motion_capture_ikTwoArmHandPose,
 // @brief motion_capture_ik/twoArmHandPoseCmd.use_custom_ik_param: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
 field_use_custom_ik_param: bool,
 // @brief motion_capture_ik/twoArmHandPoseCmd.joint_angles_as_q0: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
 field_joint_angles_as_q0: bool,
 // @brief motion_capture_ik/twoArmHandPoseCmd.ik_param: motion_capture_ik/ikSolveParam.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
 field_ik_param: Ros1Motion_capture_ikIkSolveParam,
}
// @brief Maximum canonical extent of motion_capture_ik/twoArmHandPoseCmd in bytes.
// @details The inclusive bound is 602 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmd_Maximum_Wire_Bytes :: 602
// @brief Canonical codec identity of motion_capture_ik/twoArmHandPoseCmd.
// @details Exact identity UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmd_Codec_Identity :: "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc"
// @brief Original ROS type name for motion_capture_ik/twoArmHandPoseCmd.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmd_Native_Type :: "motion_capture_ik/twoArmHandPoseCmd"
// @brief Selected original native identity for motion_capture_ik/twoArmHandPoseCmd.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmd_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/twoArmHandPoseCmd.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikTwoArmHandPoseCmd :: proc() -> Ros1Motion_capture_ikTwoArmHandPoseCmd {
 v: Ros1Motion_capture_ikTwoArmHandPoseCmd
 v.field_hand_poses = Ros1Motion_capture_ikTwoArmHandPose{}
 v.field_use_custom_ik_param = false
 v.field_joint_angles_as_q0 = false
 v.field_ik_param = Ros1Motion_capture_ikIkSolveParam{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/twoArmHandPoseCmd.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikTwoArmHandPoseCmd :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPoseCmd, w: ^Writer) -> bool {
 if !write_Ros1Motion_capture_ikTwoArmHandPose(&v.field_hand_poses,w) { return false }
 if !put_bool(w,v.field_use_custom_ik_param) { return false }
 if !put_bool(w,v.field_joint_angles_as_q0) { return false }
 if !write_Ros1Motion_capture_ikIkSolveParam(&v.field_ik_param,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/twoArmHandPoseCmd.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikTwoArmHandPoseCmd :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPoseCmd,bool) {
 v:=init_Ros1Motion_capture_ikTwoArmHandPoseCmd()
 {
 b,ok:=read_Ros1Motion_capture_ikTwoArmHandPose(r,allocator); if !ok { return v,false }
 v.field_hand_poses=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_use_custom_ik_param=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_angles_as_q0=bool(b)
 }
 {
 b,ok:=read_Ros1Motion_capture_ikIkSolveParam(r,allocator); if !ok { return v,false }
 v.field_ik_param=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/twoArmHandPoseCmd value.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikTwoArmHandPoseCmd :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPoseCmd, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=602}
 if !write_Ros1Motion_capture_ikTwoArmHandPoseCmd(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=602}
 if !write_Ros1Motion_capture_ikTwoArmHandPoseCmd(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/twoArmHandPoseCmd value.
// @details Require the complete 346..602-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmd; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikTwoArmHandPoseCmd :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPoseCmd,u32) {
 if len(bytes)<346 || len(bytes)>602 { return Ros1Motion_capture_ikTwoArmHandPoseCmd{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikTwoArmHandPoseCmd(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikTwoArmHandPoseCmd{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/twoArmHandPoseFree value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 184..696 bytes
// and is identified by UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseFree :: struct {
 // @brief motion_capture_ik/twoArmHandPoseFree.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief motion_capture_ik/twoArmHandPoseFree.left_pose: motion_capture_ik/armHandPoseFree.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_left_pose: Ros1Motion_capture_ikArmHandPoseFree,
 // @brief motion_capture_ik/twoArmHandPoseFree.right_pose: motion_capture_ik/armHandPoseFree.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
 field_right_pose: Ros1Motion_capture_ikArmHandPoseFree,
}
// @brief Maximum canonical extent of motion_capture_ik/twoArmHandPoseFree in bytes.
// @details The inclusive bound is 696 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseFree_Maximum_Wire_Bytes :: 696
// @brief Canonical codec identity of motion_capture_ik/twoArmHandPoseFree.
// @details Exact identity UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseFree_Codec_Identity :: "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c"
// @brief Original ROS type name for motion_capture_ik/twoArmHandPoseFree.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseFree_Native_Type :: "motion_capture_ik/twoArmHandPoseFree"
// @brief Selected original native identity for motion_capture_ik/twoArmHandPoseFree.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseFree_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/twoArmHandPoseFree.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikTwoArmHandPoseFree :: proc() -> Ros1Motion_capture_ikTwoArmHandPoseFree {
 v: Ros1Motion_capture_ikTwoArmHandPoseFree
 v.field_header = Ros1Std_msgsHeader{}
 v.field_left_pose = Ros1Motion_capture_ikArmHandPoseFree{}
 v.field_right_pose = Ros1Motion_capture_ikArmHandPoseFree{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/twoArmHandPoseFree.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikTwoArmHandPoseFree :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPoseFree, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !write_Ros1Motion_capture_ikArmHandPoseFree(&v.field_left_pose,w) { return false }
 if !write_Ros1Motion_capture_ikArmHandPoseFree(&v.field_right_pose,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/twoArmHandPoseFree.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikTwoArmHandPoseFree :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPoseFree,bool) {
 v:=init_Ros1Motion_capture_ikTwoArmHandPoseFree()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPoseFree(r,allocator); if !ok { return v,false }
 v.field_left_pose=b
 }
 {
 b,ok:=read_Ros1Motion_capture_ikArmHandPoseFree(r,allocator); if !ok { return v,false }
 v.field_right_pose=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/twoArmHandPoseFree value.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikTwoArmHandPoseFree :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPoseFree, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=696}
 if !write_Ros1Motion_capture_ikTwoArmHandPoseFree(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=696}
 if !write_Ros1Motion_capture_ikTwoArmHandPoseFree(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/twoArmHandPoseFree value.
// @details Require the complete 184..696-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikTwoArmHandPoseFree; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikTwoArmHandPoseFree :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPoseFree,u32) {
 if len(bytes)<184 || len(bytes)>696 { return Ros1Motion_capture_ikTwoArmHandPoseFree{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikTwoArmHandPoseFree(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikTwoArmHandPoseFree{},reader.code }
 return value,0
}
// @brief Complete ROS 1 motion_capture_ik/twoArmHandPoseCmdFree value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 242..754 bytes
// and is identified by UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmdFree :: struct {
 // @brief motion_capture_ik/twoArmHandPoseCmdFree.hand_poses: motion_capture_ik/twoArmHandPoseFree.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
 field_hand_poses: Ros1Motion_capture_ikTwoArmHandPoseFree,
 // @brief motion_capture_ik/twoArmHandPoseCmdFree.use_custom_ik_param: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
 field_use_custom_ik_param: bool,
 // @brief motion_capture_ik/twoArmHandPoseCmdFree.joint_angles_as_q0: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
 field_joint_angles_as_q0: bool,
 // @brief motion_capture_ik/twoArmHandPoseCmdFree.ik_param: motion_capture_ik/ikSolveParam.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
 field_ik_param: Ros1Motion_capture_ikIkSolveParam,
}
// @brief Maximum canonical extent of motion_capture_ik/twoArmHandPoseCmdFree in bytes.
// @details The inclusive bound is 754 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmdFree_Maximum_Wire_Bytes :: 754
// @brief Canonical codec identity of motion_capture_ik/twoArmHandPoseCmdFree.
// @details Exact identity UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmdFree_Codec_Identity :: "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773"
// @brief Original ROS type name for motion_capture_ik/twoArmHandPoseCmdFree.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmdFree_Native_Type :: "motion_capture_ik/twoArmHandPoseCmdFree"
// @brief Selected original native identity for motion_capture_ik/twoArmHandPoseCmdFree.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
Ros1Motion_capture_ikTwoArmHandPoseCmdFree_Native_Identity :: ""
// @brief Construct the declared defaults of motion_capture_ik/twoArmHandPoseCmdFree.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Motion_capture_ikTwoArmHandPoseCmdFree :: proc() -> Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
 v: Ros1Motion_capture_ikTwoArmHandPoseCmdFree
 v.field_hand_poses = Ros1Motion_capture_ikTwoArmHandPoseFree{}
 v.field_use_custom_ik_param = false
 v.field_joint_angles_as_q0 = false
 v.field_ik_param = Ros1Motion_capture_ikIkSolveParam{}
 return v
}
// @brief Append every canonical field of motion_capture_ik/twoArmHandPoseCmdFree.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPoseCmdFree, w: ^Writer) -> bool {
 if !write_Ros1Motion_capture_ikTwoArmHandPoseFree(&v.field_hand_poses,w) { return false }
 if !put_bool(w,v.field_use_custom_ik_param) { return false }
 if !put_bool(w,v.field_joint_angles_as_q0) { return false }
 if !write_Ros1Motion_capture_ikIkSolveParam(&v.field_ik_param,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of motion_capture_ik/twoArmHandPoseCmdFree.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Motion_capture_ikTwoArmHandPoseCmdFree :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPoseCmdFree,bool) {
 v:=init_Ros1Motion_capture_ikTwoArmHandPoseCmdFree()
 {
 b,ok:=read_Ros1Motion_capture_ikTwoArmHandPoseFree(r,allocator); if !ok { return v,false }
 v.field_hand_poses=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_use_custom_ik_param=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_angles_as_q0=bool(b)
 }
 {
 b,ok:=read_Ros1Motion_capture_ikIkSolveParam(r,allocator); if !ok { return v,false }
 v.field_ik_param=b
 }
 return v,true
}
// @brief Encode one complete motion_capture_ik/twoArmHandPoseCmdFree value.
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Motion_capture_ikTwoArmHandPoseCmdFree :: proc(v: ^Ros1Motion_capture_ikTwoArmHandPoseCmdFree, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=754}
 if !write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=754}
 if !write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete motion_capture_ik/twoArmHandPoseCmdFree value.
// @details Require the complete 242..754-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros1Motion_capture_ikTwoArmHandPoseCmdFree; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Motion_capture_ikTwoArmHandPoseCmdFree :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Motion_capture_ikTwoArmHandPoseCmdFree,u32) {
 if len(bytes)<242 || len(bytes)>754 { return Ros1Motion_capture_ikTwoArmHandPoseCmdFree{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Motion_capture_ikTwoArmHandPoseCmdFree{},reader.code }
 return value,0
}
