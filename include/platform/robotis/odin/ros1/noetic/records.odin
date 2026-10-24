package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 geometry_msgs/Point value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoint :: struct {
 // @brief geometry_msgs/Point.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
 field_x: f64,
 // @brief geometry_msgs/Point.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
 field_y: f64,
 // @brief geometry_msgs/Point.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoint_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Point.
// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoint_Codec_Identity :: "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
// @brief Original ROS type name for geometry_msgs/Point.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoint_Native_Type :: "geometry_msgs/Point"
// @brief Selected original native identity for geometry_msgs/Point.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoint_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Point.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsPoint :: proc(v: ^Ros1Geometry_msgsPoint, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Point.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoint,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Geometry_msgsPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Quaternion value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
// and is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsQuaternion :: struct {
 // @brief geometry_msgs/Quaternion.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_x: f64,
 // @brief geometry_msgs/Quaternion.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_y: f64,
 // @brief geometry_msgs/Quaternion.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_z: f64,
 // @brief geometry_msgs/Quaternion.w: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_w: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsQuaternion_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of geometry_msgs/Quaternion.
// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsQuaternion_Codec_Identity :: "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
// @brief Original ROS type name for geometry_msgs/Quaternion.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsQuaternion_Native_Type :: "geometry_msgs/Quaternion"
// @brief Selected original native identity for geometry_msgs/Quaternion.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsQuaternion_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Quaternion.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsQuaternion :: proc(v: ^Ros1Geometry_msgsQuaternion, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 if !put_float64(w,v.field_w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsQuaternion :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsQuaternion,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros1Geometry_msgsQuaternion{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsQuaternion(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsQuaternion{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Pose value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
// and is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPose :: struct {
 // @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
 field_position: Ros1Geometry_msgsPoint,
 // @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
 field_orientation: Ros1Geometry_msgsQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPose_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/Pose.
// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPose_Codec_Identity :: "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
// @brief Original ROS type name for geometry_msgs/Pose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPose_Native_Type :: "geometry_msgs/Pose"
// @brief Selected original native identity for geometry_msgs/Pose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPose_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Pose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsPose :: proc(v: ^Ros1Geometry_msgsPose, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPoint(&v.field_position,w) { return false }
 if !write_Ros1Geometry_msgsQuaternion(&v.field_orientation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Pose.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPose,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Geometry_msgsPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/PoseWithCovariance value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 344..344 bytes
// and is identified by UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoseWithCovariance :: struct {
 // @brief geometry_msgs/PoseWithCovariance.pose: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_pose: Ros1Geometry_msgsPose,
 // @brief geometry_msgs/PoseWithCovariance.covariance: float64; exactly 36 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_covariance: [36]f64,
}
// @brief Maximum canonical extent of geometry_msgs/PoseWithCovariance in bytes.
// @details The inclusive bound is 344 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoseWithCovariance_Maximum_Wire_Bytes :: 344
// @brief Canonical codec identity of geometry_msgs/PoseWithCovariance.
// @details Exact identity UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoseWithCovariance_Codec_Identity :: "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
// @brief Original ROS type name for geometry_msgs/PoseWithCovariance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoseWithCovariance_Native_Type :: "geometry_msgs/PoseWithCovariance"
// @brief Selected original native identity for geometry_msgs/PoseWithCovariance.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsPoseWithCovariance_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/PoseWithCovariance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Geometry_msgsPoseWithCovariance :: proc() -> Ros1Geometry_msgsPoseWithCovariance {
 v: Ros1Geometry_msgsPoseWithCovariance
 v.field_pose = Ros1Geometry_msgsPose{}
 v.field_covariance = [36]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of geometry_msgs/PoseWithCovariance.
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
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsPoseWithCovariance :: proc(v: ^Ros1Geometry_msgsPoseWithCovariance, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPose(&v.field_pose,w) { return false }
 for e in v.field_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/PoseWithCovariance.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Geometry_msgsPoseWithCovariance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoseWithCovariance,bool) {
 v:=init_Ros1Geometry_msgsPoseWithCovariance()
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_pose=b
 }
 for &e in v.field_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/PoseWithCovariance value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Geometry_msgsPoseWithCovariance :: proc(v: ^Ros1Geometry_msgsPoseWithCovariance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=344}
 if !write_Ros1Geometry_msgsPoseWithCovariance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=344}
 if !write_Ros1Geometry_msgsPoseWithCovariance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/PoseWithCovariance value.
// @details Require the complete 344..344-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsPoseWithCovariance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoseWithCovariance,u32) {
 if len(bytes)<344 || len(bytes)>344 { return Ros1Geometry_msgsPoseWithCovariance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPoseWithCovariance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPoseWithCovariance{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Vector3 value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsVector3 :: struct {
 // @brief geometry_msgs/Vector3.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
 field_x: f64,
 // @brief geometry_msgs/Vector3.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
 field_y: f64,
 // @brief geometry_msgs/Vector3.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Vector3 in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsVector3_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Vector3.
// @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsVector3_Codec_Identity :: "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
// @brief Original ROS type name for geometry_msgs/Vector3.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsVector3_Native_Type :: "geometry_msgs/Vector3"
// @brief Selected original native identity for geometry_msgs/Vector3.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsVector3_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Vector3.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsVector3 :: proc(v: ^Ros1Geometry_msgsVector3, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Vector3.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsVector3 :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsVector3,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Geometry_msgsVector3{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsVector3(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsVector3{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Transform value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
// and is identified by UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransform :: struct {
 // @brief geometry_msgs/Transform.translation: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
 field_translation: Ros1Geometry_msgsVector3,
 // @brief geometry_msgs/Transform.rotation: geometry_msgs/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
 field_rotation: Ros1Geometry_msgsQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/Transform in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransform_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/Transform.
// @details Exact identity UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransform_Codec_Identity :: "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"
// @brief Original ROS type name for geometry_msgs/Transform.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransform_Native_Type :: "geometry_msgs/Transform"
// @brief Selected original native identity for geometry_msgs/Transform.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransform_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Transform.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Geometry_msgsTransform :: proc() -> Ros1Geometry_msgsTransform {
 v: Ros1Geometry_msgsTransform
 v.field_translation = Ros1Geometry_msgsVector3{}
 v.field_rotation = Ros1Geometry_msgsQuaternion{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Transform.
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
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsTransform :: proc(v: ^Ros1Geometry_msgsTransform, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_translation,w) { return false }
 if !write_Ros1Geometry_msgsQuaternion(&v.field_rotation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Transform.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Geometry_msgsTransform :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTransform,bool) {
 v:=init_Ros1Geometry_msgsTransform()
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_translation=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsQuaternion(r,allocator); if !ok { return v,false }
 v.field_rotation=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Transform value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Geometry_msgsTransform :: proc(v: ^Ros1Geometry_msgsTransform, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Geometry_msgsTransform(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Geometry_msgsTransform(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Transform value.
// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsTransform :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTransform,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Geometry_msgsTransform{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsTransform(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsTransform{},reader.code }
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
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Time :: struct {
 // @brief time.sec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
 field_sec: u32,
 // @brief time.nsec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
 field_nsec: u32,
}
// @brief Maximum canonical extent of time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
Ros1Time_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of time.
// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
Ros1Time_Codec_Identity :: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
// @brief Original ROS type name for time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
Ros1Time_Native_Type :: "time"
// @brief Selected original native identity for time.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
Ros1Time_Native_Identity :: ""
// @brief Construct the declared defaults of time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Time :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Time,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Time{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Time(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Time{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_msgs/Header value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
// and is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Std_msgsHeader :: struct {
 // @brief std_msgs/Header.seq: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
 field_seq: u32,
 // @brief std_msgs/Header.stamp: time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
 field_stamp: Ros1Time,
 // @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/Header in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of std_msgs/Header.
// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
// @brief Original ROS type name for std_msgs/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_msgsHeader_Native_Type :: "std_msgs/Header"
// @brief Selected original native identity for std_msgs/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_msgsHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_seq),4) { return false }
 if !write_Ros1Time(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/Header.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros1Std_msgsHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros1Std_msgsHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/Header value.
// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Std_msgsHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros1Std_msgsHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_msgsHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_msgsHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/TransformStamped value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 76..460 bytes
// and is identified by UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransformStamped :: struct {
 // @brief geometry_msgs/TransformStamped.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief geometry_msgs/TransformStamped.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
 field_child_frame_id: string,
 // @brief geometry_msgs/TransformStamped.transform: geometry_msgs/Transform.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
 field_transform: Ros1Geometry_msgsTransform,
}
// @brief Maximum canonical extent of geometry_msgs/TransformStamped in bytes.
// @details The inclusive bound is 460 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransformStamped_Maximum_Wire_Bytes :: 460
// @brief Canonical codec identity of geometry_msgs/TransformStamped.
// @details Exact identity UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransformStamped_Codec_Identity :: "UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a"
// @brief Original ROS type name for geometry_msgs/TransformStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransformStamped_Native_Type :: "geometry_msgs/TransformStamped"
// @brief Selected original native identity for geometry_msgs/TransformStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTransformStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/TransformStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Geometry_msgsTransformStamped :: proc() -> Ros1Geometry_msgsTransformStamped {
 v: Ros1Geometry_msgsTransformStamped
 v.field_header = Ros1Std_msgsHeader{}
 v.field_child_frame_id = ""
 v.field_transform = Ros1Geometry_msgsTransform{}
 return v
}
// @brief Append every canonical field of geometry_msgs/TransformStamped.
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
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsTransformStamped :: proc(v: ^Ros1Geometry_msgsTransformStamped, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_child_frame_id,256) { return false }
 if !write_Ros1Geometry_msgsTransform(&v.field_transform,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/TransformStamped.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Geometry_msgsTransformStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTransformStamped,bool) {
 v:=init_Ros1Geometry_msgsTransformStamped()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_child_frame_id=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsTransform(r,allocator); if !ok { return v,false }
 v.field_transform=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/TransformStamped value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Geometry_msgsTransformStamped :: proc(v: ^Ros1Geometry_msgsTransformStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=460}
 if !write_Ros1Geometry_msgsTransformStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=460}
 if !write_Ros1Geometry_msgsTransformStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/TransformStamped value.
// @details Require the complete 76..460-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsTransformStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTransformStamped,u32) {
 if len(bytes)<76 || len(bytes)>460 { return Ros1Geometry_msgsTransformStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsTransformStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsTransformStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Twist value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
// and is identified by UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwist :: struct {
 // @brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
 field_linear: Ros1Geometry_msgsVector3,
 // @brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
 field_angular: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of geometry_msgs/Twist in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwist_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/Twist.
// @details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwist_Codec_Identity :: "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
// @brief Original ROS type name for geometry_msgs/Twist.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwist_Native_Type :: "geometry_msgs/Twist"
// @brief Selected original native identity for geometry_msgs/Twist.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwist_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Twist.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Geometry_msgsTwist :: proc() -> Ros1Geometry_msgsTwist {
 v: Ros1Geometry_msgsTwist
 v.field_linear = Ros1Geometry_msgsVector3{}
 v.field_angular = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Twist.
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
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsTwist :: proc(v: ^Ros1Geometry_msgsTwist, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_linear,w) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Twist.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Geometry_msgsTwist :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwist,bool) {
 v:=init_Ros1Geometry_msgsTwist()
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
// @brief Encode one complete geometry_msgs/Twist value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Geometry_msgsTwist :: proc(v: ^Ros1Geometry_msgsTwist, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Geometry_msgsTwist(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Geometry_msgsTwist(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Twist value.
// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsTwist :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwist,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Geometry_msgsTwist{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsTwist(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsTwist{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/TwistStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 64..192 bytes
// and is identified by UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistStamped :: struct {
 // @brief geometry_msgs/TwistStamped.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief geometry_msgs/TwistStamped.twist: geometry_msgs/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
 field_twist: Ros1Geometry_msgsTwist,
}
// @brief Maximum canonical extent of geometry_msgs/TwistStamped in bytes.
// @details The inclusive bound is 192 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistStamped_Maximum_Wire_Bytes :: 192
// @brief Canonical codec identity of geometry_msgs/TwistStamped.
// @details Exact identity UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistStamped_Codec_Identity :: "UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7"
// @brief Original ROS type name for geometry_msgs/TwistStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistStamped_Native_Type :: "geometry_msgs/TwistStamped"
// @brief Selected original native identity for geometry_msgs/TwistStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/TwistStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Geometry_msgsTwistStamped :: proc() -> Ros1Geometry_msgsTwistStamped {
 v: Ros1Geometry_msgsTwistStamped
 v.field_header = Ros1Std_msgsHeader{}
 v.field_twist = Ros1Geometry_msgsTwist{}
 return v
}
// @brief Append every canonical field of geometry_msgs/TwistStamped.
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
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsTwistStamped :: proc(v: ^Ros1Geometry_msgsTwistStamped, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !write_Ros1Geometry_msgsTwist(&v.field_twist,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/TwistStamped.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Geometry_msgsTwistStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwistStamped,bool) {
 v:=init_Ros1Geometry_msgsTwistStamped()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsTwist(r,allocator); if !ok { return v,false }
 v.field_twist=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/TwistStamped value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Geometry_msgsTwistStamped :: proc(v: ^Ros1Geometry_msgsTwistStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=192}
 if !write_Ros1Geometry_msgsTwistStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=192}
 if !write_Ros1Geometry_msgsTwistStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/TwistStamped value.
// @details Require the complete 64..192-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsTwistStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwistStamped,u32) {
 if len(bytes)<64 || len(bytes)>192 { return Ros1Geometry_msgsTwistStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsTwistStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsTwistStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/TwistWithCovariance value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 336..336 bytes
// and is identified by UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistWithCovariance :: struct {
 // @brief geometry_msgs/TwistWithCovariance.twist: geometry_msgs/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_twist: Ros1Geometry_msgsTwist,
 // @brief geometry_msgs/TwistWithCovariance.covariance: float64; exactly 36 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_covariance: [36]f64,
}
// @brief Maximum canonical extent of geometry_msgs/TwistWithCovariance in bytes.
// @details The inclusive bound is 336 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistWithCovariance_Maximum_Wire_Bytes :: 336
// @brief Canonical codec identity of geometry_msgs/TwistWithCovariance.
// @details Exact identity UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistWithCovariance_Codec_Identity :: "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
// @brief Original ROS type name for geometry_msgs/TwistWithCovariance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistWithCovariance_Native_Type :: "geometry_msgs/TwistWithCovariance"
// @brief Selected original native identity for geometry_msgs/TwistWithCovariance.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros1Geometry_msgsTwistWithCovariance_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/TwistWithCovariance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Geometry_msgsTwistWithCovariance :: proc() -> Ros1Geometry_msgsTwistWithCovariance {
 v: Ros1Geometry_msgsTwistWithCovariance
 v.field_twist = Ros1Geometry_msgsTwist{}
 v.field_covariance = [36]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of geometry_msgs/TwistWithCovariance.
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
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Geometry_msgsTwistWithCovariance :: proc(v: ^Ros1Geometry_msgsTwistWithCovariance, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsTwist(&v.field_twist,w) { return false }
 for e in v.field_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/TwistWithCovariance.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Geometry_msgsTwistWithCovariance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwistWithCovariance,bool) {
 v:=init_Ros1Geometry_msgsTwistWithCovariance()
 {
 b,ok:=read_Ros1Geometry_msgsTwist(r,allocator); if !ok { return v,false }
 v.field_twist=b
 }
 for &e in v.field_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/TwistWithCovariance value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Geometry_msgsTwistWithCovariance :: proc(v: ^Ros1Geometry_msgsTwistWithCovariance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=336}
 if !write_Ros1Geometry_msgsTwistWithCovariance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=336}
 if !write_Ros1Geometry_msgsTwistWithCovariance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/TwistWithCovariance value.
// @details Require the complete 336..336-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Geometry_msgsTwistWithCovariance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwistWithCovariance,u32) {
 if len(bytes)<336 || len(bytes)>336 { return Ros1Geometry_msgsTwistWithCovariance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsTwistWithCovariance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsTwistWithCovariance{},reader.code }
 return value,0
}
// @brief Complete ROS 1 nav_msgs/Odometry value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 700..1084 bytes
// and is identified by UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Nav_msgsOdometry :: struct {
 // @brief nav_msgs/Odometry.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief nav_msgs/Odometry.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_child_frame_id: string,
 // @brief nav_msgs/Odometry.pose: geometry_msgs/PoseWithCovariance.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_pose: Ros1Geometry_msgsPoseWithCovariance,
 // @brief nav_msgs/Odometry.twist: geometry_msgs/TwistWithCovariance.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_twist: Ros1Geometry_msgsTwistWithCovariance,
}
// @brief Maximum canonical extent of nav_msgs/Odometry in bytes.
// @details The inclusive bound is 1084 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros1Nav_msgsOdometry_Maximum_Wire_Bytes :: 1084
// @brief Canonical codec identity of nav_msgs/Odometry.
// @details Exact identity UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros1Nav_msgsOdometry_Codec_Identity :: "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0"
// @brief Original ROS type name for nav_msgs/Odometry.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros1Nav_msgsOdometry_Native_Type :: "nav_msgs/Odometry"
// @brief Selected original native identity for nav_msgs/Odometry.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros1Nav_msgsOdometry_Native_Identity :: ""
// @brief Construct the declared defaults of nav_msgs/Odometry.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Nav_msgsOdometry :: proc() -> Ros1Nav_msgsOdometry {
 v: Ros1Nav_msgsOdometry
 v.field_header = Ros1Std_msgsHeader{}
 v.field_child_frame_id = ""
 v.field_pose = Ros1Geometry_msgsPoseWithCovariance{}
 v.field_twist = Ros1Geometry_msgsTwistWithCovariance{}
 return v
}
// @brief Append every canonical field of nav_msgs/Odometry.
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
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Nav_msgsOdometry :: proc(v: ^Ros1Nav_msgsOdometry, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_child_frame_id,256) { return false }
 if !write_Ros1Geometry_msgsPoseWithCovariance(&v.field_pose,w) { return false }
 if !write_Ros1Geometry_msgsTwistWithCovariance(&v.field_twist,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of nav_msgs/Odometry.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Nav_msgsOdometry :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Nav_msgsOdometry,bool) {
 v:=init_Ros1Nav_msgsOdometry()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_child_frame_id=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsPoseWithCovariance(r,allocator); if !ok { return v,false }
 v.field_pose=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsTwistWithCovariance(r,allocator); if !ok { return v,false }
 v.field_twist=b
 }
 return v,true
}
// @brief Encode one complete nav_msgs/Odometry value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Nav_msgsOdometry :: proc(v: ^Ros1Nav_msgsOdometry, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1084}
 if !write_Ros1Nav_msgsOdometry(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1084}
 if !write_Ros1Nav_msgsOdometry(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete nav_msgs/Odometry value.
// @details Require the complete 700..1084-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Nav_msgsOdometry :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Nav_msgsOdometry,u32) {
 if len(bytes)<700 || len(bytes)>1084 { return Ros1Nav_msgsOdometry{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Nav_msgsOdometry(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Nav_msgsOdometry{},reader.code }
 return value,0
}
// @brief Complete ROS 1 sensor_msgs/BatteryState value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 64..832 bytes
// and is identified by UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState :: struct {
 // @brief sensor_msgs/BatteryState.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief sensor_msgs/BatteryState.voltage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_voltage: f32,
 // @brief sensor_msgs/BatteryState.temperature: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_temperature: f32,
 // @brief sensor_msgs/BatteryState.current: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_current: f32,
 // @brief sensor_msgs/BatteryState.charge: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_charge: f32,
 // @brief sensor_msgs/BatteryState.capacity: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_capacity: f32,
 // @brief sensor_msgs/BatteryState.design_capacity: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_design_capacity: f32,
 // @brief sensor_msgs/BatteryState.percentage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_percentage: f32,
 // @brief sensor_msgs/BatteryState.power_supply_status: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_power_supply_status: u8,
 // @brief sensor_msgs/BatteryState.power_supply_health: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_power_supply_health: u8,
 // @brief sensor_msgs/BatteryState.power_supply_technology: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_power_supply_technology: u8,
 // @brief sensor_msgs/BatteryState.present: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_present: bool,
 // @brief sensor_msgs/BatteryState.cell_voltage: float32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_cell_voltage: []f32,
 // @brief sensor_msgs/BatteryState.cell_temperature: float32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_cell_temperature: []f32,
 // @brief sensor_msgs/BatteryState.location: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_location: string,
 // @brief sensor_msgs/BatteryState.serial_number: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_serial_number: string,
}
// @brief Maximum canonical extent of sensor_msgs/BatteryState in bytes.
// @details The inclusive bound is 832 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_Maximum_Wire_Bytes :: 832
// @brief Canonical codec identity of sensor_msgs/BatteryState.
// @details Exact identity UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_Codec_Identity :: "UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441"
// @brief Original ROS type name for sensor_msgs/BatteryState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_Native_Type :: "sensor_msgs/BatteryState"
// @brief Selected original native identity for sensor_msgs/BatteryState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_Native_Identity :: ""
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_UNKNOWN :: u8(0)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_CHARGING: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_CHARGING :: u8(1)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_DISCHARGING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_DISCHARGING :: u8(2)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_NOT_CHARGING: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING :: u8(3)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_FULL: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_FULL :: u8(4)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN :: u8(0)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_GOOD: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_GOOD :: u8(1)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_OVERHEAT: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT :: u8(2)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_DEAD: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_DEAD :: u8(3)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_OVERVOLTAGE: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE :: u8(4)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_UNSPEC_FAILURE: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE :: u8(5)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_COLD: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_COLD :: u8(6)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE :: u8(7)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE :: u8(8)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN :: u8(0)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_NIMH: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH :: u8(1)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LION: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LION :: u8(2)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIPO: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO :: u8(3)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIFE: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE :: u8(4)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_NICD: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD :: u8(5)
// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIMN: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN :: u8(6)
// @brief Construct the declared defaults of sensor_msgs/BatteryState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Sensor_msgsBatteryState :: proc() -> Ros1Sensor_msgsBatteryState {
 v: Ros1Sensor_msgsBatteryState
 v.field_header = Ros1Std_msgsHeader{}
 v.field_voltage = 0
 v.field_temperature = 0
 v.field_current = 0
 v.field_charge = 0
 v.field_capacity = 0
 v.field_design_capacity = 0
 v.field_percentage = 0
 v.field_power_supply_status = 0
 v.field_power_supply_health = 0
 v.field_power_supply_technology = 0
 v.field_present = false
 v.field_cell_voltage = nil
 v.field_cell_temperature = nil
 v.field_location = ""
 v.field_serial_number = ""
 return v
}
// @brief Append every canonical field of sensor_msgs/BatteryState.
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
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Sensor_msgsBatteryState :: proc(v: ^Ros1Sensor_msgsBatteryState, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_float32(w,v.field_voltage) { return false }
 if !put_float32(w,v.field_temperature) { return false }
 if !put_float32(w,v.field_current) { return false }
 if !put_float32(w,v.field_charge) { return false }
 if !put_float32(w,v.field_capacity) { return false }
 if !put_float32(w,v.field_design_capacity) { return false }
 if !put_float32(w,v.field_percentage) { return false }
 if !put_integer(w,u64(v.field_power_supply_status),1) { return false }
 if !put_integer(w,u64(v.field_power_supply_health),1) { return false }
 if !put_integer(w,u64(v.field_power_supply_technology),1) { return false }
 if !put_bool(w,v.field_present) { return false }
 if len(v.field_cell_voltage)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_cell_voltage)),4) { return false }
 for e in v.field_cell_voltage {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_cell_temperature)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_cell_temperature)),4) { return false }
 for e in v.field_cell_temperature {
 if !put_float32(w,e) { return false }
 }
 if !put_string(w,v.field_location,256) { return false }
 if !put_string(w,v.field_serial_number,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/BatteryState.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Sensor_msgsBatteryState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Sensor_msgsBatteryState,bool) {
 v:=init_Ros1Sensor_msgsBatteryState()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_voltage=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_temperature=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_current=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_charge=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_capacity=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_design_capacity=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_percentage=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_power_supply_status=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_power_supply_health=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_power_supply_technology=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_present=bool(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_cell_voltage=make([]f32,int(n),allocator)
 }
 for &e in v.field_cell_voltage {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_cell_temperature=make([]f32,int(n),allocator)
 }
 for &e in v.field_cell_temperature {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_location=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_serial_number=b
 }
 return v,true
}
// @brief Encode one complete sensor_msgs/BatteryState value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Sensor_msgsBatteryState :: proc(v: ^Ros1Sensor_msgsBatteryState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=832}
 if !write_Ros1Sensor_msgsBatteryState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=832}
 if !write_Ros1Sensor_msgsBatteryState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/BatteryState value.
// @details Require the complete 64..832-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Sensor_msgsBatteryState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Sensor_msgsBatteryState,u32) {
 if len(bytes)<64 || len(bytes)>832 { return Ros1Sensor_msgsBatteryState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Sensor_msgsBatteryState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Sensor_msgsBatteryState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 sensor_msgs/Imu value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 312..440 bytes
// and is identified by UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsImu :: struct {
 // @brief sensor_msgs/Imu.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief sensor_msgs/Imu.orientation: geometry_msgs/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_orientation: Ros1Geometry_msgsQuaternion,
 // @brief sensor_msgs/Imu.orientation_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_orientation_covariance: [9]f64,
 // @brief sensor_msgs/Imu.angular_velocity: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_angular_velocity: Ros1Geometry_msgsVector3,
 // @brief sensor_msgs/Imu.angular_velocity_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_angular_velocity_covariance: [9]f64,
 // @brief sensor_msgs/Imu.linear_acceleration: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_linear_acceleration: Ros1Geometry_msgsVector3,
 // @brief sensor_msgs/Imu.linear_acceleration_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
 field_linear_acceleration_covariance: [9]f64,
}
// @brief Maximum canonical extent of sensor_msgs/Imu in bytes.
// @details The inclusive bound is 440 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsImu_Maximum_Wire_Bytes :: 440
// @brief Canonical codec identity of sensor_msgs/Imu.
// @details Exact identity UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsImu_Codec_Identity :: "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3"
// @brief Original ROS type name for sensor_msgs/Imu.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsImu_Native_Type :: "sensor_msgs/Imu"
// @brief Selected original native identity for sensor_msgs/Imu.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsImu_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/Imu.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Sensor_msgsImu :: proc() -> Ros1Sensor_msgsImu {
 v: Ros1Sensor_msgsImu
 v.field_header = Ros1Std_msgsHeader{}
 v.field_orientation = Ros1Geometry_msgsQuaternion{}
 v.field_orientation_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_angular_velocity = Ros1Geometry_msgsVector3{}
 v.field_angular_velocity_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_linear_acceleration = Ros1Geometry_msgsVector3{}
 v.field_linear_acceleration_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of sensor_msgs/Imu.
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
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Sensor_msgsImu :: proc(v: ^Ros1Sensor_msgsImu, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !write_Ros1Geometry_msgsQuaternion(&v.field_orientation,w) { return false }
 for e in v.field_orientation_covariance {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros1Geometry_msgsVector3(&v.field_angular_velocity,w) { return false }
 for e in v.field_angular_velocity_covariance {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros1Geometry_msgsVector3(&v.field_linear_acceleration,w) { return false }
 for e in v.field_linear_acceleration_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/Imu.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Sensor_msgsImu :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Sensor_msgsImu,bool) {
 v:=init_Ros1Sensor_msgsImu()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsQuaternion(r,allocator); if !ok { return v,false }
 v.field_orientation=b
 }
 for &e in v.field_orientation_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_angular_velocity=b
 }
 for &e in v.field_angular_velocity_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_linear_acceleration=b
 }
 for &e in v.field_linear_acceleration_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete sensor_msgs/Imu value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Sensor_msgsImu :: proc(v: ^Ros1Sensor_msgsImu, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=440}
 if !write_Ros1Sensor_msgsImu(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=440}
 if !write_Ros1Sensor_msgsImu(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/Imu value.
// @details Require the complete 312..440-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Sensor_msgsImu :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Sensor_msgsImu,u32) {
 if len(bytes)<312 || len(bytes)>440 { return Ros1Sensor_msgsImu{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Sensor_msgsImu(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Sensor_msgsImu{},reader.code }
 return value,0
}
// @brief Complete ROS 1 sensor_msgs/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 32..472 bytes
// and is identified by UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsJointState :: struct {
 // @brief sensor_msgs/JointState.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief sensor_msgs/JointState.name: string; 0..2 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
 field_name: []string,
 // @brief sensor_msgs/JointState.position: float64; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
 field_position: []f64,
 // @brief sensor_msgs/JointState.velocity: float64; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
 field_velocity: []f64,
 // @brief sensor_msgs/JointState.effort: float64; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
 field_effort: []f64,
}
// @brief Maximum canonical extent of sensor_msgs/JointState in bytes.
// @details The inclusive bound is 472 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsJointState_Maximum_Wire_Bytes :: 472
// @brief Canonical codec identity of sensor_msgs/JointState.
// @details Exact identity UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsJointState_Codec_Identity :: "UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e"
// @brief Original ROS type name for sensor_msgs/JointState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsJointState_Native_Type :: "sensor_msgs/JointState"
// @brief Selected original native identity for sensor_msgs/JointState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsJointState_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/JointState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Sensor_msgsJointState :: proc() -> Ros1Sensor_msgsJointState {
 v: Ros1Sensor_msgsJointState
 v.field_header = Ros1Std_msgsHeader{}
 v.field_name = nil
 v.field_position = nil
 v.field_velocity = nil
 v.field_effort = nil
 return v
}
// @brief Append every canonical field of sensor_msgs/JointState.
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
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Sensor_msgsJointState :: proc(v: ^Ros1Sensor_msgsJointState, w: ^Writer) -> bool {
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(v.field_position) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { w.code=22; return false }
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if len(v.field_name)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_position)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/JointState.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Sensor_msgsJointState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Sensor_msgsJointState,bool) {
 v:=init_Ros1Sensor_msgsJointState()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_name=make([]string,int(n),allocator)
 }
 for &e in v.field_name {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
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
 if n>2 { r.code=22; return v,false }
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
 if n>2 { r.code=22; return v,false }
 v.field_effort=make([]f64,int(n),allocator)
 }
 for &e in v.field_effort {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(v.field_position) { r.code=22; return v,false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(v.field_velocity) { r.code=22; return v,false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(v.field_effort) { r.code=22; return v,false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { r.code=22; return v,false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { r.code=22; return v,false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { r.code=22; return v,false }
 return v,true
}
// @brief Encode one complete sensor_msgs/JointState value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Sensor_msgsJointState :: proc(v: ^Ros1Sensor_msgsJointState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=472}
 if !write_Ros1Sensor_msgsJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=472}
 if !write_Ros1Sensor_msgsJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/JointState value.
// @details Require the complete 32..472-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Sensor_msgsJointState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Sensor_msgsJointState,u32) {
 if len(bytes)<32 || len(bytes)>472 { return Ros1Sensor_msgsJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Sensor_msgsJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Sensor_msgsJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 sensor_msgs/LaserScan value.
// @details All 10 declared fields are retained in source order. The canonical representation occupies 52..8372 bytes
// and is identified by UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsLaserScan :: struct {
 // @brief sensor_msgs/LaserScan.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief sensor_msgs/LaserScan.angle_min: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_angle_min: f32,
 // @brief sensor_msgs/LaserScan.angle_max: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_angle_max: f32,
 // @brief sensor_msgs/LaserScan.angle_increment: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_angle_increment: f32,
 // @brief sensor_msgs/LaserScan.time_increment: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_time_increment: f32,
 // @brief sensor_msgs/LaserScan.scan_time: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_scan_time: f32,
 // @brief sensor_msgs/LaserScan.range_min: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_range_min: f32,
 // @brief sensor_msgs/LaserScan.range_max: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_range_max: f32,
 // @brief sensor_msgs/LaserScan.ranges: float32; 0..1024 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_ranges: []f32,
 // @brief sensor_msgs/LaserScan.intensities: float32; 0..1024 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_intensities: []f32,
}
// @brief Maximum canonical extent of sensor_msgs/LaserScan in bytes.
// @details The inclusive bound is 8372 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsLaserScan_Maximum_Wire_Bytes :: 8372
// @brief Canonical codec identity of sensor_msgs/LaserScan.
// @details Exact identity UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsLaserScan_Codec_Identity :: "UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b"
// @brief Original ROS type name for sensor_msgs/LaserScan.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsLaserScan_Native_Type :: "sensor_msgs/LaserScan"
// @brief Selected original native identity for sensor_msgs/LaserScan.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsLaserScan_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/LaserScan.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Sensor_msgsLaserScan :: proc() -> Ros1Sensor_msgsLaserScan {
 v: Ros1Sensor_msgsLaserScan
 v.field_header = Ros1Std_msgsHeader{}
 v.field_angle_min = 0
 v.field_angle_max = 0
 v.field_angle_increment = 0
 v.field_time_increment = 0
 v.field_scan_time = 0
 v.field_range_min = 0
 v.field_range_max = 0
 v.field_ranges = nil
 v.field_intensities = nil
 return v
}
// @brief Append every canonical field of sensor_msgs/LaserScan.
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
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Sensor_msgsLaserScan :: proc(v: ^Ros1Sensor_msgsLaserScan, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_float32(w,v.field_angle_min) { return false }
 if !put_float32(w,v.field_angle_max) { return false }
 if !put_float32(w,v.field_angle_increment) { return false }
 if !put_float32(w,v.field_time_increment) { return false }
 if !put_float32(w,v.field_scan_time) { return false }
 if !put_float32(w,v.field_range_min) { return false }
 if !put_float32(w,v.field_range_max) { return false }
 if len(v.field_ranges)>1024 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_ranges)),4) { return false }
 for e in v.field_ranges {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_intensities)>1024 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_intensities)),4) { return false }
 for e in v.field_intensities {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/LaserScan.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Sensor_msgsLaserScan :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Sensor_msgsLaserScan,bool) {
 v:=init_Ros1Sensor_msgsLaserScan()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_angle_min=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_angle_max=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_angle_increment=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_time_increment=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_scan_time=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_range_min=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_range_max=f32(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>1024 { r.code=22; return v,false }
 v.field_ranges=make([]f32,int(n),allocator)
 }
 for &e in v.field_ranges {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>1024 { r.code=22; return v,false }
 v.field_intensities=make([]f32,int(n),allocator)
 }
 for &e in v.field_intensities {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete sensor_msgs/LaserScan value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Sensor_msgsLaserScan :: proc(v: ^Ros1Sensor_msgsLaserScan, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8372}
 if !write_Ros1Sensor_msgsLaserScan(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8372}
 if !write_Ros1Sensor_msgsLaserScan(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/LaserScan value.
// @details Require the complete 52..8372-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Sensor_msgsLaserScan :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Sensor_msgsLaserScan,u32) {
 if len(bytes)<52 || len(bytes)>8372 { return Ros1Sensor_msgsLaserScan{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Sensor_msgsLaserScan(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Sensor_msgsLaserScan{},reader.code }
 return value,0
}
// @brief Complete ROS 1 sensor_msgs/MagneticField value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 112..240 bytes
// and is identified by UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsMagneticField :: struct {
 // @brief sensor_msgs/MagneticField.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief sensor_msgs/MagneticField.magnetic_field: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
 field_magnetic_field: Ros1Geometry_msgsVector3,
 // @brief sensor_msgs/MagneticField.magnetic_field_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
 field_magnetic_field_covariance: [9]f64,
}
// @brief Maximum canonical extent of sensor_msgs/MagneticField in bytes.
// @details The inclusive bound is 240 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsMagneticField_Maximum_Wire_Bytes :: 240
// @brief Canonical codec identity of sensor_msgs/MagneticField.
// @details Exact identity UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsMagneticField_Codec_Identity :: "UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe"
// @brief Original ROS type name for sensor_msgs/MagneticField.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsMagneticField_Native_Type :: "sensor_msgs/MagneticField"
// @brief Selected original native identity for sensor_msgs/MagneticField.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros1Sensor_msgsMagneticField_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/MagneticField.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Sensor_msgsMagneticField :: proc() -> Ros1Sensor_msgsMagneticField {
 v: Ros1Sensor_msgsMagneticField
 v.field_header = Ros1Std_msgsHeader{}
 v.field_magnetic_field = Ros1Geometry_msgsVector3{}
 v.field_magnetic_field_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of sensor_msgs/MagneticField.
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
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Sensor_msgsMagneticField :: proc(v: ^Ros1Sensor_msgsMagneticField, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_magnetic_field,w) { return false }
 for e in v.field_magnetic_field_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/MagneticField.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Sensor_msgsMagneticField :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Sensor_msgsMagneticField,bool) {
 v:=init_Ros1Sensor_msgsMagneticField()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_magnetic_field=b
 }
 for &e in v.field_magnetic_field_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete sensor_msgs/MagneticField value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Sensor_msgsMagneticField :: proc(v: ^Ros1Sensor_msgsMagneticField, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=240}
 if !write_Ros1Sensor_msgsMagneticField(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=240}
 if !write_Ros1Sensor_msgsMagneticField(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/MagneticField value.
// @details Require the complete 112..240-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Sensor_msgsMagneticField :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Sensor_msgsMagneticField,u32) {
 if len(bytes)<112 || len(bytes)>240 { return Ros1Sensor_msgsMagneticField{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Sensor_msgsMagneticField(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Sensor_msgsMagneticField{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_srvs/SetBoolRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolRequest :: struct {
 // @brief std_srvs/SetBoolRequest.data: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
 field_data: bool,
}
// @brief Maximum canonical extent of std_srvs/SetBoolRequest in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolRequest_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of std_srvs/SetBoolRequest.
// @details Exact identity UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolRequest_Codec_Identity :: "UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac"
// @brief Original ROS type name for std_srvs/SetBoolRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolRequest_Native_Type :: "std_srvs/SetBoolRequest"
// @brief Selected original native identity for std_srvs/SetBoolRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolRequest_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/SetBoolRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Std_srvsSetBoolRequest :: proc() -> Ros1Std_srvsSetBoolRequest {
 v: Ros1Std_srvsSetBoolRequest
 v.field_data = false
 return v
}
// @brief Append every canonical field of std_srvs/SetBoolRequest.
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
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Std_srvsSetBoolRequest :: proc(v: ^Ros1Std_srvsSetBoolRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/SetBoolRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Std_srvsSetBoolRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Std_srvsSetBoolRequest,bool) {
 v:=init_Ros1Std_srvsSetBoolRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_data=bool(b)
 }
 return v,true
}
// @brief Encode one complete std_srvs/SetBoolRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Std_srvsSetBoolRequest :: proc(v: ^Ros1Std_srvsSetBoolRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Std_srvsSetBoolRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Std_srvsSetBoolRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/SetBoolRequest value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Std_srvsSetBoolRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_srvsSetBoolRequest,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Std_srvsSetBoolRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_srvsSetBoolRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_srvsSetBoolRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_srvs/SetBoolResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
// and is identified by UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolResponse :: struct {
 // @brief std_srvs/SetBoolResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
 field_success: bool,
 // @brief std_srvs/SetBoolResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of std_srvs/SetBoolResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of std_srvs/SetBoolResponse.
// @details Exact identity UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolResponse_Codec_Identity :: "UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6"
// @brief Original ROS type name for std_srvs/SetBoolResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolResponse_Native_Type :: "std_srvs/SetBoolResponse"
// @brief Selected original native identity for std_srvs/SetBoolResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsSetBoolResponse_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/SetBoolResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Std_srvsSetBoolResponse :: proc() -> Ros1Std_srvsSetBoolResponse {
 v: Ros1Std_srvsSetBoolResponse
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of std_srvs/SetBoolResponse.
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
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Std_srvsSetBoolResponse :: proc(v: ^Ros1Std_srvsSetBoolResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/SetBoolResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Std_srvsSetBoolResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Std_srvsSetBoolResponse,bool) {
 v:=init_Ros1Std_srvsSetBoolResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete std_srvs/SetBoolResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Std_srvsSetBoolResponse :: proc(v: ^Ros1Std_srvsSetBoolResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Std_srvsSetBoolResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Std_srvsSetBoolResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/SetBoolResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Std_srvsSetBoolResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_srvsSetBoolResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Std_srvsSetBoolResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_srvsSetBoolResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_srvsSetBoolResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_srvs/TriggerRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerRequest :: struct {
}
// @brief Maximum canonical extent of std_srvs/TriggerRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of std_srvs/TriggerRequest.
// @details Exact identity UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerRequest_Codec_Identity :: "UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e"
// @brief Original ROS type name for std_srvs/TriggerRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerRequest_Native_Type :: "std_srvs/TriggerRequest"
// @brief Selected original native identity for std_srvs/TriggerRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerRequest_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/TriggerRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Std_srvsTriggerRequest :: proc() -> Ros1Std_srvsTriggerRequest {
 v: Ros1Std_srvsTriggerRequest
 return v
}
// @brief Append every canonical field of std_srvs/TriggerRequest.
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
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Std_srvsTriggerRequest :: proc(v: ^Ros1Std_srvsTriggerRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of std_srvs/TriggerRequest.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Std_srvsTriggerRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Std_srvsTriggerRequest,bool) {
 v:=init_Ros1Std_srvsTriggerRequest()
 return v,true
}
// @brief Encode one complete std_srvs/TriggerRequest value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Std_srvsTriggerRequest :: proc(v: ^Ros1Std_srvsTriggerRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Std_srvsTriggerRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Std_srvsTriggerRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/TriggerRequest value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Std_srvsTriggerRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_srvsTriggerRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Std_srvsTriggerRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_srvsTriggerRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_srvsTriggerRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_srvs/TriggerResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
// and is identified by UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerResponse :: struct {
 // @brief std_srvs/TriggerResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
 field_success: bool,
 // @brief std_srvs/TriggerResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of std_srvs/TriggerResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of std_srvs/TriggerResponse.
// @details Exact identity UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerResponse_Codec_Identity :: "UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d"
// @brief Original ROS type name for std_srvs/TriggerResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerResponse_Native_Type :: "std_srvs/TriggerResponse"
// @brief Selected original native identity for std_srvs/TriggerResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
Ros1Std_srvsTriggerResponse_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/TriggerResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Std_srvsTriggerResponse :: proc() -> Ros1Std_srvsTriggerResponse {
 v: Ros1Std_srvsTriggerResponse
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of std_srvs/TriggerResponse.
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
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Std_srvsTriggerResponse :: proc(v: ^Ros1Std_srvsTriggerResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/TriggerResponse.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Std_srvsTriggerResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Std_srvsTriggerResponse,bool) {
 v:=init_Ros1Std_srvsTriggerResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete std_srvs/TriggerResponse value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Std_srvsTriggerResponse :: proc(v: ^Ros1Std_srvsTriggerResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Std_srvsTriggerResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Std_srvsTriggerResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/TriggerResponse value.
// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Std_srvsTriggerResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_srvsTriggerResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Std_srvsTriggerResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_srvsTriggerResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_srvsTriggerResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 turtlebot3_example/Turtlebot3Goal value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Goal :: struct {
 // @brief turtlebot3_example/Turtlebot3Goal.goal: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
 field_goal: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of turtlebot3_example/Turtlebot3Goal in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Goal_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of turtlebot3_example/Turtlebot3Goal.
// @details Exact identity UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Goal_Codec_Identity :: "UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5"
// @brief Original ROS type name for turtlebot3_example/Turtlebot3Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Goal_Native_Type :: "turtlebot3_example/Turtlebot3Goal"
// @brief Selected original native identity for turtlebot3_example/Turtlebot3Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Goal_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_example/Turtlebot3Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Turtlebot3_exampleTurtlebot3Goal :: proc() -> Ros1Turtlebot3_exampleTurtlebot3Goal {
 v: Ros1Turtlebot3_exampleTurtlebot3Goal
 v.field_goal = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of turtlebot3_example/Turtlebot3Goal.
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
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Turtlebot3_exampleTurtlebot3Goal :: proc(v: ^Ros1Turtlebot3_exampleTurtlebot3Goal, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_goal,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_example/Turtlebot3Goal.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Turtlebot3_exampleTurtlebot3Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Turtlebot3_exampleTurtlebot3Goal,bool) {
 v:=init_Ros1Turtlebot3_exampleTurtlebot3Goal()
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_goal=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_example/Turtlebot3Goal value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Turtlebot3_exampleTurtlebot3Goal :: proc(v: ^Ros1Turtlebot3_exampleTurtlebot3Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Turtlebot3_exampleTurtlebot3Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Turtlebot3_exampleTurtlebot3Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_example/Turtlebot3Goal value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Turtlebot3_exampleTurtlebot3Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Turtlebot3_exampleTurtlebot3Goal,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Turtlebot3_exampleTurtlebot3Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Turtlebot3_exampleTurtlebot3Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Turtlebot3_exampleTurtlebot3Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 turtlebot3_example/Turtlebot3Result value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
// and is identified by UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Result :: struct {
 // @brief turtlebot3_example/Turtlebot3Result.result: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
 field_result: string,
}
// @brief Maximum canonical extent of turtlebot3_example/Turtlebot3Result in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Result_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of turtlebot3_example/Turtlebot3Result.
// @details Exact identity UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Result_Codec_Identity :: "UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528"
// @brief Original ROS type name for turtlebot3_example/Turtlebot3Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Result_Native_Type :: "turtlebot3_example/Turtlebot3Result"
// @brief Selected original native identity for turtlebot3_example/Turtlebot3Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Result_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_example/Turtlebot3Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Turtlebot3_exampleTurtlebot3Result :: proc() -> Ros1Turtlebot3_exampleTurtlebot3Result {
 v: Ros1Turtlebot3_exampleTurtlebot3Result
 v.field_result = ""
 return v
}
// @brief Append every canonical field of turtlebot3_example/Turtlebot3Result.
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
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Turtlebot3_exampleTurtlebot3Result :: proc(v: ^Ros1Turtlebot3_exampleTurtlebot3Result, w: ^Writer) -> bool {
 if !put_string(w,v.field_result,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_example/Turtlebot3Result.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Turtlebot3_exampleTurtlebot3Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Turtlebot3_exampleTurtlebot3Result,bool) {
 v:=init_Ros1Turtlebot3_exampleTurtlebot3Result()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_result=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_example/Turtlebot3Result value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Turtlebot3_exampleTurtlebot3Result :: proc(v: ^Ros1Turtlebot3_exampleTurtlebot3Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Turtlebot3_exampleTurtlebot3Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Turtlebot3_exampleTurtlebot3Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_example/Turtlebot3Result value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Turtlebot3_exampleTurtlebot3Result :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Turtlebot3_exampleTurtlebot3Result,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Turtlebot3_exampleTurtlebot3Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Turtlebot3_exampleTurtlebot3Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Turtlebot3_exampleTurtlebot3Result{},reader.code }
 return value,0
}
// @brief Complete ROS 1 turtlebot3_example/Turtlebot3Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
// and is identified by UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Feedback :: struct {
 // @brief turtlebot3_example/Turtlebot3Feedback.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
 field_state: string,
}
// @brief Maximum canonical extent of turtlebot3_example/Turtlebot3Feedback in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Feedback_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of turtlebot3_example/Turtlebot3Feedback.
// @details Exact identity UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Feedback_Codec_Identity :: "UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8"
// @brief Original ROS type name for turtlebot3_example/Turtlebot3Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Feedback_Native_Type :: "turtlebot3_example/Turtlebot3Feedback"
// @brief Selected original native identity for turtlebot3_example/Turtlebot3Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_exampleTurtlebot3Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_example/Turtlebot3Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Turtlebot3_exampleTurtlebot3Feedback :: proc() -> Ros1Turtlebot3_exampleTurtlebot3Feedback {
 v: Ros1Turtlebot3_exampleTurtlebot3Feedback
 v.field_state = ""
 return v
}
// @brief Append every canonical field of turtlebot3_example/Turtlebot3Feedback.
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
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Turtlebot3_exampleTurtlebot3Feedback :: proc(v: ^Ros1Turtlebot3_exampleTurtlebot3Feedback, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_example/Turtlebot3Feedback.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Turtlebot3_exampleTurtlebot3Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Turtlebot3_exampleTurtlebot3Feedback,bool) {
 v:=init_Ros1Turtlebot3_exampleTurtlebot3Feedback()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_example/Turtlebot3Feedback value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Turtlebot3_exampleTurtlebot3Feedback :: proc(v: ^Ros1Turtlebot3_exampleTurtlebot3Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Turtlebot3_exampleTurtlebot3Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Turtlebot3_exampleTurtlebot3Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_example/Turtlebot3Feedback value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Turtlebot3_exampleTurtlebot3Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Turtlebot3_exampleTurtlebot3Feedback,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Turtlebot3_exampleTurtlebot3Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Turtlebot3_exampleTurtlebot3Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Turtlebot3_exampleTurtlebot3Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 turtlebot3_msgs/SensorState value.
// @details All 11 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
// and is identified by UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState :: struct {
 // @brief turtlebot3_msgs/SensorState.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros1Std_msgsHeader,
 // @brief turtlebot3_msgs/SensorState.bumper: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_bumper: u8,
 // @brief turtlebot3_msgs/SensorState.cliff: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_cliff: f32,
 // @brief turtlebot3_msgs/SensorState.sonar: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_sonar: f32,
 // @brief turtlebot3_msgs/SensorState.illumination: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_illumination: f32,
 // @brief turtlebot3_msgs/SensorState.led: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_led: u8,
 // @brief turtlebot3_msgs/SensorState.button: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_button: u8,
 // @brief turtlebot3_msgs/SensorState.torque: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_torque: bool,
 // @brief turtlebot3_msgs/SensorState.left_encoder: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_left_encoder: i32,
 // @brief turtlebot3_msgs/SensorState.right_encoder: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_right_encoder: i32,
 // @brief turtlebot3_msgs/SensorState.battery: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_battery: f32,
}
// @brief Maximum canonical extent of turtlebot3_msgs/SensorState in bytes.
// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_Maximum_Wire_Bytes :: 172
// @brief Canonical codec identity of turtlebot3_msgs/SensorState.
// @details Exact identity UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_Codec_Identity :: "UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f"
// @brief Original ROS type name for turtlebot3_msgs/SensorState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_Native_Type :: "turtlebot3_msgs/SensorState"
// @brief Selected original native identity for turtlebot3_msgs/SensorState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_Native_Identity :: ""
// @brief turtlebot3_msgs/SensorState.BUMPER_FORWARD: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_BUMPER_FORWARD :: u8(1)
// @brief turtlebot3_msgs/SensorState.BUMPER_BACKWARD: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_BUMPER_BACKWARD :: u8(2)
// @brief turtlebot3_msgs/SensorState.CLIFF: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_CLIFF :: u8(1)
// @brief turtlebot3_msgs/SensorState.SONAR: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_SONAR :: u8(1)
// @brief turtlebot3_msgs/SensorState.ILLUMINATION: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_ILLUMINATION :: u8(1)
// @brief turtlebot3_msgs/SensorState.BUTTON0: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_BUTTON0 :: u8(1)
// @brief turtlebot3_msgs/SensorState.BUTTON1: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_BUTTON1 :: u8(2)
// @brief turtlebot3_msgs/SensorState.ERROR_LEFT_MOTOR: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_ERROR_LEFT_MOTOR :: u8(1)
// @brief turtlebot3_msgs/SensorState.ERROR_RIGHT_MOTOR: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_ERROR_RIGHT_MOTOR :: u8(2)
// @brief turtlebot3_msgs/SensorState.TORQUE_ON: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_TORQUE_ON :: u8(1)
// @brief turtlebot3_msgs/SensorState.TORQUE_OFF: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSensorState_TORQUE_OFF :: u8(2)
// @brief Construct the declared defaults of turtlebot3_msgs/SensorState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Turtlebot3_msgsSensorState :: proc() -> Ros1Turtlebot3_msgsSensorState {
 v: Ros1Turtlebot3_msgsSensorState
 v.field_header = Ros1Std_msgsHeader{}
 v.field_bumper = 0
 v.field_cliff = 0
 v.field_sonar = 0
 v.field_illumination = 0
 v.field_led = 0
 v.field_button = 0
 v.field_torque = false
 v.field_left_encoder = 0
 v.field_right_encoder = 0
 v.field_battery = 0
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/SensorState.
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
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Turtlebot3_msgsSensorState :: proc(v: ^Ros1Turtlebot3_msgsSensorState, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_bumper),1) { return false }
 if !put_float32(w,v.field_cliff) { return false }
 if !put_float32(w,v.field_sonar) { return false }
 if !put_float32(w,v.field_illumination) { return false }
 if !put_integer(w,u64(v.field_led),1) { return false }
 if !put_integer(w,u64(v.field_button),1) { return false }
 if !put_bool(w,v.field_torque) { return false }
 if !put_integer(w,u64(v.field_left_encoder),4) { return false }
 if !put_integer(w,u64(v.field_right_encoder),4) { return false }
 if !put_float32(w,v.field_battery) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/SensorState.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Turtlebot3_msgsSensorState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Turtlebot3_msgsSensorState,bool) {
 v:=init_Ros1Turtlebot3_msgsSensorState()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_bumper=u8(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_cliff=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_sonar=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_illumination=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_led=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_button=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_torque=bool(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_left_encoder=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_right_encoder=i32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_battery=f32(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/SensorState value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Turtlebot3_msgsSensorState :: proc(v: ^Ros1Turtlebot3_msgsSensorState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=172}
 if !write_Ros1Turtlebot3_msgsSensorState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=172}
 if !write_Ros1Turtlebot3_msgsSensorState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/SensorState value.
// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Turtlebot3_msgsSensorState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Turtlebot3_msgsSensorState,u32) {
 if len(bytes)<44 || len(bytes)>172 { return Ros1Turtlebot3_msgsSensorState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Turtlebot3_msgsSensorState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Turtlebot3_msgsSensorState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 turtlebot3_msgs/Sound value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound :: struct {
 // @brief turtlebot3_msgs/Sound.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
 field_value: u8,
}
// @brief Maximum canonical extent of turtlebot3_msgs/Sound in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of turtlebot3_msgs/Sound.
// @details Exact identity UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_Codec_Identity :: "UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a"
// @brief Original ROS type name for turtlebot3_msgs/Sound.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_Native_Type :: "turtlebot3_msgs/Sound"
// @brief Selected original native identity for turtlebot3_msgs/Sound.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_Native_Identity :: ""
// @brief turtlebot3_msgs/Sound.OFF: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_OFF :: u8(0)
// @brief turtlebot3_msgs/Sound.ON: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_ON :: u8(1)
// @brief turtlebot3_msgs/Sound.LOW_BATTERY: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_LOW_BATTERY :: u8(2)
// @brief turtlebot3_msgs/Sound.ERROR: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_ERROR :: u8(3)
// @brief turtlebot3_msgs/Sound.BUTTON1: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_BUTTON1 :: u8(4)
// @brief turtlebot3_msgs/Sound.BUTTON2: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsSound_BUTTON2 :: u8(5)
// @brief Construct the declared defaults of turtlebot3_msgs/Sound.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Turtlebot3_msgsSound :: proc() -> Ros1Turtlebot3_msgsSound {
 v: Ros1Turtlebot3_msgsSound
 v.field_value = 0
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/Sound.
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
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Turtlebot3_msgsSound :: proc(v: ^Ros1Turtlebot3_msgsSound, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/Sound.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Turtlebot3_msgsSound :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Turtlebot3_msgsSound,bool) {
 v:=init_Ros1Turtlebot3_msgsSound()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/Sound value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Turtlebot3_msgsSound :: proc(v: ^Ros1Turtlebot3_msgsSound, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Turtlebot3_msgsSound(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Turtlebot3_msgsSound(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/Sound value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing
// bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Turtlebot3_msgsSound :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Turtlebot3_msgsSound,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Turtlebot3_msgsSound{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Turtlebot3_msgsSound(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Turtlebot3_msgsSound{},reader.code }
 return value,0
}
// @brief Complete ROS 1 turtlebot3_msgs/VersionInfo value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..780 bytes
// and is identified by UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsVersionInfo :: struct {
 // @brief turtlebot3_msgs/VersionInfo.hardware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
 field_hardware: string,
 // @brief turtlebot3_msgs/VersionInfo.firmware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
 field_firmware: string,
 // @brief turtlebot3_msgs/VersionInfo.software: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
 field_software: string,
}
// @brief Maximum canonical extent of turtlebot3_msgs/VersionInfo in bytes.
// @details The inclusive bound is 780 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsVersionInfo_Maximum_Wire_Bytes :: 780
// @brief Canonical codec identity of turtlebot3_msgs/VersionInfo.
// @details Exact identity UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsVersionInfo_Codec_Identity :: "UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a"
// @brief Original ROS type name for turtlebot3_msgs/VersionInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsVersionInfo_Native_Type :: "turtlebot3_msgs/VersionInfo"
// @brief Selected original native identity for turtlebot3_msgs/VersionInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros1Turtlebot3_msgsVersionInfo_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/VersionInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
init_Ros1Turtlebot3_msgsVersionInfo :: proc() -> Ros1Turtlebot3_msgsVersionInfo {
 v: Ros1Turtlebot3_msgsVersionInfo
 v.field_hardware = ""
 v.field_firmware = ""
 v.field_software = ""
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/VersionInfo.
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
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
write_Ros1Turtlebot3_msgsVersionInfo :: proc(v: ^Ros1Turtlebot3_msgsVersionInfo, w: ^Writer) -> bool {
 if !put_string(w,v.field_hardware,256) { return false }
 if !put_string(w,v.field_firmware,256) { return false }
 if !put_string(w,v.field_software,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/VersionInfo.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
// subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
read_Ros1Turtlebot3_msgsVersionInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Turtlebot3_msgsVersionInfo,bool) {
 v:=init_Ros1Turtlebot3_msgsVersionInfo()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_hardware=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_firmware=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_software=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/VersionInfo value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
// Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
encode_Ros1Turtlebot3_msgsVersionInfo :: proc(v: ^Ros1Turtlebot3_msgsVersionInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=780}
 if !write_Ros1Turtlebot3_msgsVersionInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=780}
 if !write_Ros1Turtlebot3_msgsVersionInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/VersionInfo value.
// @details Require the complete 12..780-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/odin/API.md
decode_Ros1Turtlebot3_msgsVersionInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Turtlebot3_msgsVersionInfo,u32) {
 if len(bytes)<12 || len(bytes)>780 { return Ros1Turtlebot3_msgsVersionInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Turtlebot3_msgsVersionInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Turtlebot3_msgsVersionInfo{},reader.code }
 return value,0
}
