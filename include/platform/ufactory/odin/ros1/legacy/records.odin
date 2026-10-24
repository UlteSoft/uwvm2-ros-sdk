// @file records.odin
// @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
// @details The selected domain contains 29 complete record/components and 67 original fields. Declared
// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
// does not qualify a frontend, target ABI or native ROS transport.
// @see The platform's localized language guide and complete API-CATALOG.md.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
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
// @details All 10 declared fields are retained in source order. The canonical representation occupies
// 66..94 bytes and is identified by
// UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg :: struct {
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
// @details The inclusive bound is 94 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg_Maximum_Wire_Bytes :: 94
// @brief Canonical codec identity of xarm_msgs/RobotMsg.
// @details Exact identity UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Xarm_msgsRobotMsg_Codec_Identity :: "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7"
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
 measure:=Writer{measuring=true,limit=94}
 if !write_Ros1Xarm_msgsRobotMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=94}
 if !write_Ros1Xarm_msgsRobotMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
// @details Require the complete 66..94-byte canonical representation. Reject truncation, invalid fields
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
 if len(bytes)<66 || len(bytes)>94 { return Ros1Xarm_msgsRobotMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Xarm_msgsRobotMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Xarm_msgsRobotMsg{},reader.code }
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
