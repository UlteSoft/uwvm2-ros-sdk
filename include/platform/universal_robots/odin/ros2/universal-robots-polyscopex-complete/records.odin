// @file records.odin
// @brief Complete universal_robots values and adapters for the selected original interface catalog.
// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
// roles require the separately admitted SDK owner.
// @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
// @see document/platform/universal_robots/en_US/README.md

package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 builtin_interfaces/msg/Time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime :: struct {
 // @brief builtin_interfaces/msg/Time.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Time.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Time.
// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime_Codec_Identity :: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
// @brief Original ROS type name for builtin_interfaces/msg/Time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime_Native_Type :: "builtin_interfaces/msg/Time"
// @brief Selected original native identity for builtin_interfaces/msg/Time.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Builtin_interfacesMsgTime :: proc(v: ^Ros2Builtin_interfacesMsgTime, w: ^Writer) -> bool {
 if v.field_nanosec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nanosec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
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
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Builtin_interfacesMsgTime :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgTime{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgTime(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgTime{},reader.code }
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
// @brief Complete ROS 2 geometry_msgs/msg/Twist value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwist :: struct {
 // @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
 field_linear: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
 field_angular: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Twist in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwist_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/msg/Twist.
// @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwist_Codec_Identity :: "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
// @brief Original ROS type name for geometry_msgs/msg/Twist.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwist_Native_Type :: "geometry_msgs/msg/Twist"
// @brief Selected original native identity for geometry_msgs/msg/Twist.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwist_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Twist.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgTwist :: proc(v: ^Ros2Geometry_msgsMsgTwist, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_linear,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Twist.
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
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwist; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgTwist :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwist,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Geometry_msgsMsgTwist{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTwist(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTwist{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/Header value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes and
// is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader :: struct {
 // @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
 // @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of std_msgs/msg/Header.
// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
// @brief Original ROS type name for std_msgs/msg/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Native_Type :: "std_msgs/msg/Header"
// @brief Selected original native identity for std_msgs/msg/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_msgsMsgHeader :: proc(v: ^Ros2Std_msgsMsgHeader, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/Header.
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
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Std_msgsMsgHeader :: proc(v: ^Ros2Std_msgsMsgHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Std_msgsMsgHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Std_msgsMsgHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/Header value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_msgsMsgHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgHeader,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Std_msgsMsgHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/String value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes and
// is identified by UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgString :: struct {
 // @brief std_msgs/msg/String.data: string; each string is 0..1024 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
 field_data: string,
}
// @brief Maximum canonical extent of std_msgs/msg/String in bytes.
// @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgString_Maximum_Wire_Bytes :: 1028
// @brief Canonical codec identity of std_msgs/msg/String.
// @details Exact identity UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgString_Codec_Identity :: "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5"
// @brief Original ROS type name for std_msgs/msg/String.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgString_Native_Type :: "std_msgs/msg/String"
// @brief Selected original native identity for std_msgs/msg/String.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgString_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/String.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Std_msgsMsgString :: proc() -> Ros2Std_msgsMsgString {
 v: Ros2Std_msgsMsgString
 v.field_data = ""
 return v
}
// @brief Append every canonical field of std_msgs/msg/String.
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
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_msgsMsgString :: proc(v: ^Ros2Std_msgsMsgString, w: ^Writer) -> bool {
 if !put_string(w,v.field_data,1024) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/String.
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
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Std_msgsMsgString :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgString,bool) {
 v:=init_Ros2Std_msgsMsgString()
 {
 b,ok:=get_string(r,1024); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete std_msgs/msg/String value.
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
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Std_msgsMsgString :: proc(v: ^Ros2Std_msgsMsgString, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1028}
 if !write_Ros2Std_msgsMsgString(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1028}
 if !write_Ros2Std_msgsMsgString(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/String value.
// @details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_msgsMsgString; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_msgsMsgString :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgString,u32) {
 if len(bytes)<4 || len(bytes)>1028 { return Ros2Std_msgsMsgString{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgString(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgString{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/RobotMode value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
// is identified by UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode :: struct {
 // @brief urinterfaces/msg/RobotMode.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/RobotMode.data: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
 field_data: i8,
}
// @brief Maximum canonical extent of urinterfaces/msg/RobotMode in bytes.
// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_Maximum_Wire_Bytes :: 141
// @brief Canonical codec identity of urinterfaces/msg/RobotMode.
// @details Exact identity UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_Codec_Identity :: "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea"
// @brief Original ROS type name for urinterfaces/msg/RobotMode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_Native_Type :: "urinterfaces/msg/RobotMode"
// @brief Selected original native identity for urinterfaces/msg/RobotMode.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_Native_Identity :: ""
// @brief urinterfaces/msg/RobotMode.DISCONNECTED: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_DISCONNECTED :: i8(0)
// @brief urinterfaces/msg/RobotMode.CONFIRM_SAFETY: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_CONFIRM_SAFETY :: i8(1)
// @brief urinterfaces/msg/RobotMode.BOOTING: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_BOOTING :: i8(2)
// @brief urinterfaces/msg/RobotMode.POWER_OFF: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_POWER_OFF :: i8(3)
// @brief urinterfaces/msg/RobotMode.POWER_ON: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_POWER_ON :: i8(4)
// @brief urinterfaces/msg/RobotMode.IDLE: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_IDLE :: i8(5)
// @brief urinterfaces/msg/RobotMode.BACKDRIVE: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_BACKDRIVE :: i8(6)
// @brief urinterfaces/msg/RobotMode.RUNNING: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_RUNNING :: i8(7)
// @brief urinterfaces/msg/RobotMode.UPDATING_FIRMWARE: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRobotMode_UPDATING_FIRMWARE :: i8(8)
// @brief Construct the declared defaults of urinterfaces/msg/RobotMode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgRobotMode :: proc() -> Ros2UrinterfacesMsgRobotMode {
 v: Ros2UrinterfacesMsgRobotMode
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/RobotMode.
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
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgRobotMode :: proc(v: ^Ros2UrinterfacesMsgRobotMode, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_data),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/RobotMode.
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
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgRobotMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgRobotMode,bool) {
 v:=init_Ros2UrinterfacesMsgRobotMode()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_data=i8(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/RobotMode value.
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
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgRobotMode :: proc(v: ^Ros2UrinterfacesMsgRobotMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=141}
 if !write_Ros2UrinterfacesMsgRobotMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=141}
 if !write_Ros2UrinterfacesMsgRobotMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/RobotMode value.
// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgRobotMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgRobotMode,u32) {
 if len(bytes)<13 || len(bytes)>141 { return Ros2UrinterfacesMsgRobotMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgRobotMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgRobotMode{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/action/SetMode_Goal value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 15..143 bytes and
// is identified by UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Goal :: struct {
 // @brief urinterfaces/action/SetMode_Goal.target_robot_mode: urinterfaces/msg/RobotMode.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_target_robot_mode: Ros2UrinterfacesMsgRobotMode,
 // @brief urinterfaces/action/SetMode_Goal.stop_program: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_stop_program: bool,
 // @brief urinterfaces/action/SetMode_Goal.play_program: bool.
 // @details Schema default False. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_play_program: bool,
}
// @brief Maximum canonical extent of urinterfaces/action/SetMode_Goal in bytes.
// @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Goal_Maximum_Wire_Bytes :: 143
// @brief Canonical codec identity of urinterfaces/action/SetMode_Goal.
// @details Exact identity UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Goal_Codec_Identity :: "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09"
// @brief Original ROS type name for urinterfaces/action/SetMode_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Goal_Native_Type :: "urinterfaces/action/SetMode_Goal"
// @brief Selected original native identity for urinterfaces/action/SetMode_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/action/SetMode_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesActionSetMode_Goal :: proc() -> Ros2UrinterfacesActionSetMode_Goal {
 v: Ros2UrinterfacesActionSetMode_Goal
 v.field_target_robot_mode = Ros2UrinterfacesMsgRobotMode{}
 v.field_stop_program = false
 v.field_play_program = false
 return v
}
// @brief Append every canonical field of urinterfaces/action/SetMode_Goal.
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
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesActionSetMode_Goal :: proc(v: ^Ros2UrinterfacesActionSetMode_Goal, w: ^Writer) -> bool {
 if !write_Ros2UrinterfacesMsgRobotMode(&v.field_target_robot_mode,w) { return false }
 if !put_bool(w,v.field_stop_program) { return false }
 if !put_bool(w,v.field_play_program) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/action/SetMode_Goal.
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
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesActionSetMode_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesActionSetMode_Goal,bool) {
 v:=init_Ros2UrinterfacesActionSetMode_Goal()
 {
 b,ok:=read_Ros2UrinterfacesMsgRobotMode(r,allocator); if !ok { return v,false }
 v.field_target_robot_mode=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_stop_program=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_play_program=bool(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/action/SetMode_Goal value.
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
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesActionSetMode_Goal :: proc(v: ^Ros2UrinterfacesActionSetMode_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=143}
 if !write_Ros2UrinterfacesActionSetMode_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=143}
 if !write_Ros2UrinterfacesActionSetMode_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/action/SetMode_Goal value.
// @details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesActionSetMode_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesActionSetMode_Goal,u32) {
 if len(bytes)<15 || len(bytes)>143 { return Ros2UrinterfacesActionSetMode_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesActionSetMode_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesActionSetMode_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/action/SetMode_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Result :: struct {
 // @brief urinterfaces/action/SetMode_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief urinterfaces/action/SetMode_Result.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of urinterfaces/action/SetMode_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of urinterfaces/action/SetMode_Result.
// @details Exact identity UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Result_Codec_Identity :: "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7"
// @brief Original ROS type name for urinterfaces/action/SetMode_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Result_Native_Type :: "urinterfaces/action/SetMode_Result"
// @brief Selected original native identity for urinterfaces/action/SetMode_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Result_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/action/SetMode_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesActionSetMode_Result :: proc() -> Ros2UrinterfacesActionSetMode_Result {
 v: Ros2UrinterfacesActionSetMode_Result
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of urinterfaces/action/SetMode_Result.
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
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesActionSetMode_Result :: proc(v: ^Ros2UrinterfacesActionSetMode_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/action/SetMode_Result.
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
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesActionSetMode_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesActionSetMode_Result,bool) {
 v:=init_Ros2UrinterfacesActionSetMode_Result()
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
// @brief Encode one complete urinterfaces/action/SetMode_Result value.
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
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesActionSetMode_Result :: proc(v: ^Ros2UrinterfacesActionSetMode_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2UrinterfacesActionSetMode_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2UrinterfacesActionSetMode_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/action/SetMode_Result value.
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
// @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesActionSetMode_Result :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesActionSetMode_Result,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2UrinterfacesActionSetMode_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesActionSetMode_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesActionSetMode_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/action/SetMode_Feedback value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
// identified by UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Feedback :: struct {
 // @brief urinterfaces/action/SetMode_Feedback.current_robot_mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_robot_mode: i8,
 // @brief urinterfaces/action/SetMode_Feedback.current_safety_mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_safety_mode: i8,
}
// @brief Maximum canonical extent of urinterfaces/action/SetMode_Feedback in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Feedback_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of urinterfaces/action/SetMode_Feedback.
// @details Exact identity UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Feedback_Codec_Identity :: "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537"
// @brief Original ROS type name for urinterfaces/action/SetMode_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Feedback_Native_Type :: "urinterfaces/action/SetMode_Feedback"
// @brief Selected original native identity for urinterfaces/action/SetMode_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesActionSetMode_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/action/SetMode_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesActionSetMode_Feedback :: proc() -> Ros2UrinterfacesActionSetMode_Feedback {
 v: Ros2UrinterfacesActionSetMode_Feedback
 v.field_current_robot_mode = 0
 v.field_current_safety_mode = 0
 return v
}
// @brief Append every canonical field of urinterfaces/action/SetMode_Feedback.
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
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesActionSetMode_Feedback :: proc(v: ^Ros2UrinterfacesActionSetMode_Feedback, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_current_robot_mode),1) { return false }
 if !put_integer(w,u64(v.field_current_safety_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/action/SetMode_Feedback.
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
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesActionSetMode_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesActionSetMode_Feedback,bool) {
 v:=init_Ros2UrinterfacesActionSetMode_Feedback()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_current_robot_mode=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_current_safety_mode=i8(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/action/SetMode_Feedback value.
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
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesActionSetMode_Feedback :: proc(v: ^Ros2UrinterfacesActionSetMode_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros2UrinterfacesActionSetMode_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros2UrinterfacesActionSetMode_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/action/SetMode_Feedback value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesActionSetMode_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesActionSetMode_Feedback,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros2UrinterfacesActionSetMode_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesActionSetMode_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesActionSetMode_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/ActiveTCP value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..400 bytes and
// is identified by UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgActiveTCP :: struct {
 // @brief urinterfaces/msg/ActiveTCP.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/ActiveTCP.data: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
 field_data: string,
}
// @brief Maximum canonical extent of urinterfaces/msg/ActiveTCP in bytes.
// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgActiveTCP_Maximum_Wire_Bytes :: 400
// @brief Canonical codec identity of urinterfaces/msg/ActiveTCP.
// @details Exact identity UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgActiveTCP_Codec_Identity :: "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae"
// @brief Original ROS type name for urinterfaces/msg/ActiveTCP.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgActiveTCP_Native_Type :: "urinterfaces/msg/ActiveTCP"
// @brief Selected original native identity for urinterfaces/msg/ActiveTCP.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgActiveTCP_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/ActiveTCP.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgActiveTCP :: proc() -> Ros2UrinterfacesMsgActiveTCP {
 v: Ros2UrinterfacesMsgActiveTCP
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = ""
 return v
}
// @brief Append every canonical field of urinterfaces/msg/ActiveTCP.
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
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgActiveTCP :: proc(v: ^Ros2UrinterfacesMsgActiveTCP, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_data,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/ActiveTCP.
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
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgActiveTCP :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgActiveTCP,bool) {
 v:=init_Ros2UrinterfacesMsgActiveTCP()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/ActiveTCP value.
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
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgActiveTCP :: proc(v: ^Ros2UrinterfacesMsgActiveTCP, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=400}
 if !write_Ros2UrinterfacesMsgActiveTCP(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=400}
 if !write_Ros2UrinterfacesMsgActiveTCP(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/ActiveTCP value.
// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgActiveTCP :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgActiveTCP,u32) {
 if len(bytes)<16 || len(bytes)>400 { return Ros2UrinterfacesMsgActiveTCP{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgActiveTCP(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgActiveTCP{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/Analog value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
// identified by UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog :: struct {
 // @brief urinterfaces/msg/Analog.pin: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
 field_pin: u8,
 // @brief urinterfaces/msg/Analog.domain: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
 field_domain: u8,
 // @brief urinterfaces/msg/Analog.value: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
 field_value: f32,
}
// @brief Maximum canonical extent of urinterfaces/msg/Analog in bytes.
// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog_Maximum_Wire_Bytes :: 6
// @brief Canonical codec identity of urinterfaces/msg/Analog.
// @details Exact identity UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog_Codec_Identity :: "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b"
// @brief Original ROS type name for urinterfaces/msg/Analog.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog_Native_Type :: "urinterfaces/msg/Analog"
// @brief Selected original native identity for urinterfaces/msg/Analog.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog_Native_Identity :: ""
// @brief urinterfaces/msg/Analog.CURRENT: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog_CURRENT :: u8(0)
// @brief urinterfaces/msg/Analog.VOLTAGE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalog_VOLTAGE :: u8(1)
// @brief Construct the declared defaults of urinterfaces/msg/Analog.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgAnalog :: proc() -> Ros2UrinterfacesMsgAnalog {
 v: Ros2UrinterfacesMsgAnalog
 v.field_pin = 0
 v.field_domain = 0
 v.field_value = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/Analog.
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
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgAnalog :: proc(v: ^Ros2UrinterfacesMsgAnalog, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pin),1) { return false }
 if !put_integer(w,u64(v.field_domain),1) { return false }
 if !put_float32(w,v.field_value) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/Analog.
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
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgAnalog :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalog,bool) {
 v:=init_Ros2UrinterfacesMsgAnalog()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_domain=u8(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_value=f32(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/Analog value.
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
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgAnalog :: proc(v: ^Ros2UrinterfacesMsgAnalog, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=6}
 if !write_Ros2UrinterfacesMsgAnalog(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=6}
 if !write_Ros2UrinterfacesMsgAnalog(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/Analog value.
// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgAnalog; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgAnalog :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalog,u32) {
 if len(bytes)<6 || len(bytes)>6 { return Ros2UrinterfacesMsgAnalog{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgAnalog(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgAnalog{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/AnalogIO value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..200 bytes and
// is identified by UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIO :: struct {
 // @brief urinterfaces/msg/AnalogIO.analog_inputs: urinterfaces/msg/Analog; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
 field_analog_inputs: []Ros2UrinterfacesMsgAnalog,
 // @brief urinterfaces/msg/AnalogIO.analog_outputs: urinterfaces/msg/Analog; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
 field_analog_outputs: []Ros2UrinterfacesMsgAnalog,
}
// @brief Maximum canonical extent of urinterfaces/msg/AnalogIO in bytes.
// @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIO_Maximum_Wire_Bytes :: 200
// @brief Canonical codec identity of urinterfaces/msg/AnalogIO.
// @details Exact identity UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIO_Codec_Identity :: "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c"
// @brief Original ROS type name for urinterfaces/msg/AnalogIO.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIO_Native_Type :: "urinterfaces/msg/AnalogIO"
// @brief Selected original native identity for urinterfaces/msg/AnalogIO.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIO_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/AnalogIO.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgAnalogIO :: proc() -> Ros2UrinterfacesMsgAnalogIO {
 v: Ros2UrinterfacesMsgAnalogIO
 v.field_analog_inputs = nil
 v.field_analog_outputs = nil
 return v
}
// @brief Append every canonical field of urinterfaces/msg/AnalogIO.
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
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgAnalogIO :: proc(v: ^Ros2UrinterfacesMsgAnalogIO, w: ^Writer) -> bool {
 if len(v.field_analog_inputs)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_analog_inputs)),4) { return false }
 for e in v.field_analog_inputs {
 item:=e
 if !write_Ros2UrinterfacesMsgAnalog(&item,w) { return false }
 }
 if len(v.field_analog_outputs)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_analog_outputs)),4) { return false }
 for e in v.field_analog_outputs {
 item:=e
 if !write_Ros2UrinterfacesMsgAnalog(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/AnalogIO.
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
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgAnalogIO :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalogIO,bool) {
 v:=init_Ros2UrinterfacesMsgAnalogIO()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_analog_inputs=make([]Ros2UrinterfacesMsgAnalog,int(n),allocator)
 }
 for &e in v.field_analog_inputs {
 {
 b,ok:=read_Ros2UrinterfacesMsgAnalog(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_analog_outputs=make([]Ros2UrinterfacesMsgAnalog,int(n),allocator)
 }
 for &e in v.field_analog_outputs {
 {
 b,ok:=read_Ros2UrinterfacesMsgAnalog(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/AnalogIO value.
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
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgAnalogIO :: proc(v: ^Ros2UrinterfacesMsgAnalogIO, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=200}
 if !write_Ros2UrinterfacesMsgAnalogIO(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=200}
 if !write_Ros2UrinterfacesMsgAnalogIO(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/AnalogIO value.
// @details Require the complete 8..200-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgAnalogIO :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalogIO,u32) {
 if len(bytes)<8 || len(bytes)>200 { return Ros2UrinterfacesMsgAnalogIO{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgAnalogIO(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgAnalogIO{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/AnalogIOStateStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..340 bytes and
// is identified by UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIOStateStamped :: struct {
 // @brief urinterfaces/msg/AnalogIOStateStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/AnalogIOStateStamped.io_state: urinterfaces/msg/AnalogIO.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
 field_io_state: Ros2UrinterfacesMsgAnalogIO,
}
// @brief Maximum canonical extent of urinterfaces/msg/AnalogIOStateStamped in bytes.
// @details The inclusive bound is 340 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIOStateStamped_Maximum_Wire_Bytes :: 340
// @brief Canonical codec identity of urinterfaces/msg/AnalogIOStateStamped.
// @details Exact identity UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIOStateStamped_Codec_Identity :: "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89"
// @brief Original ROS type name for urinterfaces/msg/AnalogIOStateStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIOStateStamped_Native_Type :: "urinterfaces/msg/AnalogIOStateStamped"
// @brief Selected original native identity for urinterfaces/msg/AnalogIOStateStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogIOStateStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/AnalogIOStateStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgAnalogIOStateStamped :: proc() -> Ros2UrinterfacesMsgAnalogIOStateStamped {
 v: Ros2UrinterfacesMsgAnalogIOStateStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_io_state = Ros2UrinterfacesMsgAnalogIO{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/AnalogIOStateStamped.
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
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgAnalogIOStateStamped :: proc(v: ^Ros2UrinterfacesMsgAnalogIOStateStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2UrinterfacesMsgAnalogIO(&v.field_io_state,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/AnalogIOStateStamped.
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
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgAnalogIOStateStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalogIOStateStamped,bool) {
 v:=init_Ros2UrinterfacesMsgAnalogIOStateStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2UrinterfacesMsgAnalogIO(r,allocator); if !ok { return v,false }
 v.field_io_state=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/AnalogIOStateStamped value.
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
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgAnalogIOStateStamped :: proc(v: ^Ros2UrinterfacesMsgAnalogIOStateStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=340}
 if !write_Ros2UrinterfacesMsgAnalogIOStateStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=340}
 if !write_Ros2UrinterfacesMsgAnalogIOStateStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/AnalogIOStateStamped value.
// @details Require the complete 20..340-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgAnalogIOStateStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalogIOStateStamped,u32) {
 if len(bytes)<20 || len(bytes)>340 { return Ros2UrinterfacesMsgAnalogIOStateStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgAnalogIOStateStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgAnalogIOStateStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/AnalogStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 18..146 bytes and
// is identified by UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogStamped :: struct {
 // @brief urinterfaces/msg/AnalogStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/AnalogStamped.data: urinterfaces/msg/Analog.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
 field_data: Ros2UrinterfacesMsgAnalog,
}
// @brief Maximum canonical extent of urinterfaces/msg/AnalogStamped in bytes.
// @details The inclusive bound is 146 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogStamped_Maximum_Wire_Bytes :: 146
// @brief Canonical codec identity of urinterfaces/msg/AnalogStamped.
// @details Exact identity UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogStamped_Codec_Identity :: "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c"
// @brief Original ROS type name for urinterfaces/msg/AnalogStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogStamped_Native_Type :: "urinterfaces/msg/AnalogStamped"
// @brief Selected original native identity for urinterfaces/msg/AnalogStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgAnalogStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/AnalogStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgAnalogStamped :: proc() -> Ros2UrinterfacesMsgAnalogStamped {
 v: Ros2UrinterfacesMsgAnalogStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = Ros2UrinterfacesMsgAnalog{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/AnalogStamped.
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
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgAnalogStamped :: proc(v: ^Ros2UrinterfacesMsgAnalogStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2UrinterfacesMsgAnalog(&v.field_data,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/AnalogStamped.
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
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgAnalogStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalogStamped,bool) {
 v:=init_Ros2UrinterfacesMsgAnalogStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2UrinterfacesMsgAnalog(r,allocator); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/AnalogStamped value.
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
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgAnalogStamped :: proc(v: ^Ros2UrinterfacesMsgAnalogStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=146}
 if !write_Ros2UrinterfacesMsgAnalogStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=146}
 if !write_Ros2UrinterfacesMsgAnalogStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/AnalogStamped value.
// @details Require the complete 18..146-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgAnalogStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgAnalogStamped,u32) {
 if len(bytes)<18 || len(bytes)>146 { return Ros2UrinterfacesMsgAnalogStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgAnalogStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgAnalogStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/BoolStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
// is identified by UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgBoolStamped :: struct {
 // @brief urinterfaces/msg/BoolStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/BoolStamped.data: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
 field_data: bool,
}
// @brief Maximum canonical extent of urinterfaces/msg/BoolStamped in bytes.
// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgBoolStamped_Maximum_Wire_Bytes :: 141
// @brief Canonical codec identity of urinterfaces/msg/BoolStamped.
// @details Exact identity UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgBoolStamped_Codec_Identity :: "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66"
// @brief Original ROS type name for urinterfaces/msg/BoolStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgBoolStamped_Native_Type :: "urinterfaces/msg/BoolStamped"
// @brief Selected original native identity for urinterfaces/msg/BoolStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgBoolStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/BoolStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgBoolStamped :: proc() -> Ros2UrinterfacesMsgBoolStamped {
 v: Ros2UrinterfacesMsgBoolStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = false
 return v
}
// @brief Append every canonical field of urinterfaces/msg/BoolStamped.
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
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgBoolStamped :: proc(v: ^Ros2UrinterfacesMsgBoolStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_bool(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/BoolStamped.
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
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgBoolStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgBoolStamped,bool) {
 v:=init_Ros2UrinterfacesMsgBoolStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_data=bool(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/BoolStamped value.
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
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgBoolStamped :: proc(v: ^Ros2UrinterfacesMsgBoolStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=141}
 if !write_Ros2UrinterfacesMsgBoolStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=141}
 if !write_Ros2UrinterfacesMsgBoolStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/BoolStamped value.
// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgBoolStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgBoolStamped,u32) {
 if len(bytes)<13 || len(bytes)>141 { return Ros2UrinterfacesMsgBoolStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgBoolStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgBoolStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/ControlCycle value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes and
// is identified by UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgControlCycle :: struct {
 // @brief urinterfaces/msg/ControlCycle.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/ControlCycle.data: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
 field_data: u64,
}
// @brief Maximum canonical extent of urinterfaces/msg/ControlCycle in bytes.
// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgControlCycle_Maximum_Wire_Bytes :: 148
// @brief Canonical codec identity of urinterfaces/msg/ControlCycle.
// @details Exact identity UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgControlCycle_Codec_Identity :: "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278"
// @brief Original ROS type name for urinterfaces/msg/ControlCycle.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgControlCycle_Native_Type :: "urinterfaces/msg/ControlCycle"
// @brief Selected original native identity for urinterfaces/msg/ControlCycle.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgControlCycle_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/ControlCycle.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgControlCycle :: proc() -> Ros2UrinterfacesMsgControlCycle {
 v: Ros2UrinterfacesMsgControlCycle
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/ControlCycle.
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
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgControlCycle :: proc(v: ^Ros2UrinterfacesMsgControlCycle, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_data),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/ControlCycle.
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
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgControlCycle :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgControlCycle,bool) {
 v:=init_Ros2UrinterfacesMsgControlCycle()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_data=u64(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/ControlCycle value.
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
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgControlCycle :: proc(v: ^Ros2UrinterfacesMsgControlCycle, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=148}
 if !write_Ros2UrinterfacesMsgControlCycle(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=148}
 if !write_Ros2UrinterfacesMsgControlCycle(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/ControlCycle value.
// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgControlCycle :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgControlCycle,u32) {
 if len(bytes)<20 || len(bytes)>148 { return Ros2UrinterfacesMsgControlCycle{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgControlCycle(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgControlCycle{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/Current value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
// is identified by UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgCurrent :: struct {
 // @brief urinterfaces/msg/Current.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/Current.data: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
 field_data: f32,
}
// @brief Maximum canonical extent of urinterfaces/msg/Current in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgCurrent_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of urinterfaces/msg/Current.
// @details Exact identity UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgCurrent_Codec_Identity :: "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df"
// @brief Original ROS type name for urinterfaces/msg/Current.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgCurrent_Native_Type :: "urinterfaces/msg/Current"
// @brief Selected original native identity for urinterfaces/msg/Current.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgCurrent_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/Current.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgCurrent :: proc() -> Ros2UrinterfacesMsgCurrent {
 v: Ros2UrinterfacesMsgCurrent
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/Current.
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
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgCurrent :: proc(v: ^Ros2UrinterfacesMsgCurrent, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_float32(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/Current.
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
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgCurrent :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgCurrent,bool) {
 v:=init_Ros2UrinterfacesMsgCurrent()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_data=f32(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/Current value.
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
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgCurrent :: proc(v: ^Ros2UrinterfacesMsgCurrent, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros2UrinterfacesMsgCurrent(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros2UrinterfacesMsgCurrent(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/Current value.
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
// @see Ros2UrinterfacesMsgCurrent; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgCurrent :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgCurrent,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros2UrinterfacesMsgCurrent{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgCurrent(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgCurrent{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/Digital value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
// identified by UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigital :: struct {
 // @brief urinterfaces/msg/Digital.pin: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
 field_pin: u8,
 // @brief urinterfaces/msg/Digital.state: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
 field_state: bool,
}
// @brief Maximum canonical extent of urinterfaces/msg/Digital in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigital_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of urinterfaces/msg/Digital.
// @details Exact identity UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigital_Codec_Identity :: "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512"
// @brief Original ROS type name for urinterfaces/msg/Digital.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigital_Native_Type :: "urinterfaces/msg/Digital"
// @brief Selected original native identity for urinterfaces/msg/Digital.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigital_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/Digital.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgDigital :: proc() -> Ros2UrinterfacesMsgDigital {
 v: Ros2UrinterfacesMsgDigital
 v.field_pin = 0
 v.field_state = false
 return v
}
// @brief Append every canonical field of urinterfaces/msg/Digital.
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
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgDigital :: proc(v: ^Ros2UrinterfacesMsgDigital, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pin),1) { return false }
 if !put_bool(w,v.field_state) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/Digital.
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
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgDigital :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigital,bool) {
 v:=init_Ros2UrinterfacesMsgDigital()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_state=bool(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/Digital value.
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
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgDigital :: proc(v: ^Ros2UrinterfacesMsgDigital, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros2UrinterfacesMsgDigital(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros2UrinterfacesMsgDigital(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/Digital value.
// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgDigital; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgDigital :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigital,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros2UrinterfacesMsgDigital{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgDigital(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgDigital{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/DigitalIO value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes and
// is identified by UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIO :: struct {
 // @brief urinterfaces/msg/DigitalIO.digital_inputs: urinterfaces/msg/Digital; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
 field_digital_inputs: []Ros2UrinterfacesMsgDigital,
 // @brief urinterfaces/msg/DigitalIO.digital_outputs: urinterfaces/msg/Digital; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
 field_digital_outputs: []Ros2UrinterfacesMsgDigital,
}
// @brief Maximum canonical extent of urinterfaces/msg/DigitalIO in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIO_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of urinterfaces/msg/DigitalIO.
// @details Exact identity UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIO_Codec_Identity :: "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a"
// @brief Original ROS type name for urinterfaces/msg/DigitalIO.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIO_Native_Type :: "urinterfaces/msg/DigitalIO"
// @brief Selected original native identity for urinterfaces/msg/DigitalIO.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIO_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/DigitalIO.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgDigitalIO :: proc() -> Ros2UrinterfacesMsgDigitalIO {
 v: Ros2UrinterfacesMsgDigitalIO
 v.field_digital_inputs = nil
 v.field_digital_outputs = nil
 return v
}
// @brief Append every canonical field of urinterfaces/msg/DigitalIO.
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
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgDigitalIO :: proc(v: ^Ros2UrinterfacesMsgDigitalIO, w: ^Writer) -> bool {
 if len(v.field_digital_inputs)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_digital_inputs)),4) { return false }
 for e in v.field_digital_inputs {
 item:=e
 if !write_Ros2UrinterfacesMsgDigital(&item,w) { return false }
 }
 if len(v.field_digital_outputs)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_digital_outputs)),4) { return false }
 for e in v.field_digital_outputs {
 item:=e
 if !write_Ros2UrinterfacesMsgDigital(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/DigitalIO.
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
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgDigitalIO :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigitalIO,bool) {
 v:=init_Ros2UrinterfacesMsgDigitalIO()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_digital_inputs=make([]Ros2UrinterfacesMsgDigital,int(n),allocator)
 }
 for &e in v.field_digital_inputs {
 {
 b,ok:=read_Ros2UrinterfacesMsgDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_digital_outputs=make([]Ros2UrinterfacesMsgDigital,int(n),allocator)
 }
 for &e in v.field_digital_outputs {
 {
 b,ok:=read_Ros2UrinterfacesMsgDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/DigitalIO value.
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
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgDigitalIO :: proc(v: ^Ros2UrinterfacesMsgDigitalIO, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2UrinterfacesMsgDigitalIO(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2UrinterfacesMsgDigitalIO(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/DigitalIO value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgDigitalIO :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigitalIO,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2UrinterfacesMsgDigitalIO{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgDigitalIO(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgDigitalIO{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/DigitalIOStateStamped value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..412 bytes and
// is identified by UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIOStateStamped :: struct {
 // @brief urinterfaces/msg/DigitalIOStateStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/DigitalIOStateStamped.configurable_io: urinterfaces/msg/DigitalIO.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
 field_configurable_io: Ros2UrinterfacesMsgDigitalIO,
 // @brief urinterfaces/msg/DigitalIOStateStamped.standard_io: urinterfaces/msg/DigitalIO.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
 field_standard_io: Ros2UrinterfacesMsgDigitalIO,
}
// @brief Maximum canonical extent of urinterfaces/msg/DigitalIOStateStamped in bytes.
// @details The inclusive bound is 412 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIOStateStamped_Maximum_Wire_Bytes :: 412
// @brief Canonical codec identity of urinterfaces/msg/DigitalIOStateStamped.
// @details Exact identity UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIOStateStamped_Codec_Identity :: "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9"
// @brief Original ROS type name for urinterfaces/msg/DigitalIOStateStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIOStateStamped_Native_Type :: "urinterfaces/msg/DigitalIOStateStamped"
// @brief Selected original native identity for urinterfaces/msg/DigitalIOStateStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalIOStateStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/DigitalIOStateStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgDigitalIOStateStamped :: proc() -> Ros2UrinterfacesMsgDigitalIOStateStamped {
 v: Ros2UrinterfacesMsgDigitalIOStateStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_configurable_io = Ros2UrinterfacesMsgDigitalIO{}
 v.field_standard_io = Ros2UrinterfacesMsgDigitalIO{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/DigitalIOStateStamped.
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
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgDigitalIOStateStamped :: proc(v: ^Ros2UrinterfacesMsgDigitalIOStateStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2UrinterfacesMsgDigitalIO(&v.field_configurable_io,w) { return false }
 if !write_Ros2UrinterfacesMsgDigitalIO(&v.field_standard_io,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/DigitalIOStateStamped.
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
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgDigitalIOStateStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigitalIOStateStamped,bool) {
 v:=init_Ros2UrinterfacesMsgDigitalIOStateStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2UrinterfacesMsgDigitalIO(r,allocator); if !ok { return v,false }
 v.field_configurable_io=b
 }
 {
 b,ok:=read_Ros2UrinterfacesMsgDigitalIO(r,allocator); if !ok { return v,false }
 v.field_standard_io=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/DigitalIOStateStamped value.
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
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgDigitalIOStateStamped :: proc(v: ^Ros2UrinterfacesMsgDigitalIOStateStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=412}
 if !write_Ros2UrinterfacesMsgDigitalIOStateStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=412}
 if !write_Ros2UrinterfacesMsgDigitalIOStateStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/DigitalIOStateStamped value.
// @details Require the complete 28..412-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgDigitalIOStateStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigitalIOStateStamped,u32) {
 if len(bytes)<28 || len(bytes)>412 { return Ros2UrinterfacesMsgDigitalIOStateStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgDigitalIOStateStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgDigitalIOStateStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/DigitalStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 14..142 bytes and
// is identified by UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalStamped :: struct {
 // @brief urinterfaces/msg/DigitalStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/DigitalStamped.data: urinterfaces/msg/Digital.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
 field_data: Ros2UrinterfacesMsgDigital,
}
// @brief Maximum canonical extent of urinterfaces/msg/DigitalStamped in bytes.
// @details The inclusive bound is 142 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalStamped_Maximum_Wire_Bytes :: 142
// @brief Canonical codec identity of urinterfaces/msg/DigitalStamped.
// @details Exact identity UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalStamped_Codec_Identity :: "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865"
// @brief Original ROS type name for urinterfaces/msg/DigitalStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalStamped_Native_Type :: "urinterfaces/msg/DigitalStamped"
// @brief Selected original native identity for urinterfaces/msg/DigitalStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDigitalStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/DigitalStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgDigitalStamped :: proc() -> Ros2UrinterfacesMsgDigitalStamped {
 v: Ros2UrinterfacesMsgDigitalStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = Ros2UrinterfacesMsgDigital{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/DigitalStamped.
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
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgDigitalStamped :: proc(v: ^Ros2UrinterfacesMsgDigitalStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2UrinterfacesMsgDigital(&v.field_data,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/DigitalStamped.
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
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgDigitalStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigitalStamped,bool) {
 v:=init_Ros2UrinterfacesMsgDigitalStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2UrinterfacesMsgDigital(r,allocator); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/DigitalStamped value.
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
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgDigitalStamped :: proc(v: ^Ros2UrinterfacesMsgDigitalStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=142}
 if !write_Ros2UrinterfacesMsgDigitalStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=142}
 if !write_Ros2UrinterfacesMsgDigitalStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/DigitalStamped value.
// @details Require the complete 14..142-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgDigitalStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDigitalStamped,u32) {
 if len(bytes)<14 || len(bytes)>142 { return Ros2UrinterfacesMsgDigitalStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgDigitalStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgDigitalStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/DoubleMultiArrayStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..272 bytes and
// is identified by UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDoubleMultiArrayStamped :: struct {
 // @brief urinterfaces/msg/DoubleMultiArrayStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/DoubleMultiArrayStamped.data: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
 field_data: []f64,
}
// @brief Maximum canonical extent of urinterfaces/msg/DoubleMultiArrayStamped in bytes.
// @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDoubleMultiArrayStamped_Maximum_Wire_Bytes :: 272
// @brief Canonical codec identity of urinterfaces/msg/DoubleMultiArrayStamped.
// @details Exact identity UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDoubleMultiArrayStamped_Codec_Identity :: "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae"
// @brief Original ROS type name for urinterfaces/msg/DoubleMultiArrayStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDoubleMultiArrayStamped_Native_Type :: "urinterfaces/msg/DoubleMultiArrayStamped"
// @brief Selected original native identity for urinterfaces/msg/DoubleMultiArrayStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgDoubleMultiArrayStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/DoubleMultiArrayStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgDoubleMultiArrayStamped :: proc() -> Ros2UrinterfacesMsgDoubleMultiArrayStamped {
 v: Ros2UrinterfacesMsgDoubleMultiArrayStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = nil
 return v
}
// @brief Append every canonical field of urinterfaces/msg/DoubleMultiArrayStamped.
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
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgDoubleMultiArrayStamped :: proc(v: ^Ros2UrinterfacesMsgDoubleMultiArrayStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_data)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data)),4) { return false }
 for e in v.field_data {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/DoubleMultiArrayStamped.
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
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgDoubleMultiArrayStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDoubleMultiArrayStamped,bool) {
 v:=init_Ros2UrinterfacesMsgDoubleMultiArrayStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_data=make([]f64,int(n),allocator)
 }
 for &e in v.field_data {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/DoubleMultiArrayStamped value.
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
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgDoubleMultiArrayStamped :: proc(v: ^Ros2UrinterfacesMsgDoubleMultiArrayStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=272}
 if !write_Ros2UrinterfacesMsgDoubleMultiArrayStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=272}
 if !write_Ros2UrinterfacesMsgDoubleMultiArrayStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/DoubleMultiArrayStamped value.
// @details Require the complete 16..272-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgDoubleMultiArrayStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgDoubleMultiArrayStamped,u32) {
 if len(bytes)<16 || len(bytes)>272 { return Ros2UrinterfacesMsgDoubleMultiArrayStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgDoubleMultiArrayStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgDoubleMultiArrayStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/Float32Stamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
// is identified by UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat32Stamped :: struct {
 // @brief urinterfaces/msg/Float32Stamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/Float32Stamped.data: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
 field_data: f32,
}
// @brief Maximum canonical extent of urinterfaces/msg/Float32Stamped in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat32Stamped_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of urinterfaces/msg/Float32Stamped.
// @details Exact identity UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat32Stamped_Codec_Identity :: "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3"
// @brief Original ROS type name for urinterfaces/msg/Float32Stamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat32Stamped_Native_Type :: "urinterfaces/msg/Float32Stamped"
// @brief Selected original native identity for urinterfaces/msg/Float32Stamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat32Stamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/Float32Stamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgFloat32Stamped :: proc() -> Ros2UrinterfacesMsgFloat32Stamped {
 v: Ros2UrinterfacesMsgFloat32Stamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/Float32Stamped.
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
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgFloat32Stamped :: proc(v: ^Ros2UrinterfacesMsgFloat32Stamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_float32(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/Float32Stamped.
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
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgFloat32Stamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgFloat32Stamped,bool) {
 v:=init_Ros2UrinterfacesMsgFloat32Stamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_data=f32(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/Float32Stamped value.
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
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgFloat32Stamped :: proc(v: ^Ros2UrinterfacesMsgFloat32Stamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros2UrinterfacesMsgFloat32Stamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros2UrinterfacesMsgFloat32Stamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/Float32Stamped value.
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
// @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgFloat32Stamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgFloat32Stamped,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros2UrinterfacesMsgFloat32Stamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgFloat32Stamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgFloat32Stamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/Float64Stamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes and
// is identified by UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat64Stamped :: struct {
 // @brief urinterfaces/msg/Float64Stamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/Float64Stamped.data: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
 field_data: f64,
}
// @brief Maximum canonical extent of urinterfaces/msg/Float64Stamped in bytes.
// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat64Stamped_Maximum_Wire_Bytes :: 148
// @brief Canonical codec identity of urinterfaces/msg/Float64Stamped.
// @details Exact identity UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat64Stamped_Codec_Identity :: "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21"
// @brief Original ROS type name for urinterfaces/msg/Float64Stamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat64Stamped_Native_Type :: "urinterfaces/msg/Float64Stamped"
// @brief Selected original native identity for urinterfaces/msg/Float64Stamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgFloat64Stamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/Float64Stamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgFloat64Stamped :: proc() -> Ros2UrinterfacesMsgFloat64Stamped {
 v: Ros2UrinterfacesMsgFloat64Stamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/Float64Stamped.
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
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgFloat64Stamped :: proc(v: ^Ros2UrinterfacesMsgFloat64Stamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_float64(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/Float64Stamped.
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
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgFloat64Stamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgFloat64Stamped,bool) {
 v:=init_Ros2UrinterfacesMsgFloat64Stamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_data=f64(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/Float64Stamped value.
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
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgFloat64Stamped :: proc(v: ^Ros2UrinterfacesMsgFloat64Stamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=148}
 if !write_Ros2UrinterfacesMsgFloat64Stamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=148}
 if !write_Ros2UrinterfacesMsgFloat64Stamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/Float64Stamped value.
// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgFloat64Stamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgFloat64Stamped,u32) {
 if len(bytes)<20 || len(bytes)>148 { return Ros2UrinterfacesMsgFloat64Stamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgFloat64Stamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgFloat64Stamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/JointMode value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 19..147 bytes and
// is identified by UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode :: struct {
 // @brief urinterfaces/msg/JointMode.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/JointMode.joint_modes: uint8; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
 field_joint_modes: [6]u8,
 // @brief urinterfaces/msg/JointMode.tool_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
 field_tool_mode: u8,
}
// @brief Maximum canonical extent of urinterfaces/msg/JointMode in bytes.
// @details The inclusive bound is 147 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_Maximum_Wire_Bytes :: 147
// @brief Canonical codec identity of urinterfaces/msg/JointMode.
// @details Exact identity UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_Codec_Identity :: "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c"
// @brief Original ROS type name for urinterfaces/msg/JointMode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_Native_Type :: "urinterfaces/msg/JointMode"
// @brief Selected original native identity for urinterfaces/msg/JointMode.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_Native_Identity :: ""
// @brief urinterfaces/msg/JointMode.JOINT_MODE_RESET: original uint8 constant.
// @details Exact admitted value 235. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_RESET :: u8(235)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_SHUTTING_DOWN: original uint8 constant.
// @details Exact admitted value 236. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_SHUTTING_DOWN :: u8(236)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION: original uint8 constant.
// @details Exact admitted value 237. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION :: u8(237)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_BACKDRIVE: original uint8 constant.
// @details Exact admitted value 238. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_BACKDRIVE :: u8(238)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_POWER_OFF: original uint8 constant.
// @details Exact admitted value 239. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_POWER_OFF :: u8(239)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_READY_FOR_POWER_OFF: original uint8 constant.
// @details Exact admitted value 240. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_READY_FOR_POWER_OFF :: u8(240)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_NOT_RESPONDING: original uint8 constant.
// @details Exact admitted value 245. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_NOT_RESPONDING :: u8(245)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_MOTOR_INITIALISATION: original uint8 constant.
// @details Exact admitted value 246. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_MOTOR_INITIALISATION :: u8(246)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTING: original uint8 constant.
// @details Exact admitted value 247. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTING :: u8(247)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION_ERROR: original uint8 constant.
// @details Exact admitted value 248. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION_ERROR :: u8(248)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_BOOTLOADER: original uint8 constant.
// @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTLOADER :: u8(249)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_CALIBRATION: original uint8 constant.
// @details Exact admitted value 250. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_CALIBRATION :: u8(250)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_VIOLATION: original uint8 constant.
// @details Exact admitted value 251. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_VIOLATION :: u8(251)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_FAULT: original uint8 constant.
// @details Exact admitted value 252. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_FAULT :: u8(252)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_RUNNING: original uint8 constant.
// @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_RUNNING :: u8(253)
// @brief urinterfaces/msg/JointMode.JOINT_MODE_IDLE: original uint8 constant.
// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointMode_JOINT_MODE_IDLE :: u8(255)
// @brief Construct the declared defaults of urinterfaces/msg/JointMode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgJointMode :: proc() -> Ros2UrinterfacesMsgJointMode {
 v: Ros2UrinterfacesMsgJointMode
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_modes = [6]u8{0,0,0,0,0,0}
 v.field_tool_mode = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/JointMode.
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
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgJointMode :: proc(v: ^Ros2UrinterfacesMsgJointMode, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 for e in v.field_joint_modes {
 if !put_integer(w,u64(e),1) { return false }
 }
 if !put_integer(w,u64(v.field_tool_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/JointMode.
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
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgJointMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJointMode,bool) {
 v:=init_Ros2UrinterfacesMsgJointMode()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 for &e in v.field_joint_modes {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tool_mode=u8(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/JointMode value.
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
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgJointMode :: proc(v: ^Ros2UrinterfacesMsgJointMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=147}
 if !write_Ros2UrinterfacesMsgJointMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=147}
 if !write_Ros2UrinterfacesMsgJointMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/JointMode value.
// @details Require the complete 19..147-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgJointMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgJointMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJointMode,u32) {
 if len(bytes)<19 || len(bytes)>147 { return Ros2UrinterfacesMsgJointMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgJointMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgJointMode{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/JointTemperature value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 36..164 bytes and
// is identified by UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointTemperature :: struct {
 // @brief urinterfaces/msg/JointTemperature.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/JointTemperature.data: float32; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
 field_data: [6]f32,
}
// @brief Maximum canonical extent of urinterfaces/msg/JointTemperature in bytes.
// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointTemperature_Maximum_Wire_Bytes :: 164
// @brief Canonical codec identity of urinterfaces/msg/JointTemperature.
// @details Exact identity UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointTemperature_Codec_Identity :: "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017"
// @brief Original ROS type name for urinterfaces/msg/JointTemperature.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointTemperature_Native_Type :: "urinterfaces/msg/JointTemperature"
// @brief Selected original native identity for urinterfaces/msg/JointTemperature.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointTemperature_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/JointTemperature.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgJointTemperature :: proc() -> Ros2UrinterfacesMsgJointTemperature {
 v: Ros2UrinterfacesMsgJointTemperature
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = [6]f32{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/JointTemperature.
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
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgJointTemperature :: proc(v: ^Ros2UrinterfacesMsgJointTemperature, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 for e in v.field_data {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/JointTemperature.
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
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgJointTemperature :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJointTemperature,bool) {
 v:=init_Ros2UrinterfacesMsgJointTemperature()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 for &e in v.field_data {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/JointTemperature value.
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
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgJointTemperature :: proc(v: ^Ros2UrinterfacesMsgJointTemperature, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=164}
 if !write_Ros2UrinterfacesMsgJointTemperature(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=164}
 if !write_Ros2UrinterfacesMsgJointTemperature(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/JointTemperature value.
// @details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgJointTemperature :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJointTemperature,u32) {
 if len(bytes)<36 || len(bytes)>164 { return Ros2UrinterfacesMsgJointTemperature{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgJointTemperature(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgJointTemperature{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/JointVoltage value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
// is identified by UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointVoltage :: struct {
 // @brief urinterfaces/msg/JointVoltage.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/JointVoltage.data: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
 field_data: [6]f64,
}
// @brief Maximum canonical extent of urinterfaces/msg/JointVoltage in bytes.
// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointVoltage_Maximum_Wire_Bytes :: 188
// @brief Canonical codec identity of urinterfaces/msg/JointVoltage.
// @details Exact identity UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointVoltage_Codec_Identity :: "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61"
// @brief Original ROS type name for urinterfaces/msg/JointVoltage.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointVoltage_Native_Type :: "urinterfaces/msg/JointVoltage"
// @brief Selected original native identity for urinterfaces/msg/JointVoltage.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJointVoltage_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/JointVoltage.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgJointVoltage :: proc() -> Ros2UrinterfacesMsgJointVoltage {
 v: Ros2UrinterfacesMsgJointVoltage
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/JointVoltage.
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
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgJointVoltage :: proc(v: ^Ros2UrinterfacesMsgJointVoltage, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 for e in v.field_data {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/JointVoltage.
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
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgJointVoltage :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJointVoltage,bool) {
 v:=init_Ros2UrinterfacesMsgJointVoltage()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 for &e in v.field_data {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/JointVoltage value.
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
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgJointVoltage :: proc(v: ^Ros2UrinterfacesMsgJointVoltage, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=188}
 if !write_Ros2UrinterfacesMsgJointVoltage(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=188}
 if !write_Ros2UrinterfacesMsgJointVoltage(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/JointVoltage value.
// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgJointVoltage :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJointVoltage,u32) {
 if len(bytes)<60 || len(bytes)>188 { return Ros2UrinterfacesMsgJointVoltage{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgJointVoltage(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgJointVoltage{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/JsonStringType value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes and
// is identified by UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJsonStringType :: struct {
 // @brief urinterfaces/msg/JsonStringType.json_string: std_msgs/msg/String.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
 field_json_string: Ros2Std_msgsMsgString,
}
// @brief Maximum canonical extent of urinterfaces/msg/JsonStringType in bytes.
// @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJsonStringType_Maximum_Wire_Bytes :: 1028
// @brief Canonical codec identity of urinterfaces/msg/JsonStringType.
// @details Exact identity UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJsonStringType_Codec_Identity :: "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728"
// @brief Original ROS type name for urinterfaces/msg/JsonStringType.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJsonStringType_Native_Type :: "urinterfaces/msg/JsonStringType"
// @brief Selected original native identity for urinterfaces/msg/JsonStringType.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgJsonStringType_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/JsonStringType.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgJsonStringType :: proc() -> Ros2UrinterfacesMsgJsonStringType {
 v: Ros2UrinterfacesMsgJsonStringType
 v.field_json_string = Ros2Std_msgsMsgString{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/JsonStringType.
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
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgJsonStringType :: proc(v: ^Ros2UrinterfacesMsgJsonStringType, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgString(&v.field_json_string,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/JsonStringType.
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
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgJsonStringType :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJsonStringType,bool) {
 v:=init_Ros2UrinterfacesMsgJsonStringType()
 {
 b,ok:=read_Ros2Std_msgsMsgString(r,allocator); if !ok { return v,false }
 v.field_json_string=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/JsonStringType value.
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
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgJsonStringType :: proc(v: ^Ros2UrinterfacesMsgJsonStringType, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1028}
 if !write_Ros2UrinterfacesMsgJsonStringType(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1028}
 if !write_Ros2UrinterfacesMsgJsonStringType(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/JsonStringType value.
// @details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgJsonStringType :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgJsonStringType,u32) {
 if len(bytes)<4 || len(bytes)>1028 { return Ros2UrinterfacesMsgJsonStringType{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgJsonStringType(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgJsonStringType{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/RuntimeState value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
// is identified by UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState :: struct {
 // @brief urinterfaces/msg/RuntimeState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/RuntimeState.data: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
 field_data: i8,
}
// @brief Maximum canonical extent of urinterfaces/msg/RuntimeState in bytes.
// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_Maximum_Wire_Bytes :: 141
// @brief Canonical codec identity of urinterfaces/msg/RuntimeState.
// @details Exact identity UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_Codec_Identity :: "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6"
// @brief Original ROS type name for urinterfaces/msg/RuntimeState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_Native_Type :: "urinterfaces/msg/RuntimeState"
// @brief Selected original native identity for urinterfaces/msg/RuntimeState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_Native_Identity :: ""
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_UNDEFINED: original int8 constant.
// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_UNDEFINED :: i8(-1)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPING: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPING :: i8(0)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPED: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPED :: i8(1)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RUNNING: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RUNNING :: i8(2)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSING: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSING :: i8(3)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSED: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSED :: i8(4)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RESUMING: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RESUMING :: i8(5)
// @brief urinterfaces/msg/RuntimeState.PROGRAM_STATE_RETRACTING: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RETRACTING :: i8(6)
// @brief Construct the declared defaults of urinterfaces/msg/RuntimeState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgRuntimeState :: proc() -> Ros2UrinterfacesMsgRuntimeState {
 v: Ros2UrinterfacesMsgRuntimeState
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/RuntimeState.
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
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgRuntimeState :: proc(v: ^Ros2UrinterfacesMsgRuntimeState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_data),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/RuntimeState.
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
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgRuntimeState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgRuntimeState,bool) {
 v:=init_Ros2UrinterfacesMsgRuntimeState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_data=i8(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/RuntimeState value.
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
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgRuntimeState :: proc(v: ^Ros2UrinterfacesMsgRuntimeState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=141}
 if !write_Ros2UrinterfacesMsgRuntimeState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=141}
 if !write_Ros2UrinterfacesMsgRuntimeState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/RuntimeState value.
// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgRuntimeState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgRuntimeState,u32) {
 if len(bytes)<13 || len(bytes)>141 { return Ros2UrinterfacesMsgRuntimeState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgRuntimeState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgRuntimeState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/SafetyStatus value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes and
// is identified by UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus :: struct {
 // @brief urinterfaces/msg/SafetyStatus.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/SafetyStatus.data: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
 field_data: i8,
}
// @brief Maximum canonical extent of urinterfaces/msg/SafetyStatus in bytes.
// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_Maximum_Wire_Bytes :: 141
// @brief Canonical codec identity of urinterfaces/msg/SafetyStatus.
// @details Exact identity UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_Codec_Identity :: "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4"
// @brief Original ROS type name for urinterfaces/msg/SafetyStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_Native_Type :: "urinterfaces/msg/SafetyStatus"
// @brief Selected original native identity for urinterfaces/msg/SafetyStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_Native_Identity :: ""
// @brief urinterfaces/msg/SafetyStatus.NORMAL: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_NORMAL :: i8(1)
// @brief urinterfaces/msg/SafetyStatus.REDUCED: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_REDUCED :: i8(2)
// @brief urinterfaces/msg/SafetyStatus.PROTECTIVE_STOP: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_PROTECTIVE_STOP :: i8(3)
// @brief urinterfaces/msg/SafetyStatus.RECOVERY: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_RECOVERY :: i8(4)
// @brief urinterfaces/msg/SafetyStatus.SAFEGUARD_STOP: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_SAFEGUARD_STOP :: i8(5)
// @brief urinterfaces/msg/SafetyStatus.SYSTEM_EMERGENCY_STOP: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_SYSTEM_EMERGENCY_STOP :: i8(6)
// @brief urinterfaces/msg/SafetyStatus.ROBOT_EMERGENCY_STOP: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_ROBOT_EMERGENCY_STOP :: i8(7)
// @brief urinterfaces/msg/SafetyStatus.VIOLATION: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_VIOLATION :: i8(8)
// @brief urinterfaces/msg/SafetyStatus.FAULT: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_FAULT :: i8(9)
// @brief urinterfaces/msg/SafetyStatus.VALIDATE_JOINT_ID: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_VALIDATE_JOINT_ID :: i8(10)
// @brief urinterfaces/msg/SafetyStatus.UNDEFINED_SAFETY_MODE: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_UNDEFINED_SAFETY_MODE :: i8(11)
// @brief urinterfaces/msg/SafetyStatus.AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_AUTOMATIC_MODE_SAFEGUARD_STOP :: i8(12)
// @brief urinterfaces/msg/SafetyStatus.SYSTEM_THREE_POSITION_ENABLING_STOP: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_SYSTEM_THREE_POSITION_ENABLING_STOP :: i8(13)
// @brief urinterfaces/msg/SafetyStatus.TP_THREE_POSITION_ENABLING_STOP: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_TP_THREE_POSITION_ENABLING_STOP :: i8(14)
// @brief urinterfaces/msg/SafetyStatus.IMMI_EMERGENCY_STOP: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_IMMI_EMERGENCY_STOP :: i8(15)
// @brief urinterfaces/msg/SafetyStatus.IMMI_SAFEGUARD_STOP: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_IMMI_SAFEGUARD_STOP :: i8(16)
// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_WAITING_FOR_PARAMETERS: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_WAITING_FOR_PARAMETERS :: i8(17)
// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP :: i8(18)
// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_SAFEGUARD_STOP: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_SAFEGUARD_STOP :: i8(19)
// @brief urinterfaces/msg/SafetyStatus.PROFISAFE_EMERGENCY_STOP: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_EMERGENCY_STOP :: i8(20)
// @brief urinterfaces/msg/SafetyStatus.SAFETY_API_SAFEGUARD_STOP: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_SAFETY_API_SAFEGUARD_STOP :: i8(22)
// @brief urinterfaces/msg/SafetyStatus.IO_PLANE_STOP: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSafetyStatus_IO_PLANE_STOP :: i8(23)
// @brief Construct the declared defaults of urinterfaces/msg/SafetyStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgSafetyStatus :: proc() -> Ros2UrinterfacesMsgSafetyStatus {
 v: Ros2UrinterfacesMsgSafetyStatus
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/SafetyStatus.
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
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgSafetyStatus :: proc(v: ^Ros2UrinterfacesMsgSafetyStatus, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_data),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/SafetyStatus.
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
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgSafetyStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgSafetyStatus,bool) {
 v:=init_Ros2UrinterfacesMsgSafetyStatus()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_data=i8(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/SafetyStatus value.
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
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgSafetyStatus :: proc(v: ^Ros2UrinterfacesMsgSafetyStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=141}
 if !write_Ros2UrinterfacesMsgSafetyStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=141}
 if !write_Ros2UrinterfacesMsgSafetyStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/SafetyStatus value.
// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgSafetyStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgSafetyStatus,u32) {
 if len(bytes)<13 || len(bytes)>141 { return Ros2UrinterfacesMsgSafetyStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgSafetyStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgSafetyStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/SharedVariablesEditResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..1029 bytes and
// is identified by UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSharedVariablesEditResponse :: struct {
 // @brief urinterfaces/msg/SharedVariablesEditResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief urinterfaces/msg/SharedVariablesEditResponse.result_message: std_msgs/msg/String.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
 field_result_message: Ros2Std_msgsMsgString,
}
// @brief Maximum canonical extent of urinterfaces/msg/SharedVariablesEditResponse in bytes.
// @details The inclusive bound is 1029 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSharedVariablesEditResponse_Maximum_Wire_Bytes :: 1029
// @brief Canonical codec identity of urinterfaces/msg/SharedVariablesEditResponse.
// @details Exact identity UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSharedVariablesEditResponse_Codec_Identity :: "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212"
// @brief Original ROS type name for urinterfaces/msg/SharedVariablesEditResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSharedVariablesEditResponse_Native_Type :: "urinterfaces/msg/SharedVariablesEditResponse"
// @brief Selected original native identity for urinterfaces/msg/SharedVariablesEditResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSharedVariablesEditResponse_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/SharedVariablesEditResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgSharedVariablesEditResponse :: proc() -> Ros2UrinterfacesMsgSharedVariablesEditResponse {
 v: Ros2UrinterfacesMsgSharedVariablesEditResponse
 v.field_success = false
 v.field_result_message = Ros2Std_msgsMsgString{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/SharedVariablesEditResponse.
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
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgSharedVariablesEditResponse :: proc(v: ^Ros2UrinterfacesMsgSharedVariablesEditResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !write_Ros2Std_msgsMsgString(&v.field_result_message,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/SharedVariablesEditResponse.
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
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgSharedVariablesEditResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgSharedVariablesEditResponse,bool) {
 v:=init_Ros2UrinterfacesMsgSharedVariablesEditResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=read_Ros2Std_msgsMsgString(r,allocator); if !ok { return v,false }
 v.field_result_message=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/SharedVariablesEditResponse value.
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
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgSharedVariablesEditResponse :: proc(v: ^Ros2UrinterfacesMsgSharedVariablesEditResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1029}
 if !write_Ros2UrinterfacesMsgSharedVariablesEditResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1029}
 if !write_Ros2UrinterfacesMsgSharedVariablesEditResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/SharedVariablesEditResponse value.
// @details Require the complete 5..1029-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgSharedVariablesEditResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgSharedVariablesEditResponse,u32) {
 if len(bytes)<5 || len(bytes)>1029 { return Ros2UrinterfacesMsgSharedVariablesEditResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgSharedVariablesEditResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgSharedVariablesEditResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/SpeedSliderFraction value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 20..148 bytes and
// is identified by UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSpeedSliderFraction :: struct {
 // @brief urinterfaces/msg/SpeedSliderFraction.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/SpeedSliderFraction.data: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
 field_data: f64,
}
// @brief Maximum canonical extent of urinterfaces/msg/SpeedSliderFraction in bytes.
// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSpeedSliderFraction_Maximum_Wire_Bytes :: 148
// @brief Canonical codec identity of urinterfaces/msg/SpeedSliderFraction.
// @details Exact identity UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSpeedSliderFraction_Codec_Identity :: "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd"
// @brief Original ROS type name for urinterfaces/msg/SpeedSliderFraction.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSpeedSliderFraction_Native_Type :: "urinterfaces/msg/SpeedSliderFraction"
// @brief Selected original native identity for urinterfaces/msg/SpeedSliderFraction.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgSpeedSliderFraction_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/SpeedSliderFraction.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgSpeedSliderFraction :: proc() -> Ros2UrinterfacesMsgSpeedSliderFraction {
 v: Ros2UrinterfacesMsgSpeedSliderFraction
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/SpeedSliderFraction.
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
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgSpeedSliderFraction :: proc(v: ^Ros2UrinterfacesMsgSpeedSliderFraction, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_float64(w,v.field_data) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/SpeedSliderFraction.
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
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgSpeedSliderFraction :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgSpeedSliderFraction,bool) {
 v:=init_Ros2UrinterfacesMsgSpeedSliderFraction()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_data=f64(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/SpeedSliderFraction value.
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
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgSpeedSliderFraction :: proc(v: ^Ros2UrinterfacesMsgSpeedSliderFraction, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=148}
 if !write_Ros2UrinterfacesMsgSpeedSliderFraction(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=148}
 if !write_Ros2UrinterfacesMsgSpeedSliderFraction(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/SpeedSliderFraction value.
// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgSpeedSliderFraction :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgSpeedSliderFraction,u32) {
 if len(bytes)<20 || len(bytes)>148 { return Ros2UrinterfacesMsgSpeedSliderFraction{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgSpeedSliderFraction(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgSpeedSliderFraction{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/TCPState value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 116..244 bytes and
// is identified by UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgTCPState :: struct {
 // @brief urinterfaces/msg/TCPState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/TCPState.pose: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
 field_pose: Ros2Geometry_msgsMsgPose,
 // @brief urinterfaces/msg/TCPState.speed: geometry_msgs/msg/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
 field_speed: Ros2Geometry_msgsMsgTwist,
}
// @brief Maximum canonical extent of urinterfaces/msg/TCPState in bytes.
// @details The inclusive bound is 244 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgTCPState_Maximum_Wire_Bytes :: 244
// @brief Canonical codec identity of urinterfaces/msg/TCPState.
// @details Exact identity UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgTCPState_Codec_Identity :: "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92"
// @brief Original ROS type name for urinterfaces/msg/TCPState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgTCPState_Native_Type :: "urinterfaces/msg/TCPState"
// @brief Selected original native identity for urinterfaces/msg/TCPState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgTCPState_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/TCPState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgTCPState :: proc() -> Ros2UrinterfacesMsgTCPState {
 v: Ros2UrinterfacesMsgTCPState
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_pose = Ros2Geometry_msgsMsgPose{}
 v.field_speed = Ros2Geometry_msgsMsgTwist{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/TCPState.
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
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgTCPState :: proc(v: ^Ros2UrinterfacesMsgTCPState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgPose(&v.field_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwist(&v.field_speed,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/TCPState.
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
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgTCPState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgTCPState,bool) {
 v:=init_Ros2UrinterfacesMsgTCPState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
 v.field_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwist(r,allocator); if !ok { return v,false }
 v.field_speed=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/TCPState value.
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
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgTCPState :: proc(v: ^Ros2UrinterfacesMsgTCPState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=244}
 if !write_Ros2UrinterfacesMsgTCPState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=244}
 if !write_Ros2UrinterfacesMsgTCPState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/TCPState value.
// @details Require the complete 116..244-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgTCPState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgTCPState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgTCPState,u32) {
 if len(bytes)<116 || len(bytes)>244 { return Ros2UrinterfacesMsgTCPState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgTCPState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgTCPState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/ToolOutputMode value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 15..143 bytes and
// is identified by UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode :: struct {
 // @brief urinterfaces/msg/ToolOutputMode.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/ToolOutputMode.output_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
 field_output_mode: u8,
 // @brief urinterfaces/msg/ToolOutputMode.output_pin_mode: uint8; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
 field_output_pin_mode: [2]u8,
}
// @brief Maximum canonical extent of urinterfaces/msg/ToolOutputMode in bytes.
// @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_Maximum_Wire_Bytes :: 143
// @brief Canonical codec identity of urinterfaces/msg/ToolOutputMode.
// @details Exact identity UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_Codec_Identity :: "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660"
// @brief Original ROS type name for urinterfaces/msg/ToolOutputMode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_Native_Type :: "urinterfaces/msg/ToolOutputMode"
// @brief Selected original native identity for urinterfaces/msg/ToolOutputMode.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_Native_Identity :: ""
// @brief urinterfaces/msg/ToolOutputMode.TOOL_OUTPUT: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_TOOL_OUTPUT :: u8(0)
// @brief urinterfaces/msg/ToolOutputMode.TOOL_POWER: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_TOOL_POWER :: u8(1)
// @brief urinterfaces/msg/ToolOutputMode.TOOL_SAFE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_TOOL_SAFE :: u8(2)
// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_DISABLED: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_DISABLED :: u8(0)
// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SINKING: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SINKING :: u8(1)
// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SOURCING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SOURCING :: u8(2)
// @brief urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_PUSH_PULL: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_PUSH_PULL :: u8(3)
// @brief Construct the declared defaults of urinterfaces/msg/ToolOutputMode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgToolOutputMode :: proc() -> Ros2UrinterfacesMsgToolOutputMode {
 v: Ros2UrinterfacesMsgToolOutputMode
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_output_mode = 0
 v.field_output_pin_mode = [2]u8{0,0}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/ToolOutputMode.
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
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgToolOutputMode :: proc(v: ^Ros2UrinterfacesMsgToolOutputMode, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_output_mode),1) { return false }
 for e in v.field_output_pin_mode {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/ToolOutputMode.
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
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgToolOutputMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgToolOutputMode,bool) {
 v:=init_Ros2UrinterfacesMsgToolOutputMode()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_output_mode=u8(b)
 }
 for &e in v.field_output_pin_mode {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/ToolOutputMode value.
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
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgToolOutputMode :: proc(v: ^Ros2UrinterfacesMsgToolOutputMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=143}
 if !write_Ros2UrinterfacesMsgToolOutputMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=143}
 if !write_Ros2UrinterfacesMsgToolOutputMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/ToolOutputMode value.
// @details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgToolOutputMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgToolOutputMode,u32) {
 if len(bytes)<15 || len(bytes)>143 { return Ros2UrinterfacesMsgToolOutputMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgToolOutputMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgToolOutputMode{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/VariableUpdate value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..1168 bytes and
// is identified by UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVariableUpdate :: struct {
 // @brief urinterfaces/msg/VariableUpdate.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/VariableUpdate.data: urinterfaces/msg/JsonStringType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
 field_data: Ros2UrinterfacesMsgJsonStringType,
}
// @brief Maximum canonical extent of urinterfaces/msg/VariableUpdate in bytes.
// @details The inclusive bound is 1168 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVariableUpdate_Maximum_Wire_Bytes :: 1168
// @brief Canonical codec identity of urinterfaces/msg/VariableUpdate.
// @details Exact identity UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVariableUpdate_Codec_Identity :: "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20"
// @brief Original ROS type name for urinterfaces/msg/VariableUpdate.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVariableUpdate_Native_Type :: "urinterfaces/msg/VariableUpdate"
// @brief Selected original native identity for urinterfaces/msg/VariableUpdate.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVariableUpdate_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/VariableUpdate.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgVariableUpdate :: proc() -> Ros2UrinterfacesMsgVariableUpdate {
 v: Ros2UrinterfacesMsgVariableUpdate
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = Ros2UrinterfacesMsgJsonStringType{}
 return v
}
// @brief Append every canonical field of urinterfaces/msg/VariableUpdate.
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
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgVariableUpdate :: proc(v: ^Ros2UrinterfacesMsgVariableUpdate, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2UrinterfacesMsgJsonStringType(&v.field_data,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/VariableUpdate.
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
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgVariableUpdate :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgVariableUpdate,bool) {
 v:=init_Ros2UrinterfacesMsgVariableUpdate()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2UrinterfacesMsgJsonStringType(r,allocator); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/VariableUpdate value.
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
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgVariableUpdate :: proc(v: ^Ros2UrinterfacesMsgVariableUpdate, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1168}
 if !write_Ros2UrinterfacesMsgVariableUpdate(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1168}
 if !write_Ros2UrinterfacesMsgVariableUpdate(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/VariableUpdate value.
// @details Require the complete 16..1168-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgVariableUpdate :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgVariableUpdate,u32) {
 if len(bytes)<16 || len(bytes)>1168 { return Ros2UrinterfacesMsgVariableUpdate{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgVariableUpdate(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgVariableUpdate{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/VoltageCurrentStamped value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..156 bytes and
// is identified by UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVoltageCurrentStamped :: struct {
 // @brief urinterfaces/msg/VoltageCurrentStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/VoltageCurrentStamped.voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
 field_voltage: f64,
 // @brief urinterfaces/msg/VoltageCurrentStamped.current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
 field_current: f64,
}
// @brief Maximum canonical extent of urinterfaces/msg/VoltageCurrentStamped in bytes.
// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVoltageCurrentStamped_Maximum_Wire_Bytes :: 156
// @brief Canonical codec identity of urinterfaces/msg/VoltageCurrentStamped.
// @details Exact identity UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVoltageCurrentStamped_Codec_Identity :: "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805"
// @brief Original ROS type name for urinterfaces/msg/VoltageCurrentStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVoltageCurrentStamped_Native_Type :: "urinterfaces/msg/VoltageCurrentStamped"
// @brief Selected original native identity for urinterfaces/msg/VoltageCurrentStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgVoltageCurrentStamped_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/VoltageCurrentStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgVoltageCurrentStamped :: proc() -> Ros2UrinterfacesMsgVoltageCurrentStamped {
 v: Ros2UrinterfacesMsgVoltageCurrentStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_voltage = 0
 v.field_current = 0
 return v
}
// @brief Append every canonical field of urinterfaces/msg/VoltageCurrentStamped.
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
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgVoltageCurrentStamped :: proc(v: ^Ros2UrinterfacesMsgVoltageCurrentStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_float64(w,v.field_voltage) { return false }
 if !put_float64(w,v.field_current) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/VoltageCurrentStamped.
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
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgVoltageCurrentStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgVoltageCurrentStamped,bool) {
 v:=init_Ros2UrinterfacesMsgVoltageCurrentStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current=f64(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/VoltageCurrentStamped value.
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
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgVoltageCurrentStamped :: proc(v: ^Ros2UrinterfacesMsgVoltageCurrentStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=156}
 if !write_Ros2UrinterfacesMsgVoltageCurrentStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=156}
 if !write_Ros2UrinterfacesMsgVoltageCurrentStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/VoltageCurrentStamped value.
// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgVoltageCurrentStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgVoltageCurrentStamped,u32) {
 if len(bytes)<28 || len(bytes)>156 { return Ros2UrinterfacesMsgVoltageCurrentStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgVoltageCurrentStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgVoltageCurrentStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/msg/WorldModelNames value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16592 bytes
// and is identified by UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgWorldModelNames :: struct {
 // @brief urinterfaces/msg/WorldModelNames.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief urinterfaces/msg/WorldModelNames.data: std_msgs/msg/String; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
 field_data: []Ros2Std_msgsMsgString,
}
// @brief Maximum canonical extent of urinterfaces/msg/WorldModelNames in bytes.
// @details The inclusive bound is 16592 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgWorldModelNames_Maximum_Wire_Bytes :: 16592
// @brief Canonical codec identity of urinterfaces/msg/WorldModelNames.
// @details Exact identity UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgWorldModelNames_Codec_Identity :: "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9"
// @brief Original ROS type name for urinterfaces/msg/WorldModelNames.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgWorldModelNames_Native_Type :: "urinterfaces/msg/WorldModelNames"
// @brief Selected original native identity for urinterfaces/msg/WorldModelNames.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesMsgWorldModelNames_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/msg/WorldModelNames.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesMsgWorldModelNames :: proc() -> Ros2UrinterfacesMsgWorldModelNames {
 v: Ros2UrinterfacesMsgWorldModelNames
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_data = nil
 return v
}
// @brief Append every canonical field of urinterfaces/msg/WorldModelNames.
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
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesMsgWorldModelNames :: proc(v: ^Ros2UrinterfacesMsgWorldModelNames, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_data)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data)),4) { return false }
 for e in v.field_data {
 item:=e
 if !write_Ros2Std_msgsMsgString(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/msg/WorldModelNames.
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
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesMsgWorldModelNames :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgWorldModelNames,bool) {
 v:=init_Ros2UrinterfacesMsgWorldModelNames()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_data=make([]Ros2Std_msgsMsgString,int(n),allocator)
 }
 for &e in v.field_data {
 {
 b,ok:=read_Ros2Std_msgsMsgString(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/msg/WorldModelNames value.
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
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesMsgWorldModelNames :: proc(v: ^Ros2UrinterfacesMsgWorldModelNames, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16592}
 if !write_Ros2UrinterfacesMsgWorldModelNames(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16592}
 if !write_Ros2UrinterfacesMsgWorldModelNames(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/msg/WorldModelNames value.
// @details Require the complete 16..16592-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesMsgWorldModelNames :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesMsgWorldModelNames,u32) {
 if len(bytes)<16 || len(bytes)>16592 { return Ros2UrinterfacesMsgWorldModelNames{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesMsgWorldModelNames(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesMsgWorldModelNames{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..100 bytes and
// is identified by UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Request :: struct {
 // @brief urinterfaces/srv/SetAnalogOutput_Request.data: urinterfaces/msg/Analog; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
 field_data: []Ros2UrinterfacesMsgAnalog,
}
// @brief Maximum canonical extent of urinterfaces/srv/SetAnalogOutput_Request in bytes.
// @details The inclusive bound is 100 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Request_Maximum_Wire_Bytes :: 100
// @brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Request.
// @details Exact identity UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Request_Codec_Identity :: "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d"
// @brief Original ROS type name for urinterfaces/srv/SetAnalogOutput_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Request_Native_Type :: "urinterfaces/srv/SetAnalogOutput_Request"
// @brief Selected original native identity for urinterfaces/srv/SetAnalogOutput_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Request_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SetAnalogOutput_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSetAnalogOutput_Request :: proc() -> Ros2UrinterfacesSrvSetAnalogOutput_Request {
 v: Ros2UrinterfacesSrvSetAnalogOutput_Request
 v.field_data = nil
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SetAnalogOutput_Request.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSetAnalogOutput_Request :: proc(v: ^Ros2UrinterfacesSrvSetAnalogOutput_Request, w: ^Writer) -> bool {
 if len(v.field_data)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data)),4) { return false }
 for e in v.field_data {
 item:=e
 if !write_Ros2UrinterfacesMsgAnalog(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Request.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSetAnalogOutput_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetAnalogOutput_Request,bool) {
 v:=init_Ros2UrinterfacesSrvSetAnalogOutput_Request()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_data=make([]Ros2UrinterfacesMsgAnalog,int(n),allocator)
 }
 for &e in v.field_data {
 {
 b,ok:=read_Ros2UrinterfacesMsgAnalog(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SetAnalogOutput_Request value.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSetAnalogOutput_Request :: proc(v: ^Ros2UrinterfacesSrvSetAnalogOutput_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=100}
 if !write_Ros2UrinterfacesSrvSetAnalogOutput_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=100}
 if !write_Ros2UrinterfacesSrvSetAnalogOutput_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Request value.
// @details Require the complete 4..100-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSetAnalogOutput_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetAnalogOutput_Request,u32) {
 if len(bytes)<4 || len(bytes)>100 { return Ros2UrinterfacesSrvSetAnalogOutput_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSetAnalogOutput_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSetAnalogOutput_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Response :: struct {
 // @brief urinterfaces/srv/SetAnalogOutput_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of urinterfaces/srv/SetAnalogOutput_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of urinterfaces/srv/SetAnalogOutput_Response.
// @details Exact identity UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Response_Codec_Identity :: "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e"
// @brief Original ROS type name for urinterfaces/srv/SetAnalogOutput_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Response_Native_Type :: "urinterfaces/srv/SetAnalogOutput_Response"
// @brief Selected original native identity for urinterfaces/srv/SetAnalogOutput_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetAnalogOutput_Response_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SetAnalogOutput_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSetAnalogOutput_Response :: proc() -> Ros2UrinterfacesSrvSetAnalogOutput_Response {
 v: Ros2UrinterfacesSrvSetAnalogOutput_Response
 v.field_success = false
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SetAnalogOutput_Response.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSetAnalogOutput_Response :: proc(v: ^Ros2UrinterfacesSrvSetAnalogOutput_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Response.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSetAnalogOutput_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetAnalogOutput_Response,bool) {
 v:=init_Ros2UrinterfacesSrvSetAnalogOutput_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SetAnalogOutput_Response value.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSetAnalogOutput_Response :: proc(v: ^Ros2UrinterfacesSrvSetAnalogOutput_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2UrinterfacesSrvSetAnalogOutput_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2UrinterfacesSrvSetAnalogOutput_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Response value.
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
// @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSetAnalogOutput_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetAnalogOutput_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2UrinterfacesSrvSetAnalogOutput_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSetAnalogOutput_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSetAnalogOutput_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..36 bytes and is
// identified by UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Request :: struct {
 // @brief urinterfaces/srv/SetDigitalOutput_Request.data: urinterfaces/msg/Digital; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
 field_data: []Ros2UrinterfacesMsgDigital,
}
// @brief Maximum canonical extent of urinterfaces/srv/SetDigitalOutput_Request in bytes.
// @details The inclusive bound is 36 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Request_Maximum_Wire_Bytes :: 36
// @brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Request.
// @details Exact identity UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Request_Codec_Identity :: "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47"
// @brief Original ROS type name for urinterfaces/srv/SetDigitalOutput_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Request_Native_Type :: "urinterfaces/srv/SetDigitalOutput_Request"
// @brief Selected original native identity for urinterfaces/srv/SetDigitalOutput_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Request_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SetDigitalOutput_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSetDigitalOutput_Request :: proc() -> Ros2UrinterfacesSrvSetDigitalOutput_Request {
 v: Ros2UrinterfacesSrvSetDigitalOutput_Request
 v.field_data = nil
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SetDigitalOutput_Request.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSetDigitalOutput_Request :: proc(v: ^Ros2UrinterfacesSrvSetDigitalOutput_Request, w: ^Writer) -> bool {
 if len(v.field_data)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data)),4) { return false }
 for e in v.field_data {
 item:=e
 if !write_Ros2UrinterfacesMsgDigital(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Request.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSetDigitalOutput_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetDigitalOutput_Request,bool) {
 v:=init_Ros2UrinterfacesSrvSetDigitalOutput_Request()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_data=make([]Ros2UrinterfacesMsgDigital,int(n),allocator)
 }
 for &e in v.field_data {
 {
 b,ok:=read_Ros2UrinterfacesMsgDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SetDigitalOutput_Request value.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSetDigitalOutput_Request :: proc(v: ^Ros2UrinterfacesSrvSetDigitalOutput_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=36}
 if !write_Ros2UrinterfacesSrvSetDigitalOutput_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=36}
 if !write_Ros2UrinterfacesSrvSetDigitalOutput_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Request value.
// @details Require the complete 4..36-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSetDigitalOutput_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetDigitalOutput_Request,u32) {
 if len(bytes)<4 || len(bytes)>36 { return Ros2UrinterfacesSrvSetDigitalOutput_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSetDigitalOutput_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSetDigitalOutput_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Response :: struct {
 // @brief urinterfaces/srv/SetDigitalOutput_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of urinterfaces/srv/SetDigitalOutput_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of urinterfaces/srv/SetDigitalOutput_Response.
// @details Exact identity UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Response_Codec_Identity :: "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d"
// @brief Original ROS type name for urinterfaces/srv/SetDigitalOutput_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Response_Native_Type :: "urinterfaces/srv/SetDigitalOutput_Response"
// @brief Selected original native identity for urinterfaces/srv/SetDigitalOutput_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetDigitalOutput_Response_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SetDigitalOutput_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSetDigitalOutput_Response :: proc() -> Ros2UrinterfacesSrvSetDigitalOutput_Response {
 v: Ros2UrinterfacesSrvSetDigitalOutput_Response
 v.field_success = false
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SetDigitalOutput_Response.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSetDigitalOutput_Response :: proc(v: ^Ros2UrinterfacesSrvSetDigitalOutput_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Response.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSetDigitalOutput_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetDigitalOutput_Response,bool) {
 v:=init_Ros2UrinterfacesSrvSetDigitalOutput_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SetDigitalOutput_Response value.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSetDigitalOutput_Response :: proc(v: ^Ros2UrinterfacesSrvSetDigitalOutput_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2UrinterfacesSrvSetDigitalOutput_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2UrinterfacesSrvSetDigitalOutput_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Response value.
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
// @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSetDigitalOutput_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetDigitalOutput_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2UrinterfacesSrvSetDigitalOutput_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSetDigitalOutput_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSetDigitalOutput_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and is
// identified by UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Request :: struct {
 // @brief urinterfaces/srv/SetSpeedFraction_Request.value: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_value: f32,
}
// @brief Maximum canonical extent of urinterfaces/srv/SetSpeedFraction_Request in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Request_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Request.
// @details Exact identity UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Request_Codec_Identity :: "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63"
// @brief Original ROS type name for urinterfaces/srv/SetSpeedFraction_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Request_Native_Type :: "urinterfaces/srv/SetSpeedFraction_Request"
// @brief Selected original native identity for urinterfaces/srv/SetSpeedFraction_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Request_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SetSpeedFraction_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSetSpeedFraction_Request :: proc() -> Ros2UrinterfacesSrvSetSpeedFraction_Request {
 v: Ros2UrinterfacesSrvSetSpeedFraction_Request
 v.field_value = 0
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SetSpeedFraction_Request.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSetSpeedFraction_Request :: proc(v: ^Ros2UrinterfacesSrvSetSpeedFraction_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_value) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Request.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSetSpeedFraction_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetSpeedFraction_Request,bool) {
 v:=init_Ros2UrinterfacesSrvSetSpeedFraction_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_value=f32(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SetSpeedFraction_Request value.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSetSpeedFraction_Request :: proc(v: ^Ros2UrinterfacesSrvSetSpeedFraction_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2UrinterfacesSrvSetSpeedFraction_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2UrinterfacesSrvSetSpeedFraction_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Request value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSetSpeedFraction_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetSpeedFraction_Request,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2UrinterfacesSrvSetSpeedFraction_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSetSpeedFraction_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSetSpeedFraction_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Response :: struct {
 // @brief urinterfaces/srv/SetSpeedFraction_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of urinterfaces/srv/SetSpeedFraction_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of urinterfaces/srv/SetSpeedFraction_Response.
// @details Exact identity UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Response_Codec_Identity :: "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6"
// @brief Original ROS type name for urinterfaces/srv/SetSpeedFraction_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Response_Native_Type :: "urinterfaces/srv/SetSpeedFraction_Response"
// @brief Selected original native identity for urinterfaces/srv/SetSpeedFraction_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSetSpeedFraction_Response_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SetSpeedFraction_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSetSpeedFraction_Response :: proc() -> Ros2UrinterfacesSrvSetSpeedFraction_Response {
 v: Ros2UrinterfacesSrvSetSpeedFraction_Response
 v.field_success = false
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SetSpeedFraction_Response.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSetSpeedFraction_Response :: proc(v: ^Ros2UrinterfacesSrvSetSpeedFraction_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Response.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSetSpeedFraction_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetSpeedFraction_Response,bool) {
 v:=init_Ros2UrinterfacesSrvSetSpeedFraction_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SetSpeedFraction_Response value.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSetSpeedFraction_Response :: proc(v: ^Ros2UrinterfacesSrvSetSpeedFraction_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2UrinterfacesSrvSetSpeedFraction_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2UrinterfacesSrvSetSpeedFraction_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Response value.
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
// @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSetSpeedFraction_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSetSpeedFraction_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2UrinterfacesSrvSetSpeedFraction_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSetSpeedFraction_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSetSpeedFraction_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1028 bytes and
// is identified by UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Request :: struct {
 // @brief urinterfaces/srv/SharedVariablesEditor_Request.request: urinterfaces/msg/JsonStringType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2UrinterfacesMsgJsonStringType,
}
// @brief Maximum canonical extent of urinterfaces/srv/SharedVariablesEditor_Request in bytes.
// @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Request_Maximum_Wire_Bytes :: 1028
// @brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Request.
// @details Exact identity UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Request_Codec_Identity :: "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3"
// @brief Original ROS type name for urinterfaces/srv/SharedVariablesEditor_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Request_Native_Type :: "urinterfaces/srv/SharedVariablesEditor_Request"
// @brief Selected original native identity for urinterfaces/srv/SharedVariablesEditor_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Request_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SharedVariablesEditor_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSharedVariablesEditor_Request :: proc() -> Ros2UrinterfacesSrvSharedVariablesEditor_Request {
 v: Ros2UrinterfacesSrvSharedVariablesEditor_Request
 v.field_request = Ros2UrinterfacesMsgJsonStringType{}
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SharedVariablesEditor_Request.
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSharedVariablesEditor_Request :: proc(v: ^Ros2UrinterfacesSrvSharedVariablesEditor_Request, w: ^Writer) -> bool {
 if !write_Ros2UrinterfacesMsgJsonStringType(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Request.
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSharedVariablesEditor_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSharedVariablesEditor_Request,bool) {
 v:=init_Ros2UrinterfacesSrvSharedVariablesEditor_Request()
 {
 b,ok:=read_Ros2UrinterfacesMsgJsonStringType(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Request value.
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSharedVariablesEditor_Request :: proc(v: ^Ros2UrinterfacesSrvSharedVariablesEditor_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1028}
 if !write_Ros2UrinterfacesSrvSharedVariablesEditor_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1028}
 if !write_Ros2UrinterfacesSrvSharedVariablesEditor_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Request value.
// @details Require the complete 4..1028-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSharedVariablesEditor_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSharedVariablesEditor_Request,u32) {
 if len(bytes)<4 || len(bytes)>1028 { return Ros2UrinterfacesSrvSharedVariablesEditor_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSharedVariablesEditor_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSharedVariablesEditor_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 5..1029 bytes and
// is identified by UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Response :: struct {
 // @brief urinterfaces/srv/SharedVariablesEditor_Response.response: urinterfaces/msg/SharedVariablesEditResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
 field_response: Ros2UrinterfacesMsgSharedVariablesEditResponse,
}
// @brief Maximum canonical extent of urinterfaces/srv/SharedVariablesEditor_Response in bytes.
// @details The inclusive bound is 1029 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Response_Maximum_Wire_Bytes :: 1029
// @brief Canonical codec identity of urinterfaces/srv/SharedVariablesEditor_Response.
// @details Exact identity UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Response_Codec_Identity :: "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea"
// @brief Original ROS type name for urinterfaces/srv/SharedVariablesEditor_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Response_Native_Type :: "urinterfaces/srv/SharedVariablesEditor_Response"
// @brief Selected original native identity for urinterfaces/srv/SharedVariablesEditor_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvSharedVariablesEditor_Response_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/SharedVariablesEditor_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvSharedVariablesEditor_Response :: proc() -> Ros2UrinterfacesSrvSharedVariablesEditor_Response {
 v: Ros2UrinterfacesSrvSharedVariablesEditor_Response
 v.field_response = Ros2UrinterfacesMsgSharedVariablesEditResponse{}
 return v
}
// @brief Append every canonical field of urinterfaces/srv/SharedVariablesEditor_Response.
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvSharedVariablesEditor_Response :: proc(v: ^Ros2UrinterfacesSrvSharedVariablesEditor_Response, w: ^Writer) -> bool {
 if !write_Ros2UrinterfacesMsgSharedVariablesEditResponse(&v.field_response,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Response.
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvSharedVariablesEditor_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSharedVariablesEditor_Response,bool) {
 v:=init_Ros2UrinterfacesSrvSharedVariablesEditor_Response()
 {
 b,ok:=read_Ros2UrinterfacesMsgSharedVariablesEditResponse(r,allocator); if !ok { return v,false }
 v.field_response=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Response value.
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvSharedVariablesEditor_Response :: proc(v: ^Ros2UrinterfacesSrvSharedVariablesEditor_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1029}
 if !write_Ros2UrinterfacesSrvSharedVariablesEditor_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1029}
 if !write_Ros2UrinterfacesSrvSharedVariablesEditor_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Response value.
// @details Require the complete 5..1029-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvSharedVariablesEditor_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvSharedVariablesEditor_Response,u32) {
 if len(bytes)<5 || len(bytes)>1029 { return Ros2UrinterfacesSrvSharedVariablesEditor_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvSharedVariablesEditor_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvSharedVariablesEditor_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Request :: struct {
}
// @brief Maximum canonical extent of urinterfaces/srv/VariablesViewer_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Request.
// @details Exact identity UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Request_Codec_Identity :: "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a"
// @brief Original ROS type name for urinterfaces/srv/VariablesViewer_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Request_Native_Type :: "urinterfaces/srv/VariablesViewer_Request"
// @brief Selected original native identity for urinterfaces/srv/VariablesViewer_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Request_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/VariablesViewer_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvVariablesViewer_Request :: proc() -> Ros2UrinterfacesSrvVariablesViewer_Request {
 v: Ros2UrinterfacesSrvVariablesViewer_Request
 return v
}
// @brief Append every canonical field of urinterfaces/srv/VariablesViewer_Request.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvVariablesViewer_Request :: proc(v: ^Ros2UrinterfacesSrvVariablesViewer_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Request.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvVariablesViewer_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvVariablesViewer_Request,bool) {
 v:=init_Ros2UrinterfacesSrvVariablesViewer_Request()
 return v,true
}
// @brief Encode one complete urinterfaces/srv/VariablesViewer_Request value.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvVariablesViewer_Request :: proc(v: ^Ros2UrinterfacesSrvVariablesViewer_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2UrinterfacesSrvVariablesViewer_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2UrinterfacesSrvVariablesViewer_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Request value.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvVariablesViewer_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvVariablesViewer_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2UrinterfacesSrvVariablesViewer_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvVariablesViewer_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvVariablesViewer_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 16..1168 bytes and
// is identified by UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Response :: struct {
 // @brief urinterfaces/srv/VariablesViewer_Response.response: urinterfaces/msg/VariableUpdate.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
 field_response: Ros2UrinterfacesMsgVariableUpdate,
}
// @brief Maximum canonical extent of urinterfaces/srv/VariablesViewer_Response in bytes.
// @details The inclusive bound is 1168 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Response_Maximum_Wire_Bytes :: 1168
// @brief Canonical codec identity of urinterfaces/srv/VariablesViewer_Response.
// @details Exact identity UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Response_Codec_Identity :: "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2"
// @brief Original ROS type name for urinterfaces/srv/VariablesViewer_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Response_Native_Type :: "urinterfaces/srv/VariablesViewer_Response"
// @brief Selected original native identity for urinterfaces/srv/VariablesViewer_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2UrinterfacesSrvVariablesViewer_Response_Native_Identity :: ""
// @brief Construct the declared defaults of urinterfaces/srv/VariablesViewer_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2UrinterfacesSrvVariablesViewer_Response :: proc() -> Ros2UrinterfacesSrvVariablesViewer_Response {
 v: Ros2UrinterfacesSrvVariablesViewer_Response
 v.field_response = Ros2UrinterfacesMsgVariableUpdate{}
 return v
}
// @brief Append every canonical field of urinterfaces/srv/VariablesViewer_Response.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2UrinterfacesSrvVariablesViewer_Response :: proc(v: ^Ros2UrinterfacesSrvVariablesViewer_Response, w: ^Writer) -> bool {
 if !write_Ros2UrinterfacesMsgVariableUpdate(&v.field_response,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Response.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2UrinterfacesSrvVariablesViewer_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvVariablesViewer_Response,bool) {
 v:=init_Ros2UrinterfacesSrvVariablesViewer_Response()
 {
 b,ok:=read_Ros2UrinterfacesMsgVariableUpdate(r,allocator); if !ok { return v,false }
 v.field_response=b
 }
 return v,true
}
// @brief Encode one complete urinterfaces/srv/VariablesViewer_Response value.
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
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2UrinterfacesSrvVariablesViewer_Response :: proc(v: ^Ros2UrinterfacesSrvVariablesViewer_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1168}
 if !write_Ros2UrinterfacesSrvVariablesViewer_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1168}
 if !write_Ros2UrinterfacesSrvVariablesViewer_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Response value.
// @details Require the complete 16..1168-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2UrinterfacesSrvVariablesViewer_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2UrinterfacesSrvVariablesViewer_Response,u32) {
 if len(bytes)<16 || len(bytes)>1168 { return Ros2UrinterfacesSrvVariablesViewer_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2UrinterfacesSrvVariablesViewer_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2UrinterfacesSrvVariablesViewer_Response{},reader.code }
 return value,0
}
