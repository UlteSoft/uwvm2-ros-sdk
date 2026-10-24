package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 builtin_interfaces/msg/Duration value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration :: struct {
 // @brief builtin_interfaces/msg/Duration.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Codec_Identity :: "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
// @brief Original ROS type name for builtin_interfaces/msg/Duration.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Native_Type :: "builtin_interfaces/msg/Duration"
// @brief Selected original native identity for builtin_interfaces/msg/Duration.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Duration.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
init_Ros2Builtin_interfacesMsgDuration :: proc() -> Ros2Builtin_interfacesMsgDuration {
 v: Ros2Builtin_interfacesMsgDuration
 v.field_sec = 0
 v.field_nanosec = 0
 return v
}
// @brief Append every canonical field of builtin_interfaces/msg/Duration.
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
write_Ros2Builtin_interfacesMsgDuration :: proc(v: ^Ros2Builtin_interfacesMsgDuration, w: ^Writer) -> bool {
 if v.field_nanosec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nanosec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of builtin_interfaces/msg/Duration.
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
read_Ros2Builtin_interfacesMsgDuration :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgDuration,bool) {
 v:=init_Ros2Builtin_interfacesMsgDuration()
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
// @brief Encode one complete builtin_interfaces/msg/Duration value.
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Builtin_interfacesMsgDuration :: proc(v: ^Ros2Builtin_interfacesMsgDuration, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Builtin_interfacesMsgDuration(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Builtin_interfacesMsgDuration(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete builtin_interfaces/msg/Duration value.
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Builtin_interfacesMsgDuration :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgDuration,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgDuration{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgDuration(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgDuration{},reader.code }
 return value,0
}
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
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime :: struct {
 // @brief builtin_interfaces/msg/Time.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Time.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Time.
// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Codec_Identity :: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
// @brief Original ROS type name for builtin_interfaces/msg/Time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Native_Type :: "builtin_interfaces/msg/Time"
// @brief Selected original native identity for builtin_interfaces/msg/Time.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Builtin_interfacesMsgTime :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgTime{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgTime(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgTime{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/ColorRGBA value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
// and is identified by UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgColorRGBA :: struct {
 // @brief std_msgs/msg/ColorRGBA.r: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
 field_r: f32,
 // @brief std_msgs/msg/ColorRGBA.g: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
 field_g: f32,
 // @brief std_msgs/msg/ColorRGBA.b: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
 field_b: f32,
 // @brief std_msgs/msg/ColorRGBA.a: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
 field_a: f32,
}
// @brief Maximum canonical extent of std_msgs/msg/ColorRGBA in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgColorRGBA_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of std_msgs/msg/ColorRGBA.
// @details Exact identity UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgColorRGBA_Codec_Identity :: "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2"
// @brief Original ROS type name for std_msgs/msg/ColorRGBA.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgColorRGBA_Native_Type :: "std_msgs/msg/ColorRGBA"
// @brief Selected original native identity for std_msgs/msg/ColorRGBA.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgColorRGBA_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/ColorRGBA.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
init_Ros2Std_msgsMsgColorRGBA :: proc() -> Ros2Std_msgsMsgColorRGBA {
 v: Ros2Std_msgsMsgColorRGBA
 v.field_r = 0
 v.field_g = 0
 v.field_b = 0
 v.field_a = 0
 return v
}
// @brief Append every canonical field of std_msgs/msg/ColorRGBA.
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
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
write_Ros2Std_msgsMsgColorRGBA :: proc(v: ^Ros2Std_msgsMsgColorRGBA, w: ^Writer) -> bool {
 if !put_float32(w,v.field_r) { return false }
 if !put_float32(w,v.field_g) { return false }
 if !put_float32(w,v.field_b) { return false }
 if !put_float32(w,v.field_a) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/ColorRGBA.
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
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
read_Ros2Std_msgsMsgColorRGBA :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgColorRGBA,bool) {
 v:=init_Ros2Std_msgsMsgColorRGBA()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_r=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_g=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_b=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_a=f32(b)
 }
 return v,true
}
// @brief Encode one complete std_msgs/msg/ColorRGBA value.
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
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Std_msgsMsgColorRGBA :: proc(v: ^Ros2Std_msgsMsgColorRGBA, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Std_msgsMsgColorRGBA(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Std_msgsMsgColorRGBA(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/ColorRGBA value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Std_msgsMsgColorRGBA :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgColorRGBA,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Std_msgsMsgColorRGBA{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgColorRGBA(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgColorRGBA{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedFixedColorParams value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
// and is identified by UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFixedColorParams :: struct {
 // @brief pal_device_msgs/msg/LedFixedColorParams.color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
 field_color: Ros2Std_msgsMsgColorRGBA,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedFixedColorParams in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFixedColorParams_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of pal_device_msgs/msg/LedFixedColorParams.
// @details Exact identity UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFixedColorParams_Codec_Identity :: "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac"
// @brief Original ROS type name for pal_device_msgs/msg/LedFixedColorParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFixedColorParams_Native_Type :: "pal_device_msgs/msg/LedFixedColorParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedFixedColorParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFixedColorParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedFixedColorParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedFixedColorParams :: proc() -> Ros2Pal_device_msgsMsgLedFixedColorParams {
 v: Ros2Pal_device_msgsMsgLedFixedColorParams
 v.field_color = Ros2Std_msgsMsgColorRGBA{}
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedFixedColorParams.
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
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedFixedColorParams :: proc(v: ^Ros2Pal_device_msgsMsgLedFixedColorParams, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_color,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedFixedColorParams.
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
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedFixedColorParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedFixedColorParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedFixedColorParams()
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_color=b
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedFixedColorParams value.
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
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedFixedColorParams :: proc(v: ^Ros2Pal_device_msgsMsgLedFixedColorParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Pal_device_msgsMsgLedFixedColorParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Pal_device_msgsMsgLedFixedColorParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedFixedColorParams value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedFixedColorParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedFixedColorParams,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Pal_device_msgsMsgLedFixedColorParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedFixedColorParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedFixedColorParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedRainbowParams value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedRainbowParams :: struct {
 // @brief pal_device_msgs/msg/LedRainbowParams.transition_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
 field_transition_duration: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedRainbowParams in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedRainbowParams_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of pal_device_msgs/msg/LedRainbowParams.
// @details Exact identity UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedRainbowParams_Codec_Identity :: "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2"
// @brief Original ROS type name for pal_device_msgs/msg/LedRainbowParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedRainbowParams_Native_Type :: "pal_device_msgs/msg/LedRainbowParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedRainbowParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedRainbowParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedRainbowParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedRainbowParams :: proc() -> Ros2Pal_device_msgsMsgLedRainbowParams {
 v: Ros2Pal_device_msgsMsgLedRainbowParams
 v.field_transition_duration = Ros2Builtin_interfacesMsgDuration{}
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedRainbowParams.
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
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedRainbowParams :: proc(v: ^Ros2Pal_device_msgsMsgLedRainbowParams, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_transition_duration,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedRainbowParams.
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
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedRainbowParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedRainbowParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedRainbowParams()
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_transition_duration=b
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedRainbowParams value.
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
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedRainbowParams :: proc(v: ^Ros2Pal_device_msgsMsgLedRainbowParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Pal_device_msgsMsgLedRainbowParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Pal_device_msgsMsgLedRainbowParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedRainbowParams value.
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
// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedRainbowParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedRainbowParams,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Pal_device_msgsMsgLedRainbowParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedRainbowParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedRainbowParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedFadeParams value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 41..41 bytes
// and is identified by UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFadeParams :: struct {
 // @brief pal_device_msgs/msg/LedFadeParams.first_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
 field_first_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedFadeParams.second_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
 field_second_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedFadeParams.transition_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
 field_transition_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/msg/LedFadeParams.reverse_fade: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
 field_reverse_fade: bool,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedFadeParams in bytes.
// @details The inclusive bound is 41 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFadeParams_Maximum_Wire_Bytes :: 41
// @brief Canonical codec identity of pal_device_msgs/msg/LedFadeParams.
// @details Exact identity UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFadeParams_Codec_Identity :: "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5"
// @brief Original ROS type name for pal_device_msgs/msg/LedFadeParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFadeParams_Native_Type :: "pal_device_msgs/msg/LedFadeParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedFadeParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFadeParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedFadeParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedFadeParams :: proc() -> Ros2Pal_device_msgsMsgLedFadeParams {
 v: Ros2Pal_device_msgsMsgLedFadeParams
 v.field_first_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_second_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_transition_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_reverse_fade = false
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedFadeParams.
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
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedFadeParams :: proc(v: ^Ros2Pal_device_msgsMsgLedFadeParams, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_first_color,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_second_color,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_transition_duration,w) { return false }
 if !put_bool(w,v.field_reverse_fade) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedFadeParams.
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
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedFadeParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedFadeParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedFadeParams()
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_first_color=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_second_color=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_transition_duration=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_reverse_fade=bool(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedFadeParams value.
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
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedFadeParams :: proc(v: ^Ros2Pal_device_msgsMsgLedFadeParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=41}
 if !write_Ros2Pal_device_msgsMsgLedFadeParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=41}
 if !write_Ros2Pal_device_msgsMsgLedFadeParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedFadeParams value.
// @details Require the complete 41..41-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedFadeParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedFadeParams,u32) {
 if len(bytes)<41 || len(bytes)>41 { return Ros2Pal_device_msgsMsgLedFadeParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedFadeParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedFadeParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedBlinkParams value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
// and is identified by UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedBlinkParams :: struct {
 // @brief pal_device_msgs/msg/LedBlinkParams.first_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
 field_first_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedBlinkParams.second_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
 field_second_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedBlinkParams.first_color_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
 field_first_color_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/msg/LedBlinkParams.second_color_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
 field_second_color_duration: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedBlinkParams in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedBlinkParams_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of pal_device_msgs/msg/LedBlinkParams.
// @details Exact identity UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedBlinkParams_Codec_Identity :: "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd"
// @brief Original ROS type name for pal_device_msgs/msg/LedBlinkParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedBlinkParams_Native_Type :: "pal_device_msgs/msg/LedBlinkParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedBlinkParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedBlinkParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedBlinkParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedBlinkParams :: proc() -> Ros2Pal_device_msgsMsgLedBlinkParams {
 v: Ros2Pal_device_msgsMsgLedBlinkParams
 v.field_first_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_second_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_first_color_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_second_color_duration = Ros2Builtin_interfacesMsgDuration{}
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedBlinkParams.
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
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedBlinkParams :: proc(v: ^Ros2Pal_device_msgsMsgLedBlinkParams, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_first_color,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_second_color,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_first_color_duration,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_second_color_duration,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedBlinkParams.
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
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedBlinkParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedBlinkParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedBlinkParams()
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_first_color=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_second_color=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_first_color_duration=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_second_color_duration=b
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedBlinkParams value.
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
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedBlinkParams :: proc(v: ^Ros2Pal_device_msgsMsgLedBlinkParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Pal_device_msgsMsgLedBlinkParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Pal_device_msgsMsgLedBlinkParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedBlinkParams value.
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
// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedBlinkParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedBlinkParams,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Pal_device_msgsMsgLedBlinkParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedBlinkParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedBlinkParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedProgressParams value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
// and is identified by UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedProgressParams :: struct {
 // @brief pal_device_msgs/msg/LedProgressParams.first_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
 field_first_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedProgressParams.second_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
 field_second_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedProgressParams.percentage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
 field_percentage: f32,
 // @brief pal_device_msgs/msg/LedProgressParams.led_offset: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
 field_led_offset: f32,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedProgressParams in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedProgressParams_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of pal_device_msgs/msg/LedProgressParams.
// @details Exact identity UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedProgressParams_Codec_Identity :: "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0"
// @brief Original ROS type name for pal_device_msgs/msg/LedProgressParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedProgressParams_Native_Type :: "pal_device_msgs/msg/LedProgressParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedProgressParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedProgressParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedProgressParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedProgressParams :: proc() -> Ros2Pal_device_msgsMsgLedProgressParams {
 v: Ros2Pal_device_msgsMsgLedProgressParams
 v.field_first_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_second_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_percentage = 0
 v.field_led_offset = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedProgressParams.
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
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedProgressParams :: proc(v: ^Ros2Pal_device_msgsMsgLedProgressParams, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_first_color,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_second_color,w) { return false }
 if !put_float32(w,v.field_percentage) { return false }
 if !put_float32(w,v.field_led_offset) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedProgressParams.
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
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedProgressParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedProgressParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedProgressParams()
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_first_color=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_second_color=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_percentage=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_led_offset=f32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedProgressParams value.
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
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedProgressParams :: proc(v: ^Ros2Pal_device_msgsMsgLedProgressParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros2Pal_device_msgsMsgLedProgressParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros2Pal_device_msgsMsgLedProgressParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedProgressParams value.
// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedProgressParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedProgressParams,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros2Pal_device_msgsMsgLedProgressParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedProgressParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedProgressParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedFlowParams value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
// and is identified by UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFlowParams :: struct {
 // @brief pal_device_msgs/msg/LedFlowParams.first_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
 field_first_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedFlowParams.second_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
 field_second_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/msg/LedFlowParams.percentage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
 field_percentage: f32,
 // @brief pal_device_msgs/msg/LedFlowParams.velocity: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
 field_velocity: f32,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedFlowParams in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFlowParams_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of pal_device_msgs/msg/LedFlowParams.
// @details Exact identity UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFlowParams_Codec_Identity :: "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561"
// @brief Original ROS type name for pal_device_msgs/msg/LedFlowParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFlowParams_Native_Type :: "pal_device_msgs/msg/LedFlowParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedFlowParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedFlowParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedFlowParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedFlowParams :: proc() -> Ros2Pal_device_msgsMsgLedFlowParams {
 v: Ros2Pal_device_msgsMsgLedFlowParams
 v.field_first_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_second_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_percentage = 0
 v.field_velocity = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedFlowParams.
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
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedFlowParams :: proc(v: ^Ros2Pal_device_msgsMsgLedFlowParams, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_first_color,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_second_color,w) { return false }
 if !put_float32(w,v.field_percentage) { return false }
 if !put_float32(w,v.field_velocity) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedFlowParams.
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
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedFlowParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedFlowParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedFlowParams()
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_first_color=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_second_color=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_percentage=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_velocity=f32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedFlowParams value.
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
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedFlowParams :: proc(v: ^Ros2Pal_device_msgsMsgLedFlowParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros2Pal_device_msgsMsgLedFlowParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros2Pal_device_msgsMsgLedFlowParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedFlowParams value.
// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedFlowParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedFlowParams,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros2Pal_device_msgsMsgLedFlowParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedFlowParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedFlowParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedPreProgrammedParams value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedPreProgrammedParams :: struct {
 // @brief pal_device_msgs/msg/LedPreProgrammedParams.preprogrammed_id: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
 field_preprogrammed_id: u8,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedPreProgrammedParams in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedPreProgrammedParams_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of pal_device_msgs/msg/LedPreProgrammedParams.
// @details Exact identity UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedPreProgrammedParams_Codec_Identity :: "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be"
// @brief Original ROS type name for pal_device_msgs/msg/LedPreProgrammedParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedPreProgrammedParams_Native_Type :: "pal_device_msgs/msg/LedPreProgrammedParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedPreProgrammedParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedPreProgrammedParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedPreProgrammedParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedPreProgrammedParams :: proc() -> Ros2Pal_device_msgsMsgLedPreProgrammedParams {
 v: Ros2Pal_device_msgsMsgLedPreProgrammedParams
 v.field_preprogrammed_id = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedPreProgrammedParams.
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
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedPreProgrammedParams :: proc(v: ^Ros2Pal_device_msgsMsgLedPreProgrammedParams, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_preprogrammed_id),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedPreProgrammedParams.
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
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedPreProgrammedParams :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsMsgLedPreProgrammedParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedPreProgrammedParams()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_preprogrammed_id=u8(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedPreProgrammedParams value.
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
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedPreProgrammedParams :: proc(v: ^Ros2Pal_device_msgsMsgLedPreProgrammedParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Pal_device_msgsMsgLedPreProgrammedParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Pal_device_msgsMsgLedPreProgrammedParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedPreProgrammedParams value.
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
// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedPreProgrammedParams :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsMsgLedPreProgrammedParams,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Pal_device_msgsMsgLedPreProgrammedParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedPreProgrammedParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedPreProgrammedParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedEffectViaTopicParams value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
// and is identified by UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectViaTopicParams :: struct {
 // @brief pal_device_msgs/msg/LedEffectViaTopicParams.topic_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
 field_topic_name: string,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedEffectViaTopicParams in bytes.
// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectViaTopicParams_Maximum_Wire_Bytes :: 132
// @brief Canonical codec identity of pal_device_msgs/msg/LedEffectViaTopicParams.
// @details Exact identity UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectViaTopicParams_Codec_Identity :: "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485"
// @brief Original ROS type name for pal_device_msgs/msg/LedEffectViaTopicParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectViaTopicParams_Native_Type :: "pal_device_msgs/msg/LedEffectViaTopicParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedEffectViaTopicParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectViaTopicParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedEffectViaTopicParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedEffectViaTopicParams :: proc() -> Ros2Pal_device_msgsMsgLedEffectViaTopicParams {
 v: Ros2Pal_device_msgsMsgLedEffectViaTopicParams
 v.field_topic_name = ""
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedEffectViaTopicParams.
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
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams :: proc(v: ^Ros2Pal_device_msgsMsgLedEffectViaTopicParams, w: ^Writer) -> bool {
 if !put_string(w,v.field_topic_name,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedEffectViaTopicParams.
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
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedEffectViaTopicParams :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsMsgLedEffectViaTopicParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedEffectViaTopicParams()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_topic_name=b
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedEffectViaTopicParams value.
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
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedEffectViaTopicParams :: proc(v: ^Ros2Pal_device_msgsMsgLedEffectViaTopicParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=132}
 if !write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=132}
 if !write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedEffectViaTopicParams value.
// @details Require the complete 4..132-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedEffectViaTopicParams :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsMsgLedEffectViaTopicParams,u32) {
 if len(bytes)<4 || len(bytes)>132 { return Ros2Pal_device_msgsMsgLedEffectViaTopicParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedEffectViaTopicParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedDataArrayParams value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes and
// is identified by UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedDataArrayParams :: struct {
 // @brief pal_device_msgs/msg/LedDataArrayParams.data: std_msgs/msg/ColorRGBA; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
 field_data: []Ros2Std_msgsMsgColorRGBA,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedDataArrayParams in bytes.
// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedDataArrayParams_Maximum_Wire_Bytes :: 68
// @brief Canonical codec identity of pal_device_msgs/msg/LedDataArrayParams.
// @details Exact identity UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedDataArrayParams_Codec_Identity :: "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349"
// @brief Original ROS type name for pal_device_msgs/msg/LedDataArrayParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedDataArrayParams_Native_Type :: "pal_device_msgs/msg/LedDataArrayParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedDataArrayParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedDataArrayParams_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/LedDataArrayParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedDataArrayParams :: proc() -> Ros2Pal_device_msgsMsgLedDataArrayParams {
 v: Ros2Pal_device_msgsMsgLedDataArrayParams
 v.field_data = nil
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedDataArrayParams.
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
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedDataArrayParams :: proc(v: ^Ros2Pal_device_msgsMsgLedDataArrayParams, w: ^Writer) -> bool {
 if len(v.field_data)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data)),4) { return false }
 for e in v.field_data {
 item:=e
 if !write_Ros2Std_msgsMsgColorRGBA(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedDataArrayParams.
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
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedDataArrayParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedDataArrayParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedDataArrayParams()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_data=make([]Ros2Std_msgsMsgColorRGBA,int(n),allocator)
 }
 for &e in v.field_data {
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedDataArrayParams value.
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
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedDataArrayParams :: proc(v: ^Ros2Pal_device_msgsMsgLedDataArrayParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=68}
 if !write_Ros2Pal_device_msgsMsgLedDataArrayParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=68}
 if !write_Ros2Pal_device_msgsMsgLedDataArrayParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedDataArrayParams value.
// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedDataArrayParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedDataArrayParams,u32) {
 if len(bytes)<4 || len(bytes)>68 { return Ros2Pal_device_msgsMsgLedDataArrayParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedDataArrayParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedDataArrayParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedEffectParams value.
// @details All 10 declared fields are retained in source order. The canonical representation occupies 203..395 bytes
// and is identified by UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams :: struct {
 // @brief pal_device_msgs/msg/LedEffectParams.effect_type: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_effect_type: u8,
 // @brief pal_device_msgs/msg/LedEffectParams.fixed_color: pal_device_msgs/msg/LedFixedColorParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_fixed_color: Ros2Pal_device_msgsMsgLedFixedColorParams,
 // @brief pal_device_msgs/msg/LedEffectParams.rainbow: pal_device_msgs/msg/LedRainbowParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_rainbow: Ros2Pal_device_msgsMsgLedRainbowParams,
 // @brief pal_device_msgs/msg/LedEffectParams.fade: pal_device_msgs/msg/LedFadeParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_fade: Ros2Pal_device_msgsMsgLedFadeParams,
 // @brief pal_device_msgs/msg/LedEffectParams.blink: pal_device_msgs/msg/LedBlinkParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_blink: Ros2Pal_device_msgsMsgLedBlinkParams,
 // @brief pal_device_msgs/msg/LedEffectParams.progress: pal_device_msgs/msg/LedProgressParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_progress: Ros2Pal_device_msgsMsgLedProgressParams,
 // @brief pal_device_msgs/msg/LedEffectParams.flow: pal_device_msgs/msg/LedFlowParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_flow: Ros2Pal_device_msgsMsgLedFlowParams,
 // @brief pal_device_msgs/msg/LedEffectParams.preprogrammed: pal_device_msgs/msg/LedPreProgrammedParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_preprogrammed: Ros2Pal_device_msgsMsgLedPreProgrammedParams,
 // @brief pal_device_msgs/msg/LedEffectParams.effect_via_topic: pal_device_msgs/msg/LedEffectViaTopicParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_effect_via_topic: Ros2Pal_device_msgsMsgLedEffectViaTopicParams,
 // @brief pal_device_msgs/msg/LedEffectParams.data_array: pal_device_msgs/msg/LedDataArrayParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
 field_data_array: Ros2Pal_device_msgsMsgLedDataArrayParams,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedEffectParams in bytes.
// @details The inclusive bound is 395 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_Maximum_Wire_Bytes :: 395
// @brief Canonical codec identity of pal_device_msgs/msg/LedEffectParams.
// @details Exact identity UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_Codec_Identity :: "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848"
// @brief Original ROS type name for pal_device_msgs/msg/LedEffectParams.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_Native_Type :: "pal_device_msgs/msg/LedEffectParams"
// @brief Selected original native identity for pal_device_msgs/msg/LedEffectParams.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_Native_Identity :: ""
// @brief pal_device_msgs/msg/LedEffectParams.FIXED_COLOR: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_FIXED_COLOR :: u8(0)
// @brief pal_device_msgs/msg/LedEffectParams.RAINBOW: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_RAINBOW :: u8(1)
// @brief pal_device_msgs/msg/LedEffectParams.FADE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_FADE :: u8(2)
// @brief pal_device_msgs/msg/LedEffectParams.BLINK: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_BLINK :: u8(3)
// @brief pal_device_msgs/msg/LedEffectParams.PROGRESS: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_PROGRESS :: u8(4)
// @brief pal_device_msgs/msg/LedEffectParams.FLOW: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_FLOW :: u8(5)
// @brief pal_device_msgs/msg/LedEffectParams.PREPROGRAMMED_EFFECT: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_PREPROGRAMMED_EFFECT :: u8(6)
// @brief pal_device_msgs/msg/LedEffectParams.EFFECT_VIA_TOPIC: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_EFFECT_VIA_TOPIC :: u8(7)
// @brief pal_device_msgs/msg/LedEffectParams.DATA_ARRAY: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedEffectParams_DATA_ARRAY :: u8(8)
// @brief Construct the declared defaults of pal_device_msgs/msg/LedEffectParams.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedEffectParams :: proc() -> Ros2Pal_device_msgsMsgLedEffectParams {
 v: Ros2Pal_device_msgsMsgLedEffectParams
 v.field_effect_type = 0
 v.field_fixed_color = Ros2Pal_device_msgsMsgLedFixedColorParams{}
 v.field_rainbow = Ros2Pal_device_msgsMsgLedRainbowParams{}
 v.field_fade = Ros2Pal_device_msgsMsgLedFadeParams{}
 v.field_blink = Ros2Pal_device_msgsMsgLedBlinkParams{}
 v.field_progress = Ros2Pal_device_msgsMsgLedProgressParams{}
 v.field_flow = Ros2Pal_device_msgsMsgLedFlowParams{}
 v.field_preprogrammed = Ros2Pal_device_msgsMsgLedPreProgrammedParams{}
 v.field_effect_via_topic = Ros2Pal_device_msgsMsgLedEffectViaTopicParams{}
 v.field_data_array = Ros2Pal_device_msgsMsgLedDataArrayParams{}
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedEffectParams.
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
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedEffectParams :: proc(v: ^Ros2Pal_device_msgsMsgLedEffectParams, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_effect_type),1) { return false }
 if !write_Ros2Pal_device_msgsMsgLedFixedColorParams(&v.field_fixed_color,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedRainbowParams(&v.field_rainbow,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedFadeParams(&v.field_fade,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedBlinkParams(&v.field_blink,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedProgressParams(&v.field_progress,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedFlowParams(&v.field_flow,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedPreProgrammedParams(&v.field_preprogrammed,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(&v.field_effect_via_topic,w) { return false }
 if !write_Ros2Pal_device_msgsMsgLedDataArrayParams(&v.field_data_array,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedEffectParams.
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
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedEffectParams :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedEffectParams,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedEffectParams()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_effect_type=u8(b)
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedFixedColorParams(r,allocator); if !ok { return v,false }
 v.field_fixed_color=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedRainbowParams(r,allocator); if !ok { return v,false }
 v.field_rainbow=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedFadeParams(r,allocator); if !ok { return v,false }
 v.field_fade=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedBlinkParams(r,allocator); if !ok { return v,false }
 v.field_blink=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedProgressParams(r,allocator); if !ok { return v,false }
 v.field_progress=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedFlowParams(r,allocator); if !ok { return v,false }
 v.field_flow=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedPreProgrammedParams(r,allocator); if !ok { return v,false }
 v.field_preprogrammed=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedEffectViaTopicParams(r,allocator); if !ok { return v,false }
 v.field_effect_via_topic=b
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedDataArrayParams(r,allocator); if !ok { return v,false }
 v.field_data_array=b
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedEffectParams value.
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
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedEffectParams :: proc(v: ^Ros2Pal_device_msgsMsgLedEffectParams, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=395}
 if !write_Ros2Pal_device_msgsMsgLedEffectParams(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=395}
 if !write_Ros2Pal_device_msgsMsgLedEffectParams(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedEffectParams value.
// @details Require the complete 203..395-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedEffectParams :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedEffectParams,u32) {
 if len(bytes)<203 || len(bytes)>395 { return Ros2Pal_device_msgsMsgLedEffectParams{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedEffectParams(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedEffectParams{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Goal value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 216..472 bytes
// and is identified by UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Goal :: struct {
 // @brief pal_device_msgs/action/DoTimedLedEffect_Goal.devices: uint32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
 field_devices: []u32,
 // @brief pal_device_msgs/action/DoTimedLedEffect_Goal.params: pal_device_msgs/msg/LedEffectParams.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
 field_params: Ros2Pal_device_msgsMsgLedEffectParams,
 // @brief pal_device_msgs/action/DoTimedLedEffect_Goal.effect_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
 field_effect_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/action/DoTimedLedEffect_Goal.priority: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
 field_priority: u8,
}
// @brief Maximum canonical extent of pal_device_msgs/action/DoTimedLedEffect_Goal in bytes.
// @details The inclusive bound is 472 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_Maximum_Wire_Bytes :: 472
// @brief Canonical codec identity of pal_device_msgs/action/DoTimedLedEffect_Goal.
// @details Exact identity UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_Codec_Identity :: "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2"
// @brief Original ROS type name for pal_device_msgs/action/DoTimedLedEffect_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_Native_Type :: "pal_device_msgs/action/DoTimedLedEffect_Goal"
// @brief Selected original native identity for pal_device_msgs/action/DoTimedLedEffect_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/action/DoTimedLedEffect_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal :: proc() -> Ros2Pal_device_msgsActionDoTimedLedEffect_Goal {
 v: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
 v.field_devices = nil
 v.field_params = Ros2Pal_device_msgsMsgLedEffectParams{}
 v.field_effect_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_priority = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/action/DoTimedLedEffect_Goal.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal :: proc(v: ^Ros2Pal_device_msgsActionDoTimedLedEffect_Goal, w: ^Writer) -> bool {
 if len(v.field_devices)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_devices)),4) { return false }
 for e in v.field_devices {
 if !put_integer(w,u64(e),4) { return false }
 }
 if !write_Ros2Pal_device_msgsMsgLedEffectParams(&v.field_params,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_effect_duration,w) { return false }
 if !put_integer(w,u64(v.field_priority),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/action/DoTimedLedEffect_Goal.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsActionDoTimedLedEffect_Goal,bool) {
 v:=init_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_devices=make([]u32,int(n),allocator)
 }
 for &e in v.field_devices {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedEffectParams(r,allocator); if !ok { return v,false }
 v.field_params=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_effect_duration=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_priority=u8(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/action/DoTimedLedEffect_Goal value.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal :: proc(v: ^Ros2Pal_device_msgsActionDoTimedLedEffect_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=472}
 if !write_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=472}
 if !write_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/action/DoTimedLedEffect_Goal value.
// @details Require the complete 216..472-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsActionDoTimedLedEffect_Goal,u32) {
 if len(bytes)<216 || len(bytes)>472 { return Ros2Pal_device_msgsActionDoTimedLedEffect_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsActionDoTimedLedEffect_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsActionDoTimedLedEffect_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Result value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Result :: struct {
}
// @brief Maximum canonical extent of pal_device_msgs/action/DoTimedLedEffect_Result in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Result_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of pal_device_msgs/action/DoTimedLedEffect_Result.
// @details Exact identity UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Result_Codec_Identity :: "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9"
// @brief Original ROS type name for pal_device_msgs/action/DoTimedLedEffect_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Result_Native_Type :: "pal_device_msgs/action/DoTimedLedEffect_Result"
// @brief Selected original native identity for pal_device_msgs/action/DoTimedLedEffect_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Result_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/action/DoTimedLedEffect_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsActionDoTimedLedEffect_Result :: proc() -> Ros2Pal_device_msgsActionDoTimedLedEffect_Result {
 v: Ros2Pal_device_msgsActionDoTimedLedEffect_Result
 return v
}
// @brief Append every canonical field of pal_device_msgs/action/DoTimedLedEffect_Result.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsActionDoTimedLedEffect_Result :: proc(v: ^Ros2Pal_device_msgsActionDoTimedLedEffect_Result, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/action/DoTimedLedEffect_Result.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsActionDoTimedLedEffect_Result :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsActionDoTimedLedEffect_Result,bool) {
 v:=init_Ros2Pal_device_msgsActionDoTimedLedEffect_Result()
 return v,true
}
// @brief Encode one complete pal_device_msgs/action/DoTimedLedEffect_Result value.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsActionDoTimedLedEffect_Result :: proc(v: ^Ros2Pal_device_msgsActionDoTimedLedEffect_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/action/DoTimedLedEffect_Result value.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsActionDoTimedLedEffect_Result :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsActionDoTimedLedEffect_Result,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Pal_device_msgsActionDoTimedLedEffect_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsActionDoTimedLedEffect_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsActionDoTimedLedEffect_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Feedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback :: struct {
}
// @brief Maximum canonical extent of pal_device_msgs/action/DoTimedLedEffect_Feedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of pal_device_msgs/action/DoTimedLedEffect_Feedback.
// @details Exact identity UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_Codec_Identity :: "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d"
// @brief Original ROS type name for pal_device_msgs/action/DoTimedLedEffect_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_Native_Type :: "pal_device_msgs/action/DoTimedLedEffect_Feedback"
// @brief Selected original native identity for pal_device_msgs/action/DoTimedLedEffect_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/action/DoTimedLedEffect_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback :: proc() -> Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback {
 v: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
 return v
}
// @brief Append every canonical field of pal_device_msgs/action/DoTimedLedEffect_Feedback.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback :: proc(v: ^Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/action/DoTimedLedEffect_Feedback.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback,bool) {
 v:=init_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback()
 return v,true
}
// @brief Encode one complete pal_device_msgs/action/DoTimedLedEffect_Feedback value.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback :: proc(v: ^Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/action/DoTimedLedEffect_Feedback value.
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
// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/BatteryState value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..5 bytes and
// is identified by UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState :: struct {
 // @brief pal_device_msgs/msg/BatteryState.charge_state: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
 field_charge_state: i8,
 // @brief pal_device_msgs/msg/BatteryState.battery_percentage: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
 field_battery_percentage: f32,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/BatteryState in bytes.
// @details The inclusive bound is 5 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_Maximum_Wire_Bytes :: 5
// @brief Canonical codec identity of pal_device_msgs/msg/BatteryState.
// @details Exact identity UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_Codec_Identity :: "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904"
// @brief Original ROS type name for pal_device_msgs/msg/BatteryState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_Native_Type :: "pal_device_msgs/msg/BatteryState"
// @brief Selected original native identity for pal_device_msgs/msg/BatteryState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_Native_Identity :: ""
// @brief pal_device_msgs/msg/BatteryState.FULL: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_FULL :: u8(5)
// @brief pal_device_msgs/msg/BatteryState.HIGH: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_HIGH :: u8(4)
// @brief pal_device_msgs/msg/BatteryState.MEDIUM: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_MEDIUM :: u8(3)
// @brief pal_device_msgs/msg/BatteryState.LOW: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_LOW :: u8(2)
// @brief pal_device_msgs/msg/BatteryState.CRITICAL_LOW: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBatteryState_CRITICAL_LOW :: u8(1)
// @brief Construct the declared defaults of pal_device_msgs/msg/BatteryState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgBatteryState :: proc() -> Ros2Pal_device_msgsMsgBatteryState {
 v: Ros2Pal_device_msgsMsgBatteryState
 v.field_charge_state = 0
 v.field_battery_percentage = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/BatteryState.
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
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgBatteryState :: proc(v: ^Ros2Pal_device_msgsMsgBatteryState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_charge_state),1) { return false }
 if !put_float32(w,v.field_battery_percentage) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/BatteryState.
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
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgBatteryState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgBatteryState,bool) {
 v:=init_Ros2Pal_device_msgsMsgBatteryState()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_charge_state=i8(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_battery_percentage=f32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/BatteryState value.
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
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgBatteryState :: proc(v: ^Ros2Pal_device_msgsMsgBatteryState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=5}
 if !write_Ros2Pal_device_msgsMsgBatteryState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=5}
 if !write_Ros2Pal_device_msgsMsgBatteryState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/BatteryState value.
// @details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgBatteryState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgBatteryState,u32) {
 if len(bytes)<5 || len(bytes)>5 { return Ros2Pal_device_msgsMsgBatteryState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgBatteryState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgBatteryState{},reader.code }
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
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader :: struct {
 // @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
 // @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of std_msgs/msg/Header.
// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
// @brief Original ROS type name for std_msgs/msg/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Native_Type :: "std_msgs/msg/Header"
// @brief Selected original native identity for std_msgs/msg/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Std_msgsMsgHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgHeader,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Std_msgsMsgHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/Bumper value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes
// and is identified by UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBumper :: struct {
 // @brief pal_device_msgs/msg/Bumper.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief pal_device_msgs/msg/Bumper.is_pressed: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
 field_is_pressed: bool,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/Bumper in bytes.
// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBumper_Maximum_Wire_Bytes :: 141
// @brief Canonical codec identity of pal_device_msgs/msg/Bumper.
// @details Exact identity UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBumper_Codec_Identity :: "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022"
// @brief Original ROS type name for pal_device_msgs/msg/Bumper.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBumper_Native_Type :: "pal_device_msgs/msg/Bumper"
// @brief Selected original native identity for pal_device_msgs/msg/Bumper.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgBumper_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/msg/Bumper.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgBumper :: proc() -> Ros2Pal_device_msgsMsgBumper {
 v: Ros2Pal_device_msgsMsgBumper
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_is_pressed = false
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/Bumper.
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
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgBumper :: proc(v: ^Ros2Pal_device_msgsMsgBumper, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_bool(w,v.field_is_pressed) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/Bumper.
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
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgBumper :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgBumper,bool) {
 v:=init_Ros2Pal_device_msgsMsgBumper()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_pressed=bool(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/Bumper value.
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
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgBumper :: proc(v: ^Ros2Pal_device_msgsMsgBumper, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=141}
 if !write_Ros2Pal_device_msgsMsgBumper(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=141}
 if !write_Ros2Pal_device_msgsMsgBumper(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/Bumper value.
// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgBumper :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgBumper,u32) {
 if len(bytes)<13 || len(bytes)>141 { return Ros2Pal_device_msgsMsgBumper{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgBumper(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgBumper{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/msg/LedGroup value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup :: struct {
 // @brief pal_device_msgs/msg/LedGroup.led_mask: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
 field_led_mask: u32,
}
// @brief Maximum canonical extent of pal_device_msgs/msg/LedGroup in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of pal_device_msgs/msg/LedGroup.
// @details Exact identity UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup_Codec_Identity :: "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0"
// @brief Original ROS type name for pal_device_msgs/msg/LedGroup.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup_Native_Type :: "pal_device_msgs/msg/LedGroup"
// @brief Selected original native identity for pal_device_msgs/msg/LedGroup.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup_Native_Identity :: ""
// @brief pal_device_msgs/msg/LedGroup.LEFT_EAR: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup_LEFT_EAR :: u8(1)
// @brief pal_device_msgs/msg/LedGroup.RIGHT_EAR: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsMsgLedGroup_RIGHT_EAR :: u8(2)
// @brief Construct the declared defaults of pal_device_msgs/msg/LedGroup.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsMsgLedGroup :: proc() -> Ros2Pal_device_msgsMsgLedGroup {
 v: Ros2Pal_device_msgsMsgLedGroup
 v.field_led_mask = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/msg/LedGroup.
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
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsMsgLedGroup :: proc(v: ^Ros2Pal_device_msgsMsgLedGroup, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_led_mask),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedGroup.
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
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsMsgLedGroup :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedGroup,bool) {
 v:=init_Ros2Pal_device_msgsMsgLedGroup()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_led_mask=u32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/msg/LedGroup value.
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
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsMsgLedGroup :: proc(v: ^Ros2Pal_device_msgsMsgLedGroup, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Pal_device_msgsMsgLedGroup(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Pal_device_msgsMsgLedGroup(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/msg/LedGroup value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsMsgLedGroup :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsMsgLedGroup,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Pal_device_msgsMsgLedGroup{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsMsgLedGroup(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsMsgLedGroup{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/CancelEffect_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Request :: struct {
 // @brief pal_device_msgs/srv/CancelEffect_Request.effect_id: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_effect_id: u32,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/CancelEffect_Request in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Request_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of pal_device_msgs/srv/CancelEffect_Request.
// @details Exact identity UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Request_Codec_Identity :: "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062"
// @brief Original ROS type name for pal_device_msgs/srv/CancelEffect_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Request_Native_Type :: "pal_device_msgs/srv/CancelEffect_Request"
// @brief Selected original native identity for pal_device_msgs/srv/CancelEffect_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Request_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/CancelEffect_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvCancelEffect_Request :: proc() -> Ros2Pal_device_msgsSrvCancelEffect_Request {
 v: Ros2Pal_device_msgsSrvCancelEffect_Request
 v.field_effect_id = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/CancelEffect_Request.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvCancelEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvCancelEffect_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_effect_id),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/CancelEffect_Request.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvCancelEffect_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsSrvCancelEffect_Request,bool) {
 v:=init_Ros2Pal_device_msgsSrvCancelEffect_Request()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_effect_id=u32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/CancelEffect_Request value.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvCancelEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvCancelEffect_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Pal_device_msgsSrvCancelEffect_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Pal_device_msgsSrvCancelEffect_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/CancelEffect_Request value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvCancelEffect_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsSrvCancelEffect_Request,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Pal_device_msgsSrvCancelEffect_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvCancelEffect_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvCancelEffect_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/CancelEffect_Response value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Response :: struct {
}
// @brief Maximum canonical extent of pal_device_msgs/srv/CancelEffect_Response in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Response_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of pal_device_msgs/srv/CancelEffect_Response.
// @details Exact identity UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Response_Codec_Identity :: "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657"
// @brief Original ROS type name for pal_device_msgs/srv/CancelEffect_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Response_Native_Type :: "pal_device_msgs/srv/CancelEffect_Response"
// @brief Selected original native identity for pal_device_msgs/srv/CancelEffect_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvCancelEffect_Response_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/CancelEffect_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvCancelEffect_Response :: proc() -> Ros2Pal_device_msgsSrvCancelEffect_Response {
 v: Ros2Pal_device_msgsSrvCancelEffect_Response
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/CancelEffect_Response.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvCancelEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvCancelEffect_Response, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/CancelEffect_Response.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvCancelEffect_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Pal_device_msgsSrvCancelEffect_Response,bool) {
 v:=init_Ros2Pal_device_msgsSrvCancelEffect_Response()
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/CancelEffect_Response value.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvCancelEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvCancelEffect_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Pal_device_msgsSrvCancelEffect_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Pal_device_msgsSrvCancelEffect_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/CancelEffect_Response value.
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
// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvCancelEffect_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvCancelEffect_Response,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Pal_device_msgsSrvCancelEffect_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvCancelEffect_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvCancelEffect_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: struct {
 // @brief pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.shutdown_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
 field_shutdown_duration: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
// @details Exact identity UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_Codec_Identity :: "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166"
// @brief Original ROS type name for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_Native_Type :: "pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request"
// @brief Selected original native identity for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: proc() -> Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request {
 v: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
 v.field_shutdown_duration = Ros2Builtin_interfacesMsgDuration{}
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: proc(v: ^Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_shutdown_duration,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request,bool) {
 v:=init_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request()
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_shutdown_duration=b
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: proc(v: ^Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: struct {
}
// @brief Maximum canonical extent of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
// @details Exact identity UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_Codec_Identity :: "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af"
// @brief Original ROS type name for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_Native_Type :: "pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response"
// @brief Selected original native identity for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: proc() -> Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response {
 v: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: proc(v: ^Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response,bool) {
 v:=init_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response()
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: proc(
    v: ^Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response,
    output: []u8,
) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value.
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
// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/TimedBlinkEffect_Request value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 61..61 bytes
// and is identified by UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Request :: struct {
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.leds: pal_device_msgs/msg/LedGroup.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_leds: Ros2Pal_device_msgsMsgLedGroup,
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.first_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_first_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.second_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_second_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.first_color_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_first_color_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.second_color_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_second_color_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_effect_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Request.priority: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_priority: u8,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/TimedBlinkEffect_Request in bytes.
// @details The inclusive bound is 61 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_Maximum_Wire_Bytes :: 61
// @brief Canonical codec identity of pal_device_msgs/srv/TimedBlinkEffect_Request.
// @details Exact identity UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_Codec_Identity :: "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c"
// @brief Original ROS type name for pal_device_msgs/srv/TimedBlinkEffect_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_Native_Type :: "pal_device_msgs/srv/TimedBlinkEffect_Request"
// @brief Selected original native identity for pal_device_msgs/srv/TimedBlinkEffect_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Request_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/TimedBlinkEffect_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request :: proc() -> Ros2Pal_device_msgsSrvTimedBlinkEffect_Request {
 v: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
 v.field_leds = Ros2Pal_device_msgsMsgLedGroup{}
 v.field_first_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_second_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_first_color_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_second_color_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_effect_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_priority = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/TimedBlinkEffect_Request.
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvTimedBlinkEffect_Request, w: ^Writer) -> bool {
 if !write_Ros2Pal_device_msgsMsgLedGroup(&v.field_leds,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_first_color,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_second_color,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_first_color_duration,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_second_color_duration,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_effect_duration,w) { return false }
 if !put_integer(w,u64(v.field_priority),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedBlinkEffect_Request.
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedBlinkEffect_Request,bool) {
 v:=init_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request()
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedGroup(r,allocator); if !ok { return v,false }
 v.field_leds=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_first_color=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_second_color=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_first_color_duration=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_second_color_duration=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_effect_duration=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_priority=u8(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/TimedBlinkEffect_Request value.
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvTimedBlinkEffect_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=61}
 if !write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=61}
 if !write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/TimedBlinkEffect_Request value.
// @details Require the complete 61..61-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedBlinkEffect_Request,u32) {
 if len(bytes)<61 || len(bytes)>61 { return Ros2Pal_device_msgsSrvTimedBlinkEffect_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvTimedBlinkEffect_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/TimedBlinkEffect_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Response :: struct {
 // @brief pal_device_msgs/srv/TimedBlinkEffect_Response.effect_id: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
 field_effect_id: u32,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/TimedBlinkEffect_Response in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of pal_device_msgs/srv/TimedBlinkEffect_Response.
// @details Exact identity UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_Codec_Identity :: "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a"
// @brief Original ROS type name for pal_device_msgs/srv/TimedBlinkEffect_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_Native_Type :: "pal_device_msgs/srv/TimedBlinkEffect_Response"
// @brief Selected original native identity for pal_device_msgs/srv/TimedBlinkEffect_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedBlinkEffect_Response_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/TimedBlinkEffect_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response :: proc() -> Ros2Pal_device_msgsSrvTimedBlinkEffect_Response {
 v: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
 v.field_effect_id = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/TimedBlinkEffect_Response.
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvTimedBlinkEffect_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_effect_id),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedBlinkEffect_Response.
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedBlinkEffect_Response,bool) {
 v:=init_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_effect_id=u32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/TimedBlinkEffect_Response value.
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvTimedBlinkEffect_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/TimedBlinkEffect_Response value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedBlinkEffect_Response,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Pal_device_msgsSrvTimedBlinkEffect_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvTimedBlinkEffect_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvTimedBlinkEffect_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/TimedColourEffect_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 29..29 bytes
// and is identified by UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Request :: struct {
 // @brief pal_device_msgs/srv/TimedColourEffect_Request.leds: pal_device_msgs/msg/LedGroup.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_leds: Ros2Pal_device_msgsMsgLedGroup,
 // @brief pal_device_msgs/srv/TimedColourEffect_Request.color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/srv/TimedColourEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_effect_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/srv/TimedColourEffect_Request.priority: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_priority: u8,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/TimedColourEffect_Request in bytes.
// @details The inclusive bound is 29 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Request_Maximum_Wire_Bytes :: 29
// @brief Canonical codec identity of pal_device_msgs/srv/TimedColourEffect_Request.
// @details Exact identity UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Request_Codec_Identity :: "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8"
// @brief Original ROS type name for pal_device_msgs/srv/TimedColourEffect_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Request_Native_Type :: "pal_device_msgs/srv/TimedColourEffect_Request"
// @brief Selected original native identity for pal_device_msgs/srv/TimedColourEffect_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Request_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/TimedColourEffect_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvTimedColourEffect_Request :: proc() -> Ros2Pal_device_msgsSrvTimedColourEffect_Request {
 v: Ros2Pal_device_msgsSrvTimedColourEffect_Request
 v.field_leds = Ros2Pal_device_msgsMsgLedGroup{}
 v.field_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_effect_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_priority = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/TimedColourEffect_Request.
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvTimedColourEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvTimedColourEffect_Request, w: ^Writer) -> bool {
 if !write_Ros2Pal_device_msgsMsgLedGroup(&v.field_leds,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_color,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_effect_duration,w) { return false }
 if !put_integer(w,u64(v.field_priority),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedColourEffect_Request.
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvTimedColourEffect_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedColourEffect_Request,bool) {
 v:=init_Ros2Pal_device_msgsSrvTimedColourEffect_Request()
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedGroup(r,allocator); if !ok { return v,false }
 v.field_leds=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_color=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_effect_duration=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_priority=u8(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/TimedColourEffect_Request value.
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvTimedColourEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvTimedColourEffect_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=29}
 if !write_Ros2Pal_device_msgsSrvTimedColourEffect_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=29}
 if !write_Ros2Pal_device_msgsSrvTimedColourEffect_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/TimedColourEffect_Request value.
// @details Require the complete 29..29-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvTimedColourEffect_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedColourEffect_Request,u32) {
 if len(bytes)<29 || len(bytes)>29 { return Ros2Pal_device_msgsSrvTimedColourEffect_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvTimedColourEffect_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvTimedColourEffect_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/TimedColourEffect_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Response :: struct {
 // @brief pal_device_msgs/srv/TimedColourEffect_Response.effect_id: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
 field_effect_id: u32,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/TimedColourEffect_Response in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Response_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of pal_device_msgs/srv/TimedColourEffect_Response.
// @details Exact identity UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Response_Codec_Identity :: "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9"
// @brief Original ROS type name for pal_device_msgs/srv/TimedColourEffect_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Response_Native_Type :: "pal_device_msgs/srv/TimedColourEffect_Response"
// @brief Selected original native identity for pal_device_msgs/srv/TimedColourEffect_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedColourEffect_Response_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/TimedColourEffect_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvTimedColourEffect_Response :: proc() -> Ros2Pal_device_msgsSrvTimedColourEffect_Response {
 v: Ros2Pal_device_msgsSrvTimedColourEffect_Response
 v.field_effect_id = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/TimedColourEffect_Response.
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvTimedColourEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvTimedColourEffect_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_effect_id),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedColourEffect_Response.
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvTimedColourEffect_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedColourEffect_Response,bool) {
 v:=init_Ros2Pal_device_msgsSrvTimedColourEffect_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_effect_id=u32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/TimedColourEffect_Response value.
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvTimedColourEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvTimedColourEffect_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Pal_device_msgsSrvTimedColourEffect_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Pal_device_msgsSrvTimedColourEffect_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/TimedColourEffect_Response value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvTimedColourEffect_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedColourEffect_Response,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Pal_device_msgsSrvTimedColourEffect_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvTimedColourEffect_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvTimedColourEffect_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/TimedFadeEffect_Request value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 54..54 bytes
// and is identified by UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Request :: struct {
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.leds: pal_device_msgs/msg/LedGroup.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_leds: Ros2Pal_device_msgsMsgLedGroup,
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.first_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_first_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.second_color: std_msgs/msg/ColorRGBA.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_second_color: Ros2Std_msgsMsgColorRGBA,
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.color_change_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_color_change_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.reverse_fade: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_reverse_fade: bool,
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_effect_duration: Ros2Builtin_interfacesMsgDuration,
 // @brief pal_device_msgs/srv/TimedFadeEffect_Request.priority: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
 field_priority: u8,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/TimedFadeEffect_Request in bytes.
// @details The inclusive bound is 54 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Request_Maximum_Wire_Bytes :: 54
// @brief Canonical codec identity of pal_device_msgs/srv/TimedFadeEffect_Request.
// @details Exact identity UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Request_Codec_Identity :: "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13"
// @brief Original ROS type name for pal_device_msgs/srv/TimedFadeEffect_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Request_Native_Type :: "pal_device_msgs/srv/TimedFadeEffect_Request"
// @brief Selected original native identity for pal_device_msgs/srv/TimedFadeEffect_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Request_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/TimedFadeEffect_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvTimedFadeEffect_Request :: proc() -> Ros2Pal_device_msgsSrvTimedFadeEffect_Request {
 v: Ros2Pal_device_msgsSrvTimedFadeEffect_Request
 v.field_leds = Ros2Pal_device_msgsMsgLedGroup{}
 v.field_first_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_second_color = Ros2Std_msgsMsgColorRGBA{}
 v.field_color_change_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_reverse_fade = false
 v.field_effect_duration = Ros2Builtin_interfacesMsgDuration{}
 v.field_priority = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/TimedFadeEffect_Request.
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvTimedFadeEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvTimedFadeEffect_Request, w: ^Writer) -> bool {
 if !write_Ros2Pal_device_msgsMsgLedGroup(&v.field_leds,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_first_color,w) { return false }
 if !write_Ros2Std_msgsMsgColorRGBA(&v.field_second_color,w) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_color_change_duration,w) { return false }
 if !put_bool(w,v.field_reverse_fade) { return false }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_effect_duration,w) { return false }
 if !put_integer(w,u64(v.field_priority),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedFadeEffect_Request.
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvTimedFadeEffect_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedFadeEffect_Request,bool) {
 v:=init_Ros2Pal_device_msgsSrvTimedFadeEffect_Request()
 {
 b,ok:=read_Ros2Pal_device_msgsMsgLedGroup(r,allocator); if !ok { return v,false }
 v.field_leds=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_first_color=b
 }
 {
 b,ok:=read_Ros2Std_msgsMsgColorRGBA(r,allocator); if !ok { return v,false }
 v.field_second_color=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_color_change_duration=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_reverse_fade=bool(b)
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_effect_duration=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_priority=u8(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/TimedFadeEffect_Request value.
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvTimedFadeEffect_Request :: proc(v: ^Ros2Pal_device_msgsSrvTimedFadeEffect_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=54}
 if !write_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=54}
 if !write_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/TimedFadeEffect_Request value.
// @details Require the complete 54..54-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvTimedFadeEffect_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedFadeEffect_Request,u32) {
 if len(bytes)<54 || len(bytes)>54 { return Ros2Pal_device_msgsSrvTimedFadeEffect_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvTimedFadeEffect_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvTimedFadeEffect_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 pal_device_msgs/srv/TimedFadeEffect_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Response :: struct {
 // @brief pal_device_msgs/srv/TimedFadeEffect_Response.effect_id: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
 field_effect_id: u32,
}
// @brief Maximum canonical extent of pal_device_msgs/srv/TimedFadeEffect_Response in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Response_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of pal_device_msgs/srv/TimedFadeEffect_Response.
// @details Exact identity UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Response_Codec_Identity :: "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5"
// @brief Original ROS type name for pal_device_msgs/srv/TimedFadeEffect_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Response_Native_Type :: "pal_device_msgs/srv/TimedFadeEffect_Response"
// @brief Selected original native identity for pal_device_msgs/srv/TimedFadeEffect_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
Ros2Pal_device_msgsSrvTimedFadeEffect_Response_Native_Identity :: ""
// @brief Construct the declared defaults of pal_device_msgs/srv/TimedFadeEffect_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
init_Ros2Pal_device_msgsSrvTimedFadeEffect_Response :: proc() -> Ros2Pal_device_msgsSrvTimedFadeEffect_Response {
 v: Ros2Pal_device_msgsSrvTimedFadeEffect_Response
 v.field_effect_id = 0
 return v
}
// @brief Append every canonical field of pal_device_msgs/srv/TimedFadeEffect_Response.
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
write_Ros2Pal_device_msgsSrvTimedFadeEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvTimedFadeEffect_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_effect_id),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedFadeEffect_Response.
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
read_Ros2Pal_device_msgsSrvTimedFadeEffect_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedFadeEffect_Response,bool) {
 v:=init_Ros2Pal_device_msgsSrvTimedFadeEffect_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_effect_id=u32(b)
 }
 return v,true
}
// @brief Encode one complete pal_device_msgs/srv/TimedFadeEffect_Response value.
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
encode_Ros2Pal_device_msgsSrvTimedFadeEffect_Response :: proc(v: ^Ros2Pal_device_msgsSrvTimedFadeEffect_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete pal_device_msgs/srv/TimedFadeEffect_Response value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/odin/API.md
decode_Ros2Pal_device_msgsSrvTimedFadeEffect_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Pal_device_msgsSrvTimedFadeEffect_Response,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Pal_device_msgsSrvTimedFadeEffect_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Pal_device_msgsSrvTimedFadeEffect_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Pal_device_msgsSrvTimedFadeEffect_Response{},reader.code }
 return value,0
}
