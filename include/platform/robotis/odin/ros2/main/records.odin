package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 builtin_interfaces/msg/Time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime :: struct {
 // @brief builtin_interfaces/msg/Time.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Time.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Time.
// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Codec_Identity :: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
// @brief Original ROS type name for builtin_interfaces/msg/Time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Native_Type :: "builtin_interfaces/msg/Time"
// @brief Selected original native identity for builtin_interfaces/msg/Time.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Builtin_interfacesMsgTime :: proc() -> Ros2Builtin_interfacesMsgTime {
 v: Ros2Builtin_interfacesMsgTime
 v.field_sec = 0
 v.field_nanosec = 0
 return v
}
// @brief Append every canonical field of builtin_interfaces/msg/Time.
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Builtin_interfacesMsgTime :: proc(v: ^Ros2Builtin_interfacesMsgTime, w: ^Writer) -> bool {
 if v.field_nanosec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nanosec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Builtin_interfacesMsgTime :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,bool) {
 v:=init_Ros2Builtin_interfacesMsgTime()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sec=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_nanosec=u32(b)
 }
 if v.field_nanosec >= 1000000000 { r.code=22; return v,false }
 return v,true
}
// @brief Encode one complete builtin_interfaces/msg/Time value.
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Builtin_interfacesMsgTime :: proc(v: ^Ros2Builtin_interfacesMsgTime, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Builtin_interfacesMsgTime(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Builtin_interfacesMsgTime(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete builtin_interfaces/msg/Time value.
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Builtin_interfacesMsgTime :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgTime{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgTime(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgTime{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Point value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoint :: struct {
 // @brief geometry_msgs/msg/Point.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
 field_x: f64,
 // @brief geometry_msgs/msg/Point.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
 field_y: f64,
 // @brief geometry_msgs/msg/Point.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Point in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoint_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/msg/Point.
// @details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoint_Codec_Identity :: "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
// @brief Original ROS type name for geometry_msgs/msg/Point.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoint_Native_Type :: "geometry_msgs/msg/Point"
// @brief Selected original native identity for geometry_msgs/msg/Point.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoint_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Point.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgPoint :: proc(v: ^Ros2Geometry_msgsMsgPoint, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Point.
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
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoint,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Geometry_msgsMsgPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
// and is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgQuaternion :: struct {
 // @brief geometry_msgs/msg/Quaternion.x: float64.
 // @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_x: f64,
 // @brief geometry_msgs/msg/Quaternion.y: float64.
 // @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_y: f64,
 // @brief geometry_msgs/msg/Quaternion.z: float64.
 // @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_z: f64,
 // @brief geometry_msgs/msg/Quaternion.w: float64.
 // @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
 field_w: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Quaternion in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgQuaternion_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of geometry_msgs/msg/Quaternion.
// @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgQuaternion_Codec_Identity :: "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
// @brief Original ROS type name for geometry_msgs/msg/Quaternion.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgQuaternion_Native_Type :: "geometry_msgs/msg/Quaternion"
// @brief Selected original native identity for geometry_msgs/msg/Quaternion.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgQuaternion_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Quaternion.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgQuaternion :: proc(v: ^Ros2Geometry_msgsMsgQuaternion, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 if !put_float64(w,v.field_w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.
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
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgQuaternion :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgQuaternion,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros2Geometry_msgsMsgQuaternion{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgQuaternion(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgQuaternion{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Pose value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
// and is identified by UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPose :: struct {
 // @brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
 field_position: Ros2Geometry_msgsMsgPoint,
 // @brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
 field_orientation: Ros2Geometry_msgsMsgQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Pose in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPose_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/msg/Pose.
// @details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPose_Codec_Identity :: "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
// @brief Original ROS type name for geometry_msgs/msg/Pose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPose_Native_Type :: "geometry_msgs/msg/Pose"
// @brief Selected original native identity for geometry_msgs/msg/Pose.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPose_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Pose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgPose :: proc(v: ^Ros2Geometry_msgsMsgPose, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgPoint(&v.field_position,w) { return false }
 if !write_Ros2Geometry_msgsMsgQuaternion(&v.field_orientation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
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
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPose,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros2Geometry_msgsMsgPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPose{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/PoseWithCovariance value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 344..344 bytes
// and is identified by UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoseWithCovariance :: struct {
 // @brief geometry_msgs/msg/PoseWithCovariance.pose: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_pose: Ros2Geometry_msgsMsgPose,
 // @brief geometry_msgs/msg/PoseWithCovariance.covariance: float64; exactly 36 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_covariance: [36]f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/PoseWithCovariance in bytes.
// @details The inclusive bound is 344 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoseWithCovariance_Maximum_Wire_Bytes :: 344
// @brief Canonical codec identity of geometry_msgs/msg/PoseWithCovariance.
// @details Exact identity UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoseWithCovariance_Codec_Identity :: "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
// @brief Original ROS type name for geometry_msgs/msg/PoseWithCovariance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoseWithCovariance_Native_Type :: "geometry_msgs/msg/PoseWithCovariance"
// @brief Selected original native identity for geometry_msgs/msg/PoseWithCovariance.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgPoseWithCovariance_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/PoseWithCovariance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Geometry_msgsMsgPoseWithCovariance :: proc() -> Ros2Geometry_msgsMsgPoseWithCovariance {
 v: Ros2Geometry_msgsMsgPoseWithCovariance
 v.field_pose = Ros2Geometry_msgsMsgPose{}
 v.field_covariance = [36]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/PoseWithCovariance.
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
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgPoseWithCovariance :: proc(v: ^Ros2Geometry_msgsMsgPoseWithCovariance, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgPose(&v.field_pose,w) { return false }
 for e in v.field_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/PoseWithCovariance.
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
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Geometry_msgsMsgPoseWithCovariance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoseWithCovariance,bool) {
 v:=init_Ros2Geometry_msgsMsgPoseWithCovariance()
 {
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete geometry_msgs/msg/PoseWithCovariance value.
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
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Geometry_msgsMsgPoseWithCovariance :: proc(v: ^Ros2Geometry_msgsMsgPoseWithCovariance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=344}
 if !write_Ros2Geometry_msgsMsgPoseWithCovariance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=344}
 if !write_Ros2Geometry_msgsMsgPoseWithCovariance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/PoseWithCovariance value.
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
// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgPoseWithCovariance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoseWithCovariance,u32) {
 if len(bytes)<344 || len(bytes)>344 { return Ros2Geometry_msgsMsgPoseWithCovariance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPoseWithCovariance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPoseWithCovariance{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgVector3 :: struct {
 // @brief geometry_msgs/msg/Vector3.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
 field_x: f64,
 // @brief geometry_msgs/msg/Vector3.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
 field_y: f64,
 // @brief geometry_msgs/msg/Vector3.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Vector3 in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgVector3_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/msg/Vector3.
// @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgVector3_Codec_Identity :: "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
// @brief Original ROS type name for geometry_msgs/msg/Vector3.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgVector3_Native_Type :: "geometry_msgs/msg/Vector3"
// @brief Selected original native identity for geometry_msgs/msg/Vector3.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgVector3_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Vector3.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
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
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgVector3 :: proc(v: ^Ros2Geometry_msgsMsgVector3, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.
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
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgVector3 :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgVector3,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Geometry_msgsMsgVector3{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgVector3(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgVector3{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Transform value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
// and is identified by UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransform :: struct {
 // @brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
 field_translation: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
 field_rotation: Ros2Geometry_msgsMsgQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Transform in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransform_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/msg/Transform.
// @details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransform_Codec_Identity :: "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
// @brief Original ROS type name for geometry_msgs/msg/Transform.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransform_Native_Type :: "geometry_msgs/msg/Transform"
// @brief Selected original native identity for geometry_msgs/msg/Transform.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransform_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Transform.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Geometry_msgsMsgTransform :: proc() -> Ros2Geometry_msgsMsgTransform {
 v: Ros2Geometry_msgsMsgTransform
 v.field_translation = Ros2Geometry_msgsMsgVector3{}
 v.field_rotation = Ros2Geometry_msgsMsgQuaternion{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Transform.
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
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgTransform :: proc(v: ^Ros2Geometry_msgsMsgTransform, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_translation,w) { return false }
 if !write_Ros2Geometry_msgsMsgQuaternion(&v.field_rotation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Transform.
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
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Geometry_msgsMsgTransform :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTransform,bool) {
 v:=init_Ros2Geometry_msgsMsgTransform()
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_translation=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgQuaternion(r,allocator); if !ok { return v,false }
 v.field_rotation=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Transform value.
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
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Geometry_msgsMsgTransform :: proc(v: ^Ros2Geometry_msgsMsgTransform, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros2Geometry_msgsMsgTransform(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros2Geometry_msgsMsgTransform(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Transform value.
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
// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgTransform :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTransform,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros2Geometry_msgsMsgTransform{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTransform(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTransform{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/Header value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader :: struct {
 // @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
 // @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of std_msgs/msg/Header.
// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
// @brief Original ROS type name for std_msgs/msg/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Native_Type :: "std_msgs/msg/Header"
// @brief Selected original native identity for std_msgs/msg/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Std_msgsMsgHeader :: proc() -> Ros2Std_msgsMsgHeader {
 v: Ros2Std_msgsMsgHeader
 v.field_stamp = Ros2Builtin_interfacesMsgTime{}
 v.field_frame_id = ""
 return v
}
// @brief Append every canonical field of std_msgs/msg/Header.
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
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Std_msgsMsgHeader :: proc(v: ^Ros2Std_msgsMsgHeader, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/Header.
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
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Std_msgsMsgHeader :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgHeader,bool) {
 v:=init_Ros2Std_msgsMsgHeader()
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_stamp=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_frame_id=b
 }
 return v,true
}
// @brief Encode one complete std_msgs/msg/Header value.
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
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Std_msgsMsgHeader :: proc(v: ^Ros2Std_msgsMsgHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Std_msgsMsgHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Std_msgsMsgHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/Header value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Std_msgsMsgHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgHeader,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Std_msgsMsgHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/TransformStamped value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 72..456 bytes
// and is identified by UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransformStamped :: struct {
 // @brief geometry_msgs/msg/TransformStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/TransformStamped.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
 field_child_frame_id: string,
 // @brief geometry_msgs/msg/TransformStamped.transform: geometry_msgs/msg/Transform.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
 field_transform: Ros2Geometry_msgsMsgTransform,
}
// @brief Maximum canonical extent of geometry_msgs/msg/TransformStamped in bytes.
// @details The inclusive bound is 456 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransformStamped_Maximum_Wire_Bytes :: 456
// @brief Canonical codec identity of geometry_msgs/msg/TransformStamped.
// @details Exact identity UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransformStamped_Codec_Identity :: "UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a"
// @brief Original ROS type name for geometry_msgs/msg/TransformStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransformStamped_Native_Type :: "geometry_msgs/msg/TransformStamped"
// @brief Selected original native identity for geometry_msgs/msg/TransformStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTransformStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/TransformStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Geometry_msgsMsgTransformStamped :: proc() -> Ros2Geometry_msgsMsgTransformStamped {
 v: Ros2Geometry_msgsMsgTransformStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_child_frame_id = ""
 v.field_transform = Ros2Geometry_msgsMsgTransform{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/TransformStamped.
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
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgTransformStamped :: proc(v: ^Ros2Geometry_msgsMsgTransformStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_child_frame_id,256) { return false }
 if !write_Ros2Geometry_msgsMsgTransform(&v.field_transform,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/TransformStamped.
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
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Geometry_msgsMsgTransformStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTransformStamped,bool) {
 v:=init_Ros2Geometry_msgsMsgTransformStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_child_frame_id=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTransform(r,allocator); if !ok { return v,false }
 v.field_transform=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/TransformStamped value.
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
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Geometry_msgsMsgTransformStamped :: proc(v: ^Ros2Geometry_msgsMsgTransformStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=456}
 if !write_Ros2Geometry_msgsMsgTransformStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=456}
 if !write_Ros2Geometry_msgsMsgTransformStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/TransformStamped value.
// @details Require the complete 72..456-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgTransformStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTransformStamped,u32) {
 if len(bytes)<72 || len(bytes)>456 { return Ros2Geometry_msgsMsgTransformStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTransformStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTransformStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Twist value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
// and is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwist :: struct {
 // @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
 field_linear: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
 field_angular: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Twist in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwist_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/msg/Twist.
// @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwist_Codec_Identity :: "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
// @brief Original ROS type name for geometry_msgs/msg/Twist.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwist_Native_Type :: "geometry_msgs/msg/Twist"
// @brief Selected original native identity for geometry_msgs/msg/Twist.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwist_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Twist.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Geometry_msgsMsgTwist :: proc() -> Ros2Geometry_msgsMsgTwist {
 v: Ros2Geometry_msgsMsgTwist
 v.field_linear = Ros2Geometry_msgsMsgVector3{}
 v.field_angular = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Twist.
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
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgTwist :: proc(v: ^Ros2Geometry_msgsMsgTwist, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_linear,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Twist.
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
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Geometry_msgsMsgTwist :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwist,bool) {
 v:=init_Ros2Geometry_msgsMsgTwist()
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
// @brief Encode one complete geometry_msgs/msg/Twist value.
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
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Geometry_msgsMsgTwist :: proc(v: ^Ros2Geometry_msgsMsgTwist, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Geometry_msgsMsgTwist(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Geometry_msgsMsgTwist(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Twist value.
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
// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgTwist :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwist,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Geometry_msgsMsgTwist{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTwist(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTwist{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/TwistStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes
// and is identified by UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistStamped :: struct {
 // @brief geometry_msgs/msg/TwistStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/TwistStamped.twist: geometry_msgs/msg/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
 field_twist: Ros2Geometry_msgsMsgTwist,
}
// @brief Maximum canonical extent of geometry_msgs/msg/TwistStamped in bytes.
// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistStamped_Maximum_Wire_Bytes :: 188
// @brief Canonical codec identity of geometry_msgs/msg/TwistStamped.
// @details Exact identity UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistStamped_Codec_Identity :: "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
// @brief Original ROS type name for geometry_msgs/msg/TwistStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistStamped_Native_Type :: "geometry_msgs/msg/TwistStamped"
// @brief Selected original native identity for geometry_msgs/msg/TwistStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/TwistStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Geometry_msgsMsgTwistStamped :: proc() -> Ros2Geometry_msgsMsgTwistStamped {
 v: Ros2Geometry_msgsMsgTwistStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_twist = Ros2Geometry_msgsMsgTwist{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/TwistStamped.
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
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgTwistStamped :: proc(v: ^Ros2Geometry_msgsMsgTwistStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwist(&v.field_twist,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/TwistStamped.
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
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Geometry_msgsMsgTwistStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwistStamped,bool) {
 v:=init_Ros2Geometry_msgsMsgTwistStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwist(r,allocator); if !ok { return v,false }
 v.field_twist=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/TwistStamped value.
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
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Geometry_msgsMsgTwistStamped :: proc(v: ^Ros2Geometry_msgsMsgTwistStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=188}
 if !write_Ros2Geometry_msgsMsgTwistStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=188}
 if !write_Ros2Geometry_msgsMsgTwistStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/TwistStamped value.
// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgTwistStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwistStamped,u32) {
 if len(bytes)<60 || len(bytes)>188 { return Ros2Geometry_msgsMsgTwistStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTwistStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTwistStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/TwistWithCovariance value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 336..336 bytes
// and is identified by UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistWithCovariance :: struct {
 // @brief geometry_msgs/msg/TwistWithCovariance.twist: geometry_msgs/msg/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_twist: Ros2Geometry_msgsMsgTwist,
 // @brief geometry_msgs/msg/TwistWithCovariance.covariance: float64; exactly 36 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
 field_covariance: [36]f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/TwistWithCovariance in bytes.
// @details The inclusive bound is 336 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistWithCovariance_Maximum_Wire_Bytes :: 336
// @brief Canonical codec identity of geometry_msgs/msg/TwistWithCovariance.
// @details Exact identity UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistWithCovariance_Codec_Identity :: "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
// @brief Original ROS type name for geometry_msgs/msg/TwistWithCovariance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistWithCovariance_Native_Type :: "geometry_msgs/msg/TwistWithCovariance"
// @brief Selected original native identity for geometry_msgs/msg/TwistWithCovariance.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
Ros2Geometry_msgsMsgTwistWithCovariance_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/TwistWithCovariance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Geometry_msgsMsgTwistWithCovariance :: proc() -> Ros2Geometry_msgsMsgTwistWithCovariance {
 v: Ros2Geometry_msgsMsgTwistWithCovariance
 v.field_twist = Ros2Geometry_msgsMsgTwist{}
 v.field_covariance = [36]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/TwistWithCovariance.
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
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Geometry_msgsMsgTwistWithCovariance :: proc(v: ^Ros2Geometry_msgsMsgTwistWithCovariance, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgTwist(&v.field_twist,w) { return false }
 for e in v.field_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/TwistWithCovariance.
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
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Geometry_msgsMsgTwistWithCovariance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwistWithCovariance,bool) {
 v:=init_Ros2Geometry_msgsMsgTwistWithCovariance()
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwist(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete geometry_msgs/msg/TwistWithCovariance value.
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
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Geometry_msgsMsgTwistWithCovariance :: proc(v: ^Ros2Geometry_msgsMsgTwistWithCovariance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=336}
 if !write_Ros2Geometry_msgsMsgTwistWithCovariance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=336}
 if !write_Ros2Geometry_msgsMsgTwistWithCovariance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/TwistWithCovariance value.
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
// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Geometry_msgsMsgTwistWithCovariance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwistWithCovariance,u32) {
 if len(bytes)<336 || len(bytes)>336 { return Ros2Geometry_msgsMsgTwistWithCovariance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTwistWithCovariance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTwistWithCovariance{},reader.code }
 return value,0
}
// @brief Complete ROS 2 nav_msgs/msg/Odometry value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 696..1080 bytes
// and is identified by UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Nav_msgsMsgOdometry :: struct {
 // @brief nav_msgs/msg/Odometry.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief nav_msgs/msg/Odometry.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_child_frame_id: string,
 // @brief nav_msgs/msg/Odometry.pose: geometry_msgs/msg/PoseWithCovariance.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_pose: Ros2Geometry_msgsMsgPoseWithCovariance,
 // @brief nav_msgs/msg/Odometry.twist: geometry_msgs/msg/TwistWithCovariance.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
 field_twist: Ros2Geometry_msgsMsgTwistWithCovariance,
}
// @brief Maximum canonical extent of nav_msgs/msg/Odometry in bytes.
// @details The inclusive bound is 1080 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros2Nav_msgsMsgOdometry_Maximum_Wire_Bytes :: 1080
// @brief Canonical codec identity of nav_msgs/msg/Odometry.
// @details Exact identity UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros2Nav_msgsMsgOdometry_Codec_Identity :: "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111"
// @brief Original ROS type name for nav_msgs/msg/Odometry.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros2Nav_msgsMsgOdometry_Native_Type :: "nav_msgs/msg/Odometry"
// @brief Selected original native identity for nav_msgs/msg/Odometry.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
Ros2Nav_msgsMsgOdometry_Native_Identity :: ""
// @brief Construct the declared defaults of nav_msgs/msg/Odometry.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Nav_msgsMsgOdometry :: proc() -> Ros2Nav_msgsMsgOdometry {
 v: Ros2Nav_msgsMsgOdometry
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_child_frame_id = ""
 v.field_pose = Ros2Geometry_msgsMsgPoseWithCovariance{}
 v.field_twist = Ros2Geometry_msgsMsgTwistWithCovariance{}
 return v
}
// @brief Append every canonical field of nav_msgs/msg/Odometry.
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
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Nav_msgsMsgOdometry :: proc(v: ^Ros2Nav_msgsMsgOdometry, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_child_frame_id,256) { return false }
 if !write_Ros2Geometry_msgsMsgPoseWithCovariance(&v.field_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwistWithCovariance(&v.field_twist,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of nav_msgs/msg/Odometry.
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
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Nav_msgsMsgOdometry :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Nav_msgsMsgOdometry,bool) {
 v:=init_Ros2Nav_msgsMsgOdometry()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_child_frame_id=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseWithCovariance(r,allocator); if !ok { return v,false }
 v.field_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwistWithCovariance(r,allocator); if !ok { return v,false }
 v.field_twist=b
 }
 return v,true
}
// @brief Encode one complete nav_msgs/msg/Odometry value.
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
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Nav_msgsMsgOdometry :: proc(v: ^Ros2Nav_msgsMsgOdometry, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1080}
 if !write_Ros2Nav_msgsMsgOdometry(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1080}
 if !write_Ros2Nav_msgsMsgOdometry(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete nav_msgs/msg/Odometry value.
// @details Require the complete 696..1080-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Nav_msgsMsgOdometry :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Nav_msgsMsgOdometry,u32) {
 if len(bytes)<696 || len(bytes)>1080 { return Ros2Nav_msgsMsgOdometry{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Nav_msgsMsgOdometry(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Nav_msgsMsgOdometry{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/BatteryState value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 60..828 bytes
// and is identified by UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState :: struct {
 // @brief sensor_msgs/msg/BatteryState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief sensor_msgs/msg/BatteryState.voltage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_voltage: f32,
 // @brief sensor_msgs/msg/BatteryState.temperature: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_temperature: f32,
 // @brief sensor_msgs/msg/BatteryState.current: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_current: f32,
 // @brief sensor_msgs/msg/BatteryState.charge: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_charge: f32,
 // @brief sensor_msgs/msg/BatteryState.capacity: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_capacity: f32,
 // @brief sensor_msgs/msg/BatteryState.design_capacity: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_design_capacity: f32,
 // @brief sensor_msgs/msg/BatteryState.percentage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_percentage: f32,
 // @brief sensor_msgs/msg/BatteryState.power_supply_status: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_power_supply_status: u8,
 // @brief sensor_msgs/msg/BatteryState.power_supply_health: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_power_supply_health: u8,
 // @brief sensor_msgs/msg/BatteryState.power_supply_technology: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_power_supply_technology: u8,
 // @brief sensor_msgs/msg/BatteryState.present: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_present: bool,
 // @brief sensor_msgs/msg/BatteryState.cell_voltage: float32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_cell_voltage: []f32,
 // @brief sensor_msgs/msg/BatteryState.cell_temperature: float32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_cell_temperature: []f32,
 // @brief sensor_msgs/msg/BatteryState.location: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_location: string,
 // @brief sensor_msgs/msg/BatteryState.serial_number: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
 field_serial_number: string,
}
// @brief Maximum canonical extent of sensor_msgs/msg/BatteryState in bytes.
// @details The inclusive bound is 828 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_Maximum_Wire_Bytes :: 828
// @brief Canonical codec identity of sensor_msgs/msg/BatteryState.
// @details Exact identity UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_Codec_Identity :: "UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e"
// @brief Original ROS type name for sensor_msgs/msg/BatteryState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_Native_Type :: "sensor_msgs/msg/BatteryState"
// @brief Selected original native identity for sensor_msgs/msg/BatteryState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_Native_Identity :: ""
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_UNKNOWN :: u8(0)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_CHARGING: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_CHARGING :: u8(1)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_DISCHARGING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_DISCHARGING :: u8(2)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_NOT_CHARGING: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING :: u8(3)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_FULL: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_FULL :: u8(4)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN :: u8(0)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_GOOD: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_GOOD :: u8(1)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_OVERHEAT: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT :: u8(2)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_DEAD: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_DEAD :: u8(3)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_OVERVOLTAGE: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE :: u8(4)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_UNSPEC_FAILURE: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE :: u8(5)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_COLD: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_COLD :: u8(6)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE :: u8(7)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE :: u8(8)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN :: u8(0)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_NIMH: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH :: u8(1)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LION: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LION :: u8(2)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIPO: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO :: u8(3)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIFE: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE :: u8(4)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_NICD: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD :: u8(5)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIMN: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN :: u8(6)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_TERNARY: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_TERNARY :: u8(7)
// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_VRLA: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_VRLA :: u8(8)
// @brief Construct the declared defaults of sensor_msgs/msg/BatteryState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Sensor_msgsMsgBatteryState :: proc() -> Ros2Sensor_msgsMsgBatteryState {
 v: Ros2Sensor_msgsMsgBatteryState
 v.field_header = Ros2Std_msgsMsgHeader{}
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
// @brief Append every canonical field of sensor_msgs/msg/BatteryState.
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
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Sensor_msgsMsgBatteryState :: proc(v: ^Ros2Sensor_msgsMsgBatteryState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
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
// @brief Read the ordered canonical fields of sensor_msgs/msg/BatteryState.
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
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Sensor_msgsMsgBatteryState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgBatteryState,bool) {
 v:=init_Ros2Sensor_msgsMsgBatteryState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete sensor_msgs/msg/BatteryState value.
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
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Sensor_msgsMsgBatteryState :: proc(v: ^Ros2Sensor_msgsMsgBatteryState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=828}
 if !write_Ros2Sensor_msgsMsgBatteryState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=828}
 if !write_Ros2Sensor_msgsMsgBatteryState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/BatteryState value.
// @details Require the complete 60..828-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Sensor_msgsMsgBatteryState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgBatteryState,u32) {
 if len(bytes)<60 || len(bytes)>828 { return Ros2Sensor_msgsMsgBatteryState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgBatteryState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgBatteryState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/Imu value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 308..436 bytes
// and is identified by UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgImu :: struct {
 // @brief sensor_msgs/msg/Imu.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief sensor_msgs/msg/Imu.orientation: geometry_msgs/msg/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_orientation: Ros2Geometry_msgsMsgQuaternion,
 // @brief sensor_msgs/msg/Imu.orientation_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_orientation_covariance: [9]f64,
 // @brief sensor_msgs/msg/Imu.angular_velocity: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_angular_velocity: Ros2Geometry_msgsMsgVector3,
 // @brief sensor_msgs/msg/Imu.angular_velocity_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_angular_velocity_covariance: [9]f64,
 // @brief sensor_msgs/msg/Imu.linear_acceleration: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_linear_acceleration: Ros2Geometry_msgsMsgVector3,
 // @brief sensor_msgs/msg/Imu.linear_acceleration_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
 field_linear_acceleration_covariance: [9]f64,
}
// @brief Maximum canonical extent of sensor_msgs/msg/Imu in bytes.
// @details The inclusive bound is 436 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgImu_Maximum_Wire_Bytes :: 436
// @brief Canonical codec identity of sensor_msgs/msg/Imu.
// @details Exact identity UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgImu_Codec_Identity :: "UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b"
// @brief Original ROS type name for sensor_msgs/msg/Imu.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgImu_Native_Type :: "sensor_msgs/msg/Imu"
// @brief Selected original native identity for sensor_msgs/msg/Imu.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgImu_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/msg/Imu.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Sensor_msgsMsgImu :: proc() -> Ros2Sensor_msgsMsgImu {
 v: Ros2Sensor_msgsMsgImu
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_orientation = Ros2Geometry_msgsMsgQuaternion{}
 v.field_orientation_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_angular_velocity = Ros2Geometry_msgsMsgVector3{}
 v.field_angular_velocity_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 v.field_linear_acceleration = Ros2Geometry_msgsMsgVector3{}
 v.field_linear_acceleration_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of sensor_msgs/msg/Imu.
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
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Sensor_msgsMsgImu :: proc(v: ^Ros2Sensor_msgsMsgImu, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgQuaternion(&v.field_orientation,w) { return false }
 for e in v.field_orientation_covariance {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_angular_velocity,w) { return false }
 for e in v.field_angular_velocity_covariance {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_linear_acceleration,w) { return false }
 for e in v.field_linear_acceleration_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/msg/Imu.
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
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Sensor_msgsMsgImu :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgImu,bool) {
 v:=init_Ros2Sensor_msgsMsgImu()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgQuaternion(r,allocator); if !ok { return v,false }
 v.field_orientation=b
 }
 for &e in v.field_orientation_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_angular_velocity=b
 }
 for &e in v.field_angular_velocity_covariance {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete sensor_msgs/msg/Imu value.
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
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Sensor_msgsMsgImu :: proc(v: ^Ros2Sensor_msgsMsgImu, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=436}
 if !write_Ros2Sensor_msgsMsgImu(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=436}
 if !write_Ros2Sensor_msgsMsgImu(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/Imu value.
// @details Require the complete 308..436-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Sensor_msgsMsgImu :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgImu,u32) {
 if len(bytes)<308 || len(bytes)>436 { return Ros2Sensor_msgsMsgImu{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgImu(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgImu{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..468 bytes
// and is identified by UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgJointState :: struct {
 // @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief sensor_msgs/msg/JointState.name: string; 0..2 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
 field_name: []string,
 // @brief sensor_msgs/msg/JointState.position: float64; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
 field_position: []f64,
 // @brief sensor_msgs/msg/JointState.velocity: float64; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
 field_velocity: []f64,
 // @brief sensor_msgs/msg/JointState.effort: float64; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
 field_effort: []f64,
}
// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
// @details The inclusive bound is 468 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgJointState_Maximum_Wire_Bytes :: 468
// @brief Canonical codec identity of sensor_msgs/msg/JointState.
// @details Exact identity UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgJointState_Codec_Identity :: "UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf"
// @brief Original ROS type name for sensor_msgs/msg/JointState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgJointState_Native_Type :: "sensor_msgs/msg/JointState"
// @brief Selected original native identity for sensor_msgs/msg/JointState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgJointState_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/msg/JointState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Sensor_msgsMsgJointState :: proc() -> Ros2Sensor_msgsMsgJointState {
 v: Ros2Sensor_msgsMsgJointState
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_name = nil
 v.field_position = nil
 v.field_velocity = nil
 v.field_effort = nil
 return v
}
// @brief Append every canonical field of sensor_msgs/msg/JointState.
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
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Sensor_msgsMsgJointState :: proc(v: ^Ros2Sensor_msgsMsgJointState, w: ^Writer) -> bool {
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(v.field_position) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { w.code=22; return false }
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
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
// @brief Read the ordered canonical fields of sensor_msgs/msg/JointState.
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
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Sensor_msgsMsgJointState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgJointState,bool) {
 v:=init_Ros2Sensor_msgsMsgJointState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete sensor_msgs/msg/JointState value.
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
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Sensor_msgsMsgJointState :: proc(v: ^Ros2Sensor_msgsMsgJointState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=468}
 if !write_Ros2Sensor_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=468}
 if !write_Ros2Sensor_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
// @details Require the complete 28..468-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Sensor_msgsMsgJointState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgJointState,u32) {
 if len(bytes)<28 || len(bytes)>468 { return Ros2Sensor_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/LaserScan value.
// @details All 10 declared fields are retained in source order. The canonical representation occupies 48..8368 bytes
// and is identified by UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgLaserScan :: struct {
 // @brief sensor_msgs/msg/LaserScan.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief sensor_msgs/msg/LaserScan.angle_min: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_angle_min: f32,
 // @brief sensor_msgs/msg/LaserScan.angle_max: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_angle_max: f32,
 // @brief sensor_msgs/msg/LaserScan.angle_increment: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_angle_increment: f32,
 // @brief sensor_msgs/msg/LaserScan.time_increment: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_time_increment: f32,
 // @brief sensor_msgs/msg/LaserScan.scan_time: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_scan_time: f32,
 // @brief sensor_msgs/msg/LaserScan.range_min: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_range_min: f32,
 // @brief sensor_msgs/msg/LaserScan.range_max: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_range_max: f32,
 // @brief sensor_msgs/msg/LaserScan.ranges: float32; 0..1024 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_ranges: []f32,
 // @brief sensor_msgs/msg/LaserScan.intensities: float32; 0..1024 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
 field_intensities: []f32,
}
// @brief Maximum canonical extent of sensor_msgs/msg/LaserScan in bytes.
// @details The inclusive bound is 8368 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgLaserScan_Maximum_Wire_Bytes :: 8368
// @brief Canonical codec identity of sensor_msgs/msg/LaserScan.
// @details Exact identity UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgLaserScan_Codec_Identity :: "UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4"
// @brief Original ROS type name for sensor_msgs/msg/LaserScan.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgLaserScan_Native_Type :: "sensor_msgs/msg/LaserScan"
// @brief Selected original native identity for sensor_msgs/msg/LaserScan.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgLaserScan_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/msg/LaserScan.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Sensor_msgsMsgLaserScan :: proc() -> Ros2Sensor_msgsMsgLaserScan {
 v: Ros2Sensor_msgsMsgLaserScan
 v.field_header = Ros2Std_msgsMsgHeader{}
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
// @brief Append every canonical field of sensor_msgs/msg/LaserScan.
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
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Sensor_msgsMsgLaserScan :: proc(v: ^Ros2Sensor_msgsMsgLaserScan, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
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
// @brief Read the ordered canonical fields of sensor_msgs/msg/LaserScan.
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
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Sensor_msgsMsgLaserScan :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgLaserScan,bool) {
 v:=init_Ros2Sensor_msgsMsgLaserScan()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete sensor_msgs/msg/LaserScan value.
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
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Sensor_msgsMsgLaserScan :: proc(v: ^Ros2Sensor_msgsMsgLaserScan, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8368}
 if !write_Ros2Sensor_msgsMsgLaserScan(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8368}
 if !write_Ros2Sensor_msgsMsgLaserScan(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/LaserScan value.
// @details Require the complete 48..8368-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Sensor_msgsMsgLaserScan :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgLaserScan,u32) {
 if len(bytes)<48 || len(bytes)>8368 { return Ros2Sensor_msgsMsgLaserScan{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgLaserScan(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgLaserScan{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/MagneticField value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 108..236 bytes
// and is identified by UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgMagneticField :: struct {
 // @brief sensor_msgs/msg/MagneticField.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief sensor_msgs/msg/MagneticField.magnetic_field: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
 field_magnetic_field: Ros2Geometry_msgsMsgVector3,
 // @brief sensor_msgs/msg/MagneticField.magnetic_field_covariance: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
 field_magnetic_field_covariance: [9]f64,
}
// @brief Maximum canonical extent of sensor_msgs/msg/MagneticField in bytes.
// @details The inclusive bound is 236 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgMagneticField_Maximum_Wire_Bytes :: 236
// @brief Canonical codec identity of sensor_msgs/msg/MagneticField.
// @details Exact identity UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgMagneticField_Codec_Identity :: "UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b"
// @brief Original ROS type name for sensor_msgs/msg/MagneticField.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgMagneticField_Native_Type :: "sensor_msgs/msg/MagneticField"
// @brief Selected original native identity for sensor_msgs/msg/MagneticField.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
Ros2Sensor_msgsMsgMagneticField_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/msg/MagneticField.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Sensor_msgsMsgMagneticField :: proc() -> Ros2Sensor_msgsMsgMagneticField {
 v: Ros2Sensor_msgsMsgMagneticField
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_magnetic_field = Ros2Geometry_msgsMsgVector3{}
 v.field_magnetic_field_covariance = [9]f64{0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of sensor_msgs/msg/MagneticField.
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
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Sensor_msgsMsgMagneticField :: proc(v: ^Ros2Sensor_msgsMsgMagneticField, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_magnetic_field,w) { return false }
 for e in v.field_magnetic_field_covariance {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/msg/MagneticField.
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
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Sensor_msgsMsgMagneticField :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgMagneticField,bool) {
 v:=init_Ros2Sensor_msgsMsgMagneticField()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete sensor_msgs/msg/MagneticField value.
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
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Sensor_msgsMsgMagneticField :: proc(v: ^Ros2Sensor_msgsMsgMagneticField, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=236}
 if !write_Ros2Sensor_msgsMsgMagneticField(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=236}
 if !write_Ros2Sensor_msgsMsgMagneticField(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/MagneticField value.
// @details Require the complete 108..236-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Sensor_msgsMsgMagneticField :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgMagneticField,u32) {
 if len(bytes)<108 || len(bytes)>236 { return Ros2Sensor_msgsMsgMagneticField{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgMagneticField(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgMagneticField{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_srvs/srv/SetBool_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Request :: struct {
 // @brief std_srvs/srv/SetBool_Request.data: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
 field_data: bool,
}
// @brief Maximum canonical extent of std_srvs/srv/SetBool_Request in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Request_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of std_srvs/srv/SetBool_Request.
// @details Exact identity UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Request_Codec_Identity :: "UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910"
// @brief Original ROS type name for std_srvs/srv/SetBool_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Request_Native_Type :: "std_srvs/srv/SetBool_Request"
// @brief Selected original native identity for std_srvs/srv/SetBool_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Request_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/srv/SetBool_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Std_srvsSrvSetBool_Request :: proc() -> Ros2Std_srvsSrvSetBool_Request {
 v: Ros2Std_srvsSrvSetBool_Request
 v.field_data = false
 return v
}
// @brief Append every canonical field of std_srvs/srv/SetBool_Request.
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
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Std_srvsSrvSetBool_Request :: proc(v: ^Ros2Std_srvsSrvSetBool_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/srv/SetBool_Request.
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
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Std_srvsSrvSetBool_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvSetBool_Request,bool) {
 v:=init_Ros2Std_srvsSrvSetBool_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_data=bool(b)
 }
 return v,true
}
// @brief Encode one complete std_srvs/srv/SetBool_Request value.
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
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Std_srvsSrvSetBool_Request :: proc(v: ^Ros2Std_srvsSrvSetBool_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Std_srvsSrvSetBool_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Std_srvsSrvSetBool_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/srv/SetBool_Request value.
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
// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Std_srvsSrvSetBool_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvSetBool_Request,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Std_srvsSrvSetBool_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_srvsSrvSetBool_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_srvsSrvSetBool_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_srvs/srv/SetBool_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
// and is identified by UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Response :: struct {
 // @brief std_srvs/srv/SetBool_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
 field_success: bool,
 // @brief std_srvs/srv/SetBool_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of std_srvs/srv/SetBool_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of std_srvs/srv/SetBool_Response.
// @details Exact identity UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Response_Codec_Identity :: "UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4"
// @brief Original ROS type name for std_srvs/srv/SetBool_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Response_Native_Type :: "std_srvs/srv/SetBool_Response"
// @brief Selected original native identity for std_srvs/srv/SetBool_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvSetBool_Response_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/srv/SetBool_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Std_srvsSrvSetBool_Response :: proc() -> Ros2Std_srvsSrvSetBool_Response {
 v: Ros2Std_srvsSrvSetBool_Response
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of std_srvs/srv/SetBool_Response.
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
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Std_srvsSrvSetBool_Response :: proc(v: ^Ros2Std_srvsSrvSetBool_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/srv/SetBool_Response.
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
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Std_srvsSrvSetBool_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvSetBool_Response,bool) {
 v:=init_Ros2Std_srvsSrvSetBool_Response()
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
// @brief Encode one complete std_srvs/srv/SetBool_Response value.
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
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Std_srvsSrvSetBool_Response :: proc(v: ^Ros2Std_srvsSrvSetBool_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Std_srvsSrvSetBool_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Std_srvsSrvSetBool_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/srv/SetBool_Response value.
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
// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Std_srvsSrvSetBool_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvSetBool_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Std_srvsSrvSetBool_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_srvsSrvSetBool_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_srvsSrvSetBool_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_srvs/srv/Trigger_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Request :: struct {
}
// @brief Maximum canonical extent of std_srvs/srv/Trigger_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of std_srvs/srv/Trigger_Request.
// @details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Request_Codec_Identity :: "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
// @brief Original ROS type name for std_srvs/srv/Trigger_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Request_Native_Type :: "std_srvs/srv/Trigger_Request"
// @brief Selected original native identity for std_srvs/srv/Trigger_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Request_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/srv/Trigger_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Std_srvsSrvTrigger_Request :: proc() -> Ros2Std_srvsSrvTrigger_Request {
 v: Ros2Std_srvsSrvTrigger_Request
 return v
}
// @brief Append every canonical field of std_srvs/srv/Trigger_Request.
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
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Std_srvsSrvTrigger_Request :: proc(v: ^Ros2Std_srvsSrvTrigger_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Request.
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
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Std_srvsSrvTrigger_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Request,bool) {
 v:=init_Ros2Std_srvsSrvTrigger_Request()
 return v,true
}
// @brief Encode one complete std_srvs/srv/Trigger_Request value.
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
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Std_srvsSrvTrigger_Request :: proc(v: ^Ros2Std_srvsSrvTrigger_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Std_srvsSrvTrigger_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Std_srvsSrvTrigger_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/srv/Trigger_Request value.
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
// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Std_srvsSrvTrigger_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Std_srvsSrvTrigger_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_srvsSrvTrigger_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_srvsSrvTrigger_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_srvs/srv/Trigger_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
// and is identified by UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Response :: struct {
 // @brief std_srvs/srv/Trigger_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
 field_success: bool,
 // @brief std_srvs/srv/Trigger_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of std_srvs/srv/Trigger_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of std_srvs/srv/Trigger_Response.
// @details Exact identity UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Response_Codec_Identity :: "UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392"
// @brief Original ROS type name for std_srvs/srv/Trigger_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Response_Native_Type :: "std_srvs/srv/Trigger_Response"
// @brief Selected original native identity for std_srvs/srv/Trigger_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Std_srvsSrvTrigger_Response_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/srv/Trigger_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Std_srvsSrvTrigger_Response :: proc() -> Ros2Std_srvsSrvTrigger_Response {
 v: Ros2Std_srvsSrvTrigger_Response
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of std_srvs/srv/Trigger_Response.
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
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Std_srvsSrvTrigger_Response :: proc(v: ^Ros2Std_srvsSrvTrigger_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Response.
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
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Std_srvsSrvTrigger_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Response,bool) {
 v:=init_Ros2Std_srvsSrvTrigger_Response()
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
// @brief Encode one complete std_srvs/srv/Trigger_Response value.
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
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Std_srvsSrvTrigger_Response :: proc(v: ^Ros2Std_srvsSrvTrigger_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Std_srvsSrvTrigger_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Std_srvsSrvTrigger_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/srv/Trigger_Response value.
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
// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Std_srvsSrvTrigger_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Std_srvsSrvTrigger_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_srvsSrvTrigger_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_srvsSrvTrigger_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/action/Patrol_Goal value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
// and is identified by UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Goal :: struct {
 // @brief turtlebot3_msgs/action/Patrol_Goal.goal: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
 field_goal: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of turtlebot3_msgs/action/Patrol_Goal in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Goal_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of turtlebot3_msgs/action/Patrol_Goal.
// @details Exact identity UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Goal_Codec_Identity :: "UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f"
// @brief Original ROS type name for turtlebot3_msgs/action/Patrol_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Goal_Native_Type :: "turtlebot3_msgs/action/Patrol_Goal"
// @brief Selected original native identity for turtlebot3_msgs/action/Patrol_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/action/Patrol_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsActionPatrol_Goal :: proc() -> Ros2Turtlebot3_msgsActionPatrol_Goal {
 v: Ros2Turtlebot3_msgsActionPatrol_Goal
 v.field_goal = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/action/Patrol_Goal.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsActionPatrol_Goal :: proc(v: ^Ros2Turtlebot3_msgsActionPatrol_Goal, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_goal,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/action/Patrol_Goal.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsActionPatrol_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsActionPatrol_Goal,bool) {
 v:=init_Ros2Turtlebot3_msgsActionPatrol_Goal()
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_goal=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/action/Patrol_Goal value.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsActionPatrol_Goal :: proc(v: ^Ros2Turtlebot3_msgsActionPatrol_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Turtlebot3_msgsActionPatrol_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Turtlebot3_msgsActionPatrol_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/action/Patrol_Goal value.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsActionPatrol_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsActionPatrol_Goal,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Turtlebot3_msgsActionPatrol_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsActionPatrol_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsActionPatrol_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/action/Patrol_Result value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
// and is identified by UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Result :: struct {
 // @brief turtlebot3_msgs/action/Patrol_Result.result: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
 field_result: string,
}
// @brief Maximum canonical extent of turtlebot3_msgs/action/Patrol_Result in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Result_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of turtlebot3_msgs/action/Patrol_Result.
// @details Exact identity UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Result_Codec_Identity :: "UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3"
// @brief Original ROS type name for turtlebot3_msgs/action/Patrol_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Result_Native_Type :: "turtlebot3_msgs/action/Patrol_Result"
// @brief Selected original native identity for turtlebot3_msgs/action/Patrol_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Result_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/action/Patrol_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsActionPatrol_Result :: proc() -> Ros2Turtlebot3_msgsActionPatrol_Result {
 v: Ros2Turtlebot3_msgsActionPatrol_Result
 v.field_result = ""
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/action/Patrol_Result.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsActionPatrol_Result :: proc(v: ^Ros2Turtlebot3_msgsActionPatrol_Result, w: ^Writer) -> bool {
 if !put_string(w,v.field_result,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/action/Patrol_Result.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsActionPatrol_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsActionPatrol_Result,bool) {
 v:=init_Ros2Turtlebot3_msgsActionPatrol_Result()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_result=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/action/Patrol_Result value.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsActionPatrol_Result :: proc(v: ^Ros2Turtlebot3_msgsActionPatrol_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros2Turtlebot3_msgsActionPatrol_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros2Turtlebot3_msgsActionPatrol_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/action/Patrol_Result value.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsActionPatrol_Result :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsActionPatrol_Result,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros2Turtlebot3_msgsActionPatrol_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsActionPatrol_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsActionPatrol_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/action/Patrol_Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
// and is identified by UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Feedback :: struct {
 // @brief turtlebot3_msgs/action/Patrol_Feedback.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
 field_state: string,
}
// @brief Maximum canonical extent of turtlebot3_msgs/action/Patrol_Feedback in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Feedback_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of turtlebot3_msgs/action/Patrol_Feedback.
// @details Exact identity UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Feedback_Codec_Identity :: "UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e"
// @brief Original ROS type name for turtlebot3_msgs/action/Patrol_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Feedback_Native_Type :: "turtlebot3_msgs/action/Patrol_Feedback"
// @brief Selected original native identity for turtlebot3_msgs/action/Patrol_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsActionPatrol_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/action/Patrol_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsActionPatrol_Feedback :: proc() -> Ros2Turtlebot3_msgsActionPatrol_Feedback {
 v: Ros2Turtlebot3_msgsActionPatrol_Feedback
 v.field_state = ""
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/action/Patrol_Feedback.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsActionPatrol_Feedback :: proc(v: ^Ros2Turtlebot3_msgsActionPatrol_Feedback, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/action/Patrol_Feedback.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsActionPatrol_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsActionPatrol_Feedback,bool) {
 v:=init_Ros2Turtlebot3_msgsActionPatrol_Feedback()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/action/Patrol_Feedback value.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsActionPatrol_Feedback :: proc(v: ^Ros2Turtlebot3_msgsActionPatrol_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros2Turtlebot3_msgsActionPatrol_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros2Turtlebot3_msgsActionPatrol_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/action/Patrol_Feedback value.
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
// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsActionPatrol_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsActionPatrol_Feedback,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros2Turtlebot3_msgsActionPatrol_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsActionPatrol_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsActionPatrol_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/msg/SensorState value.
// @details All 11 declared fields are retained in source order. The canonical representation occupies 40..168 bytes
// and is identified by UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState :: struct {
 // @brief turtlebot3_msgs/msg/SensorState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief turtlebot3_msgs/msg/SensorState.bumper: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_bumper: u8,
 // @brief turtlebot3_msgs/msg/SensorState.cliff: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_cliff: f32,
 // @brief turtlebot3_msgs/msg/SensorState.sonar: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_sonar: f32,
 // @brief turtlebot3_msgs/msg/SensorState.illumination: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_illumination: f32,
 // @brief turtlebot3_msgs/msg/SensorState.led: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_led: u8,
 // @brief turtlebot3_msgs/msg/SensorState.button: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_button: u8,
 // @brief turtlebot3_msgs/msg/SensorState.torque: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_torque: bool,
 // @brief turtlebot3_msgs/msg/SensorState.left_encoder: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_left_encoder: i32,
 // @brief turtlebot3_msgs/msg/SensorState.right_encoder: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_right_encoder: i32,
 // @brief turtlebot3_msgs/msg/SensorState.battery: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
 field_battery: f32,
}
// @brief Maximum canonical extent of turtlebot3_msgs/msg/SensorState in bytes.
// @details The inclusive bound is 168 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_Maximum_Wire_Bytes :: 168
// @brief Canonical codec identity of turtlebot3_msgs/msg/SensorState.
// @details Exact identity UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_Codec_Identity :: "UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358"
// @brief Original ROS type name for turtlebot3_msgs/msg/SensorState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_Native_Type :: "turtlebot3_msgs/msg/SensorState"
// @brief Selected original native identity for turtlebot3_msgs/msg/SensorState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_Native_Identity :: ""
// @brief turtlebot3_msgs/msg/SensorState.BUMPER_FORWARD: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_BUMPER_FORWARD :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.BUMPER_BACKWARD: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_BUMPER_BACKWARD :: u8(2)
// @brief turtlebot3_msgs/msg/SensorState.CLIFF: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_CLIFF :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.SONAR: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_SONAR :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.ILLUMINATION: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_ILLUMINATION :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.BUTTON0: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_BUTTON0 :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.BUTTON1: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_BUTTON1 :: u8(2)
// @brief turtlebot3_msgs/msg/SensorState.ERROR_LEFT_MOTOR: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_ERROR_LEFT_MOTOR :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.ERROR_RIGHT_MOTOR: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_ERROR_RIGHT_MOTOR :: u8(2)
// @brief turtlebot3_msgs/msg/SensorState.TORQUE_ON: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_TORQUE_ON :: u8(1)
// @brief turtlebot3_msgs/msg/SensorState.TORQUE_OFF: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSensorState_TORQUE_OFF :: u8(2)
// @brief Construct the declared defaults of turtlebot3_msgs/msg/SensorState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsMsgSensorState :: proc() -> Ros2Turtlebot3_msgsMsgSensorState {
 v: Ros2Turtlebot3_msgsMsgSensorState
 v.field_header = Ros2Std_msgsMsgHeader{}
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
// @brief Append every canonical field of turtlebot3_msgs/msg/SensorState.
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
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsMsgSensorState :: proc(v: ^Ros2Turtlebot3_msgsMsgSensorState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
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
// @brief Read the ordered canonical fields of turtlebot3_msgs/msg/SensorState.
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
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsMsgSensorState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsMsgSensorState,bool) {
 v:=init_Ros2Turtlebot3_msgsMsgSensorState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
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
// @brief Encode one complete turtlebot3_msgs/msg/SensorState value.
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
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsMsgSensorState :: proc(v: ^Ros2Turtlebot3_msgsMsgSensorState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=168}
 if !write_Ros2Turtlebot3_msgsMsgSensorState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=168}
 if !write_Ros2Turtlebot3_msgsMsgSensorState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/msg/SensorState value.
// @details Require the complete 40..168-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsMsgSensorState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsMsgSensorState,u32) {
 if len(bytes)<40 || len(bytes)>168 { return Ros2Turtlebot3_msgsMsgSensorState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsMsgSensorState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsMsgSensorState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/msg/Sound value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound :: struct {
 // @brief turtlebot3_msgs/msg/Sound.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
 field_value: u8,
}
// @brief Maximum canonical extent of turtlebot3_msgs/msg/Sound in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of turtlebot3_msgs/msg/Sound.
// @details Exact identity UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_Codec_Identity :: "UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b"
// @brief Original ROS type name for turtlebot3_msgs/msg/Sound.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_Native_Type :: "turtlebot3_msgs/msg/Sound"
// @brief Selected original native identity for turtlebot3_msgs/msg/Sound.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_Native_Identity :: ""
// @brief turtlebot3_msgs/msg/Sound.OFF: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_OFF :: u8(0)
// @brief turtlebot3_msgs/msg/Sound.ON: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_ON :: u8(1)
// @brief turtlebot3_msgs/msg/Sound.LOW_BATTERY: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_LOW_BATTERY :: u8(2)
// @brief turtlebot3_msgs/msg/Sound.ERROR: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_ERROR :: u8(3)
// @brief turtlebot3_msgs/msg/Sound.BUTTON1: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_BUTTON1 :: u8(4)
// @brief turtlebot3_msgs/msg/Sound.BUTTON2: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgSound_BUTTON2 :: u8(5)
// @brief Construct the declared defaults of turtlebot3_msgs/msg/Sound.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsMsgSound :: proc() -> Ros2Turtlebot3_msgsMsgSound {
 v: Ros2Turtlebot3_msgsMsgSound
 v.field_value = 0
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/msg/Sound.
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
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsMsgSound :: proc(v: ^Ros2Turtlebot3_msgsMsgSound, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/msg/Sound.
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
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsMsgSound :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsMsgSound,bool) {
 v:=init_Ros2Turtlebot3_msgsMsgSound()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/msg/Sound value.
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
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsMsgSound :: proc(v: ^Ros2Turtlebot3_msgsMsgSound, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Turtlebot3_msgsMsgSound(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Turtlebot3_msgsMsgSound(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/msg/Sound value.
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
// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsMsgSound :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsMsgSound,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Turtlebot3_msgsMsgSound{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsMsgSound(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsMsgSound{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/msg/VersionInfo value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..780 bytes
// and is identified by UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgVersionInfo :: struct {
 // @brief turtlebot3_msgs/msg/VersionInfo.hardware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
 field_hardware: string,
 // @brief turtlebot3_msgs/msg/VersionInfo.firmware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
 field_firmware: string,
 // @brief turtlebot3_msgs/msg/VersionInfo.software: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
 field_software: string,
}
// @brief Maximum canonical extent of turtlebot3_msgs/msg/VersionInfo in bytes.
// @details The inclusive bound is 780 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgVersionInfo_Maximum_Wire_Bytes :: 780
// @brief Canonical codec identity of turtlebot3_msgs/msg/VersionInfo.
// @details Exact identity UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgVersionInfo_Codec_Identity :: "UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a"
// @brief Original ROS type name for turtlebot3_msgs/msg/VersionInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgVersionInfo_Native_Type :: "turtlebot3_msgs/msg/VersionInfo"
// @brief Selected original native identity for turtlebot3_msgs/msg/VersionInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsMsgVersionInfo_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/msg/VersionInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsMsgVersionInfo :: proc() -> Ros2Turtlebot3_msgsMsgVersionInfo {
 v: Ros2Turtlebot3_msgsMsgVersionInfo
 v.field_hardware = ""
 v.field_firmware = ""
 v.field_software = ""
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/msg/VersionInfo.
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
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsMsgVersionInfo :: proc(v: ^Ros2Turtlebot3_msgsMsgVersionInfo, w: ^Writer) -> bool {
 if !put_string(w,v.field_hardware,256) { return false }
 if !put_string(w,v.field_firmware,256) { return false }
 if !put_string(w,v.field_software,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/msg/VersionInfo.
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
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsMsgVersionInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsMsgVersionInfo,bool) {
 v:=init_Ros2Turtlebot3_msgsMsgVersionInfo()
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
// @brief Encode one complete turtlebot3_msgs/msg/VersionInfo value.
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
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsMsgVersionInfo :: proc(v: ^Ros2Turtlebot3_msgsMsgVersionInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=780}
 if !write_Ros2Turtlebot3_msgsMsgVersionInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=780}
 if !write_Ros2Turtlebot3_msgsMsgVersionInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/msg/VersionInfo value.
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
// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsMsgVersionInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsMsgVersionInfo,u32) {
 if len(bytes)<12 || len(bytes)>780 { return Ros2Turtlebot3_msgsMsgVersionInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsMsgVersionInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsMsgVersionInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/srv/Dqn_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and
// is identified by UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Request :: struct {
 // @brief turtlebot3_msgs/srv/Dqn_Request.action: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
 field_action: u8,
 // @brief turtlebot3_msgs/srv/Dqn_Request.init: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
 field_init: bool,
}
// @brief Maximum canonical extent of turtlebot3_msgs/srv/Dqn_Request in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Request_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of turtlebot3_msgs/srv/Dqn_Request.
// @details Exact identity UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Request_Codec_Identity :: "UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e"
// @brief Original ROS type name for turtlebot3_msgs/srv/Dqn_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Request_Native_Type :: "turtlebot3_msgs/srv/Dqn_Request"
// @brief Selected original native identity for turtlebot3_msgs/srv/Dqn_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Request_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/srv/Dqn_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsSrvDqn_Request :: proc() -> Ros2Turtlebot3_msgsSrvDqn_Request {
 v: Ros2Turtlebot3_msgsSrvDqn_Request
 v.field_action = 0
 v.field_init = false
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/srv/Dqn_Request.
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
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsSrvDqn_Request :: proc(v: ^Ros2Turtlebot3_msgsSrvDqn_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_action),1) { return false }
 if !put_bool(w,v.field_init) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Dqn_Request.
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
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsSrvDqn_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvDqn_Request,bool) {
 v:=init_Ros2Turtlebot3_msgsSrvDqn_Request()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_action=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_init=bool(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/srv/Dqn_Request value.
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
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsSrvDqn_Request :: proc(v: ^Ros2Turtlebot3_msgsSrvDqn_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros2Turtlebot3_msgsSrvDqn_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros2Turtlebot3_msgsSrvDqn_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/srv/Dqn_Request value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsSrvDqn_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvDqn_Request,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros2Turtlebot3_msgsSrvDqn_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsSrvDqn_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsSrvDqn_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/srv/Dqn_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes
// and is identified by UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Response :: struct {
 // @brief turtlebot3_msgs/srv/Dqn_Response.state: float32; 0..128 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
 field_state: []f32,
 // @brief turtlebot3_msgs/srv/Dqn_Response.reward: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
 field_reward: f32,
 // @brief turtlebot3_msgs/srv/Dqn_Response.done: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
 field_done: bool,
}
// @brief Maximum canonical extent of turtlebot3_msgs/srv/Dqn_Response in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Response_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of turtlebot3_msgs/srv/Dqn_Response.
// @details Exact identity UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Response_Codec_Identity :: "UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e"
// @brief Original ROS type name for turtlebot3_msgs/srv/Dqn_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Response_Native_Type :: "turtlebot3_msgs/srv/Dqn_Response"
// @brief Selected original native identity for turtlebot3_msgs/srv/Dqn_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvDqn_Response_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/srv/Dqn_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsSrvDqn_Response :: proc() -> Ros2Turtlebot3_msgsSrvDqn_Response {
 v: Ros2Turtlebot3_msgsSrvDqn_Response
 v.field_state = nil
 v.field_reward = 0
 v.field_done = false
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/srv/Dqn_Response.
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
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsSrvDqn_Response :: proc(v: ^Ros2Turtlebot3_msgsSrvDqn_Response, w: ^Writer) -> bool {
 if len(v.field_state)>128 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_state)),4) { return false }
 for e in v.field_state {
 if !put_float32(w,e) { return false }
 }
 if !put_float32(w,v.field_reward) { return false }
 if !put_bool(w,v.field_done) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Dqn_Response.
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
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsSrvDqn_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvDqn_Response,bool) {
 v:=init_Ros2Turtlebot3_msgsSrvDqn_Response()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>128 { r.code=22; return v,false }
 v.field_state=make([]f32,int(n),allocator)
 }
 for &e in v.field_state {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_reward=f32(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_done=bool(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/srv/Dqn_Response value.
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
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsSrvDqn_Response :: proc(v: ^Ros2Turtlebot3_msgsSrvDqn_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros2Turtlebot3_msgsSrvDqn_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros2Turtlebot3_msgsSrvDqn_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/srv/Dqn_Response value.
// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsSrvDqn_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvDqn_Response,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros2Turtlebot3_msgsSrvDqn_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsSrvDqn_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsSrvDqn_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/srv/Goal_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Request :: struct {
}
// @brief Maximum canonical extent of turtlebot3_msgs/srv/Goal_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of turtlebot3_msgs/srv/Goal_Request.
// @details Exact identity UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Request_Codec_Identity :: "UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded"
// @brief Original ROS type name for turtlebot3_msgs/srv/Goal_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Request_Native_Type :: "turtlebot3_msgs/srv/Goal_Request"
// @brief Selected original native identity for turtlebot3_msgs/srv/Goal_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Request_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/srv/Goal_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsSrvGoal_Request :: proc() -> Ros2Turtlebot3_msgsSrvGoal_Request {
 v: Ros2Turtlebot3_msgsSrvGoal_Request
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/srv/Goal_Request.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsSrvGoal_Request :: proc(v: ^Ros2Turtlebot3_msgsSrvGoal_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Goal_Request.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsSrvGoal_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvGoal_Request,bool) {
 v:=init_Ros2Turtlebot3_msgsSrvGoal_Request()
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/srv/Goal_Request value.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsSrvGoal_Request :: proc(v: ^Ros2Turtlebot3_msgsSrvGoal_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Turtlebot3_msgsSrvGoal_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Turtlebot3_msgsSrvGoal_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/srv/Goal_Request value.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsSrvGoal_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvGoal_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Turtlebot3_msgsSrvGoal_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsSrvGoal_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsSrvGoal_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/srv/Goal_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and
// is identified by UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Response :: struct {
 // @brief turtlebot3_msgs/srv/Goal_Response.pose_x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
 field_pose_x: f32,
 // @brief turtlebot3_msgs/srv/Goal_Response.pose_y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
 field_pose_y: f32,
 // @brief turtlebot3_msgs/srv/Goal_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
 field_success: bool,
}
// @brief Maximum canonical extent of turtlebot3_msgs/srv/Goal_Response in bytes.
// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Response_Maximum_Wire_Bytes :: 9
// @brief Canonical codec identity of turtlebot3_msgs/srv/Goal_Response.
// @details Exact identity UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Response_Codec_Identity :: "UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990"
// @brief Original ROS type name for turtlebot3_msgs/srv/Goal_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Response_Native_Type :: "turtlebot3_msgs/srv/Goal_Response"
// @brief Selected original native identity for turtlebot3_msgs/srv/Goal_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvGoal_Response_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/srv/Goal_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsSrvGoal_Response :: proc() -> Ros2Turtlebot3_msgsSrvGoal_Response {
 v: Ros2Turtlebot3_msgsSrvGoal_Response
 v.field_pose_x = 0
 v.field_pose_y = 0
 v.field_success = false
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/srv/Goal_Response.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsSrvGoal_Response :: proc(v: ^Ros2Turtlebot3_msgsSrvGoal_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_pose_x) { return false }
 if !put_float32(w,v.field_pose_y) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Goal_Response.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsSrvGoal_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvGoal_Response,bool) {
 v:=init_Ros2Turtlebot3_msgsSrvGoal_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pose_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_pose_y=f32(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/srv/Goal_Response value.
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
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsSrvGoal_Response :: proc(v: ^Ros2Turtlebot3_msgsSrvGoal_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9}
 if !write_Ros2Turtlebot3_msgsSrvGoal_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9}
 if !write_Ros2Turtlebot3_msgsSrvGoal_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/srv/Goal_Response value.
// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsSrvGoal_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvGoal_Response,u32) {
 if len(bytes)<9 || len(bytes)>9 { return Ros2Turtlebot3_msgsSrvGoal_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsSrvGoal_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsSrvGoal_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/srv/Sound_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Request :: struct {
 // @brief turtlebot3_msgs/srv/Sound_Request.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
 field_value: u8,
}
// @brief Maximum canonical extent of turtlebot3_msgs/srv/Sound_Request in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Request_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of turtlebot3_msgs/srv/Sound_Request.
// @details Exact identity UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Request_Codec_Identity :: "UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a"
// @brief Original ROS type name for turtlebot3_msgs/srv/Sound_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Request_Native_Type :: "turtlebot3_msgs/srv/Sound_Request"
// @brief Selected original native identity for turtlebot3_msgs/srv/Sound_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Request_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/srv/Sound_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsSrvSound_Request :: proc() -> Ros2Turtlebot3_msgsSrvSound_Request {
 v: Ros2Turtlebot3_msgsSrvSound_Request
 v.field_value = 0
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/srv/Sound_Request.
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
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsSrvSound_Request :: proc(v: ^Ros2Turtlebot3_msgsSrvSound_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Sound_Request.
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
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsSrvSound_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvSound_Request,bool) {
 v:=init_Ros2Turtlebot3_msgsSrvSound_Request()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete turtlebot3_msgs/srv/Sound_Request value.
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
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsSrvSound_Request :: proc(v: ^Ros2Turtlebot3_msgsSrvSound_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Turtlebot3_msgsSrvSound_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Turtlebot3_msgsSrvSound_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/srv/Sound_Request value.
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
// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsSrvSound_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvSound_Request,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Turtlebot3_msgsSrvSound_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsSrvSound_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsSrvSound_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 turtlebot3_msgs/srv/Sound_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
// and is identified by UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Response :: struct {
 // @brief turtlebot3_msgs/srv/Sound_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
 field_success: bool,
 // @brief turtlebot3_msgs/srv/Sound_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of turtlebot3_msgs/srv/Sound_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of turtlebot3_msgs/srv/Sound_Response.
// @details Exact identity UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Response_Codec_Identity :: "UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e"
// @brief Original ROS type name for turtlebot3_msgs/srv/Sound_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Response_Native_Type :: "turtlebot3_msgs/srv/Sound_Response"
// @brief Selected original native identity for turtlebot3_msgs/srv/Sound_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
Ros2Turtlebot3_msgsSrvSound_Response_Native_Identity :: ""
// @brief Construct the declared defaults of turtlebot3_msgs/srv/Sound_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
init_Ros2Turtlebot3_msgsSrvSound_Response :: proc() -> Ros2Turtlebot3_msgsSrvSound_Response {
 v: Ros2Turtlebot3_msgsSrvSound_Response
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of turtlebot3_msgs/srv/Sound_Response.
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
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
write_Ros2Turtlebot3_msgsSrvSound_Response :: proc(v: ^Ros2Turtlebot3_msgsSrvSound_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Sound_Response.
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
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
read_Ros2Turtlebot3_msgsSrvSound_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvSound_Response,bool) {
 v:=init_Ros2Turtlebot3_msgsSrvSound_Response()
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
// @brief Encode one complete turtlebot3_msgs/srv/Sound_Response value.
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
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
encode_Ros2Turtlebot3_msgsSrvSound_Response :: proc(v: ^Ros2Turtlebot3_msgsSrvSound_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Turtlebot3_msgsSrvSound_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Turtlebot3_msgsSrvSound_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete turtlebot3_msgs/srv/Sound_Response value.
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
// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/odin/API.md
decode_Ros2Turtlebot3_msgsSrvSound_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Turtlebot3_msgsSrvSound_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Turtlebot3_msgsSrvSound_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Turtlebot3_msgsSrvSound_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Turtlebot3_msgsSrvSound_Response{},reader.code }
 return value,0
}
