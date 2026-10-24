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
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration :: struct {
 // @brief builtin_interfaces/msg/Duration.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Codec_Identity :: "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
// @brief Original ROS type name for builtin_interfaces/msg/Duration.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Native_Type :: "builtin_interfaces/msg/Duration"
// @brief Selected original native identity for builtin_interfaces/msg/Duration.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgDuration_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Duration.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/odin/API.md
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
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime :: struct {
 // @brief builtin_interfaces/msg/Time.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Time.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Time.
// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Codec_Identity :: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
// @brief Original ROS type name for builtin_interfaces/msg/Time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Native_Type :: "builtin_interfaces/msg/Time"
// @brief Selected original native identity for builtin_interfaces/msg/Time.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
Ros2Builtin_interfacesMsgTime_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Builtin_interfacesMsgTime :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgTime{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgTime(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgTime{},reader.code }
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
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader :: struct {
 // @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
 // @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of std_msgs/msg/Header.
// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
// @brief Original ROS type name for std_msgs/msg/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Native_Type :: "std_msgs/msg/Header"
// @brief Selected original native identity for std_msgs/msg/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
Ros2Std_msgsMsgHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
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
// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Std_msgsMsgHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgHeader,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Std_msgsMsgHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_footswitch_msgs/msg/FootswitchState value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 15..143 bytes
// and is identified by UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_footswitch_msgsMsgFootswitchState :: struct {
 // @brief interbotix_footswitch_msgs/msg/FootswitchState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief interbotix_footswitch_msgs/msg/FootswitchState.state: bool; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
 field_state: [3]bool,
}
// @brief Maximum canonical extent of interbotix_footswitch_msgs/msg/FootswitchState in bytes.
// @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_footswitch_msgsMsgFootswitchState_Maximum_Wire_Bytes :: 143
// @brief Canonical codec identity of interbotix_footswitch_msgs/msg/FootswitchState.
// @details Exact identity UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_footswitch_msgsMsgFootswitchState_Codec_Identity :: "UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c"
// @brief Original ROS type name for interbotix_footswitch_msgs/msg/FootswitchState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_footswitch_msgsMsgFootswitchState_Native_Type :: "interbotix_footswitch_msgs/msg/FootswitchState"
// @brief Selected original native identity for interbotix_footswitch_msgs/msg/FootswitchState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_footswitch_msgsMsgFootswitchState_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_footswitch_msgs/msg/FootswitchState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_footswitch_msgsMsgFootswitchState :: proc() -> Ros2Interbotix_footswitch_msgsMsgFootswitchState {
 v: Ros2Interbotix_footswitch_msgsMsgFootswitchState
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_state = [3]bool{false,false,false}
 return v
}
// @brief Append every canonical field of interbotix_footswitch_msgs/msg/FootswitchState.
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
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_footswitch_msgsMsgFootswitchState :: proc(v: ^Ros2Interbotix_footswitch_msgsMsgFootswitchState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 for e in v.field_state {
 if !put_bool(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_footswitch_msgs/msg/FootswitchState.
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
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_footswitch_msgsMsgFootswitchState :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_footswitch_msgsMsgFootswitchState,bool) {
 v:=init_Ros2Interbotix_footswitch_msgsMsgFootswitchState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 for &e in v.field_state {
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 e=bool(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_footswitch_msgs/msg/FootswitchState value.
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
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_footswitch_msgsMsgFootswitchState :: proc(v: ^Ros2Interbotix_footswitch_msgsMsgFootswitchState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=143}
 if !write_Ros2Interbotix_footswitch_msgsMsgFootswitchState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=143}
 if !write_Ros2Interbotix_footswitch_msgsMsgFootswitchState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_footswitch_msgs/msg/FootswitchState value.
// @details Require the complete 15..143-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_footswitch_msgsMsgFootswitchState; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_footswitch_msgsMsgFootswitchState :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_footswitch_msgsMsgFootswitchState,u32) {
 if len(bytes)<15 || len(bytes)>143 { return Ros2Interbotix_footswitch_msgsMsgFootswitchState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_footswitch_msgsMsgFootswitchState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_footswitch_msgsMsgFootswitchState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_slate_msgs/srv/SetLightState_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request :: struct {
 // @brief interbotix_slate_msgs/srv/SetLightState_Request.light_state: uint32.
 // @details Schema default 0. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
 field_light_state: u32,
}
// @brief Maximum canonical extent of interbotix_slate_msgs/srv/SetLightState_Request in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of interbotix_slate_msgs/srv/SetLightState_Request.
// @details Exact identity UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_Codec_Identity :: "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554"
// @brief Original ROS type name for interbotix_slate_msgs/srv/SetLightState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_Native_Type :: "interbotix_slate_msgs/srv/SetLightState_Request"
// @brief Selected original native identity for interbotix_slate_msgs/srv/SetLightState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_Native_Identity :: ""
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_OFF: original uint32 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_OFF :: u32(0)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_RED: original uint32 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_RED :: u32(1)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_GREEN: original uint32 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_GREEN :: u32(2)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_YELLOW: original uint32 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_YELLOW :: u32(3)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_BLUE: original uint32 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_BLUE :: u32(4)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_PURPLE: original uint32 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_PURPLE :: u32(5)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_CYAN: original uint32 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_CYAN :: u32(6)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_WHITE: original uint32 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_WHITE :: u32(7)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_RED_FLASH: original uint32 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_RED_FLASH :: u32(9)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_GREEN_FLASH: original uint32 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_GREEN_FLASH :: u32(10)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_YELLOW_FLASH: original uint32 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_YELLOW_FLASH :: u32(11)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_BLUE_FLASH: original uint32 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_BLUE_FLASH :: u32(12)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_PURPLE_FLASH: original uint32 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_PURPLE_FLASH :: u32(13)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_CYAN_FLASH: original uint32 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_CYAN_FLASH :: u32(14)
// @brief interbotix_slate_msgs/srv/SetLightState_Request.LIGHT_STATE_WHITE_FLASH: original uint32 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_WHITE_FLASH :: u32(15)
// @brief Construct the declared defaults of interbotix_slate_msgs/srv/SetLightState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_slate_msgsSrvSetLightState_Request :: proc() -> Ros2Interbotix_slate_msgsSrvSetLightState_Request {
 v: Ros2Interbotix_slate_msgsSrvSetLightState_Request
 v.field_light_state = 0
 return v
}
// @brief Append every canonical field of interbotix_slate_msgs/srv/SetLightState_Request.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_slate_msgsSrvSetLightState_Request :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetLightState_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_light_state),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_slate_msgs/srv/SetLightState_Request.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_slate_msgsSrvSetLightState_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetLightState_Request,bool) {
 v:=init_Ros2Interbotix_slate_msgsSrvSetLightState_Request()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_light_state=u32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_slate_msgs/srv/SetLightState_Request value.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_slate_msgsSrvSetLightState_Request :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetLightState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Interbotix_slate_msgsSrvSetLightState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Interbotix_slate_msgsSrvSetLightState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_slate_msgs/srv/SetLightState_Request value.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_slate_msgsSrvSetLightState_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetLightState_Request,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Interbotix_slate_msgsSrvSetLightState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_slate_msgsSrvSetLightState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_slate_msgsSrvSetLightState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_slate_msgs/srv/SetLightState_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..133 bytes
// and is identified by UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Response :: struct {
 // @brief interbotix_slate_msgs/srv/SetLightState_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
 field_success: bool,
 // @brief interbotix_slate_msgs/srv/SetLightState_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of interbotix_slate_msgs/srv/SetLightState_Response in bytes.
// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Response_Maximum_Wire_Bytes :: 133
// @brief Canonical codec identity of interbotix_slate_msgs/srv/SetLightState_Response.
// @details Exact identity UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Response_Codec_Identity :: "UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784"
// @brief Original ROS type name for interbotix_slate_msgs/srv/SetLightState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Response_Native_Type :: "interbotix_slate_msgs/srv/SetLightState_Response"
// @brief Selected original native identity for interbotix_slate_msgs/srv/SetLightState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetLightState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_slate_msgs/srv/SetLightState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_slate_msgsSrvSetLightState_Response :: proc() -> Ros2Interbotix_slate_msgsSrvSetLightState_Response {
 v: Ros2Interbotix_slate_msgsSrvSetLightState_Response
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of interbotix_slate_msgs/srv/SetLightState_Response.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_slate_msgsSrvSetLightState_Response :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetLightState_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_slate_msgs/srv/SetLightState_Response.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_slate_msgsSrvSetLightState_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetLightState_Response,bool) {
 v:=init_Ros2Interbotix_slate_msgsSrvSetLightState_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete interbotix_slate_msgs/srv/SetLightState_Response value.
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_slate_msgsSrvSetLightState_Response :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetLightState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=133}
 if !write_Ros2Interbotix_slate_msgsSrvSetLightState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=133}
 if !write_Ros2Interbotix_slate_msgsSrvSetLightState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_slate_msgs/srv/SetLightState_Response value.
// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_slate_msgsSrvSetLightState_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_slate_msgsSrvSetLightState_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetLightState_Response,u32) {
 if len(bytes)<5 || len(bytes)>133 { return Ros2Interbotix_slate_msgsSrvSetLightState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_slate_msgsSrvSetLightState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_slate_msgsSrvSetLightState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_slate_msgs/srv/SetString_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
// and is identified by UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Request :: struct {
 // @brief interbotix_slate_msgs/srv/SetString_Request.data: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
 field_data: string,
}
// @brief Maximum canonical extent of interbotix_slate_msgs/srv/SetString_Request in bytes.
// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Request_Maximum_Wire_Bytes :: 132
// @brief Canonical codec identity of interbotix_slate_msgs/srv/SetString_Request.
// @details Exact identity UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Request_Codec_Identity :: "UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45"
// @brief Original ROS type name for interbotix_slate_msgs/srv/SetString_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Request_Native_Type :: "interbotix_slate_msgs/srv/SetString_Request"
// @brief Selected original native identity for interbotix_slate_msgs/srv/SetString_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_slate_msgs/srv/SetString_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_slate_msgsSrvSetString_Request :: proc() -> Ros2Interbotix_slate_msgsSrvSetString_Request {
 v: Ros2Interbotix_slate_msgsSrvSetString_Request
 v.field_data = ""
 return v
}
// @brief Append every canonical field of interbotix_slate_msgs/srv/SetString_Request.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_slate_msgsSrvSetString_Request :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetString_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_data,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_slate_msgs/srv/SetString_Request.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_slate_msgsSrvSetString_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetString_Request,bool) {
 v:=init_Ros2Interbotix_slate_msgsSrvSetString_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete interbotix_slate_msgs/srv/SetString_Request value.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_slate_msgsSrvSetString_Request :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetString_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=132}
 if !write_Ros2Interbotix_slate_msgsSrvSetString_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=132}
 if !write_Ros2Interbotix_slate_msgsSrvSetString_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_slate_msgs/srv/SetString_Request value.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_slate_msgsSrvSetString_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetString_Request,u32) {
 if len(bytes)<4 || len(bytes)>132 { return Ros2Interbotix_slate_msgsSrvSetString_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_slate_msgsSrvSetString_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_slate_msgsSrvSetString_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_slate_msgs/srv/SetString_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..133 bytes
// and is identified by UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Response :: struct {
 // @brief interbotix_slate_msgs/srv/SetString_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
 field_success: bool,
 // @brief interbotix_slate_msgs/srv/SetString_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
 field_message: string,
}
// @brief Maximum canonical extent of interbotix_slate_msgs/srv/SetString_Response in bytes.
// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Response_Maximum_Wire_Bytes :: 133
// @brief Canonical codec identity of interbotix_slate_msgs/srv/SetString_Response.
// @details Exact identity UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Response_Codec_Identity :: "UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33"
// @brief Original ROS type name for interbotix_slate_msgs/srv/SetString_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Response_Native_Type :: "interbotix_slate_msgs/srv/SetString_Response"
// @brief Selected original native identity for interbotix_slate_msgs/srv/SetString_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_slate_msgsSrvSetString_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_slate_msgs/srv/SetString_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_slate_msgsSrvSetString_Response :: proc() -> Ros2Interbotix_slate_msgsSrvSetString_Response {
 v: Ros2Interbotix_slate_msgsSrvSetString_Response
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of interbotix_slate_msgs/srv/SetString_Response.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_slate_msgsSrvSetString_Response :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetString_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_slate_msgs/srv/SetString_Response.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_slate_msgsSrvSetString_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetString_Response,bool) {
 v:=init_Ros2Interbotix_slate_msgsSrvSetString_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete interbotix_slate_msgs/srv/SetString_Response value.
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_slate_msgsSrvSetString_Response :: proc(v: ^Ros2Interbotix_slate_msgsSrvSetString_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=133}
 if !write_Ros2Interbotix_slate_msgsSrvSetString_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=133}
 if !write_Ros2Interbotix_slate_msgsSrvSetString_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_slate_msgs/srv/SetString_Response value.
// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_slate_msgsSrvSetString_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_slate_msgsSrvSetString_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_slate_msgsSrvSetString_Response,u32) {
 if len(bytes)<5 || len(bytes)>133 { return Ros2Interbotix_slate_msgsSrvSetString_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_slate_msgsSrvSetString_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_slate_msgsSrvSetString_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/ArmJoy value.
// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy :: struct {
 // @brief interbotix_xs_msgs/msg/ArmJoy.ee_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_x_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.ee_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_y_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.ee_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_z_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.ee_roll_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_roll_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.ee_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_pitch_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.waist_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_waist_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.gripper_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.gripper_pwm_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_pwm_cmd: i8,
 // @brief interbotix_xs_msgs/msg/ArmJoy.torque_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
 field_torque_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/ArmJoy in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of interbotix_xs_msgs/msg/ArmJoy.
// @details Exact identity UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_Codec_Identity :: "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f"
// @brief Original ROS type name for interbotix_xs_msgs/msg/ArmJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_Native_Type :: "interbotix_xs_msgs/msg/ArmJoy"
// @brief Selected original native identity for interbotix_xs_msgs/msg/ArmJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_X_INC: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_X_INC :: i8(1)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_X_DEC: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_X_DEC :: i8(2)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Y_INC: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_INC :: i8(3)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Y_DEC: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_DEC :: i8(4)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Z_INC: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_INC :: i8(5)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Z_DEC: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_DEC :: i8(6)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_ROLL_CCW: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CCW :: i8(7)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_ROLL_CW: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CW :: i8(8)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_PITCH_UP: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_UP :: i8(9)
// @brief interbotix_xs_msgs/msg/ArmJoy.EE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_DOWN :: i8(10)
// @brief interbotix_xs_msgs/msg/ArmJoy.WAIST_CCW: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CCW :: i8(11)
// @brief interbotix_xs_msgs/msg/ArmJoy.WAIST_CW: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CW :: i8(12)
// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_RELEASE: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_RELEASE :: i8(13)
// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_GRASP: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_GRASP :: i8(14)
// @brief interbotix_xs_msgs/msg/ArmJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_HOME_POSE :: i8(15)
// @brief interbotix_xs_msgs/msg/ArmJoy.SLEEP_POSE: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_SLEEP_POSE :: i8(16)
// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_INC :: i8(17)
// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_DEC :: i8(18)
// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_COARSE: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_COARSE :: i8(19)
// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_FINE :: i8(20)
// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_PWM_INC: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_INC :: i8(21)
// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_PWM_DEC: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_DEC :: i8(22)
// @brief interbotix_xs_msgs/msg/ArmJoy.TORQUE_ON: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_ON :: i8(23)
// @brief interbotix_xs_msgs/msg/ArmJoy.TORQUE_OFF: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_OFF :: i8(24)
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/ArmJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgArmJoy :: proc() -> Ros2Interbotix_xs_msgsMsgArmJoy {
 v: Ros2Interbotix_xs_msgsMsgArmJoy
 v.field_ee_x_cmd = 0
 v.field_ee_y_cmd = 0
 v.field_ee_z_cmd = 0
 v.field_ee_roll_cmd = 0
 v.field_ee_pitch_cmd = 0
 v.field_waist_cmd = 0
 v.field_gripper_cmd = 0
 v.field_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 v.field_gripper_pwm_cmd = 0
 v.field_torque_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/ArmJoy.
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
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgArmJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgArmJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_ee_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_roll_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_waist_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_pwm_cmd),1) { return false }
 if !put_integer(w,u64(v.field_torque_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/ArmJoy.
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
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgArmJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgArmJoy,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgArmJoy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_z_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_roll_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_pitch_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_waist_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_pwm_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_torque_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/ArmJoy value.
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
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgArmJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgArmJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Interbotix_xs_msgsMsgArmJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Interbotix_xs_msgsMsgArmJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/ArmJoy value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgArmJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgArmJoy,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Interbotix_xs_msgsMsgArmJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgArmJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgArmJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/HexJoy value.
// @details All 17 declared fields are retained in source order. The canonical representation occupies 17..17 bytes
// and is identified by UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy :: struct {
 // @brief interbotix_xs_msgs/msg/HexJoy.world_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_world_x_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.world_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_world_y_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.world_yaw_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_world_yaw_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.place_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_x_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.place_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_y_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.place_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_z_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.place_roll_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_roll_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.place_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_place_pitch_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.move_type_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_move_type_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.gait_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gait_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.leg_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_leg_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.stance_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_stance_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.reboot_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_reboot_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.set_home_pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_set_home_pose_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/msg/HexJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/HexJoy in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of interbotix_xs_msgs/msg/HexJoy.
// @details Exact identity UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_Codec_Identity :: "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d"
// @brief Original ROS type name for interbotix_xs_msgs/msg/HexJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_Native_Type :: "interbotix_xs_msgs/msg/HexJoy"
// @brief Selected original native identity for interbotix_xs_msgs/msg/HexJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_X_INC: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_INC :: i8(1)
// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_X_DEC: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_DEC :: i8(2)
// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_Y_INC: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_INC :: i8(3)
// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_Y_DEC: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_DEC :: i8(4)
// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_YAW_CCW: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CCW :: i8(5)
// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_YAW_CW: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CW :: i8(6)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_X_INC: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_INC :: i8(7)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_X_DEC: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_DEC :: i8(8)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Y_INC: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_INC :: i8(9)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Y_DEC: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_DEC :: i8(10)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Z_INC: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_INC :: i8(11)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Z_DEC: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_DEC :: i8(12)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_ROLL_CCW: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CCW :: i8(13)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_ROLL_CW: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CW :: i8(14)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_PITCH_UP: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_UP :: i8(15)
// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_DOWN :: i8(16)
// @brief interbotix_xs_msgs/msg/HexJoy.MOVE_HEXAPOD: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_MOVE_HEXAPOD :: i8(17)
// @brief interbotix_xs_msgs/msg/HexJoy.MOVE_LEG: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_MOVE_LEG :: i8(18)
// @brief interbotix_xs_msgs/msg/HexJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_HOME_POSE :: i8(19)
// @brief interbotix_xs_msgs/msg/HexJoy.SLEEP_POSE: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_SLEEP_POSE :: i8(20)
// @brief interbotix_xs_msgs/msg/HexJoy.GAIT_NEXT: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_GAIT_NEXT :: i8(21)
// @brief interbotix_xs_msgs/msg/HexJoy.GAIT_PREVIOUS: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_GAIT_PREVIOUS :: i8(22)
// @brief interbotix_xs_msgs/msg/HexJoy.LEG_NEXT: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_LEG_NEXT :: i8(23)
// @brief interbotix_xs_msgs/msg/HexJoy.LEG_PREVIOUS: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_LEG_PREVIOUS :: i8(24)
// @brief interbotix_xs_msgs/msg/HexJoy.WIDEN_STANCE: original int8 constant.
// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_WIDEN_STANCE :: i8(25)
// @brief interbotix_xs_msgs/msg/HexJoy.NARROW_STANCE: original int8 constant.
// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_NARROW_STANCE :: i8(26)
// @brief interbotix_xs_msgs/msg/HexJoy.REBOOT_MOTORS: original int8 constant.
// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_REBOOT_MOTORS :: i8(27)
// @brief interbotix_xs_msgs/msg/HexJoy.SET_HOME_POSE: original int8 constant.
// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_SET_HOME_POSE :: i8(28)
// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 29. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_INC :: i8(29)
// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_DEC :: i8(30)
// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_COARSE: original int8 constant.
// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_COARSE :: i8(31)
// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_FINE :: i8(32)
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/HexJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgHexJoy :: proc() -> Ros2Interbotix_xs_msgsMsgHexJoy {
 v: Ros2Interbotix_xs_msgsMsgHexJoy
 v.field_world_x_cmd = 0
 v.field_world_y_cmd = 0
 v.field_world_yaw_cmd = 0
 v.field_place_x_cmd = 0
 v.field_place_y_cmd = 0
 v.field_place_z_cmd = 0
 v.field_place_roll_cmd = 0
 v.field_place_pitch_cmd = 0
 v.field_pose_cmd = 0
 v.field_move_type_cmd = 0
 v.field_gait_toggle_cmd = 0
 v.field_leg_toggle_cmd = 0
 v.field_stance_cmd = 0
 v.field_reboot_cmd = 0
 v.field_set_home_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/HexJoy.
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
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgHexJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgHexJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_world_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_world_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_world_yaw_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_roll_cmd),1) { return false }
 if !put_integer(w,u64(v.field_place_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_move_type_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gait_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_leg_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_stance_cmd),1) { return false }
 if !put_integer(w,u64(v.field_reboot_cmd),1) { return false }
 if !put_integer(w,u64(v.field_set_home_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/HexJoy.
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
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgHexJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgHexJoy,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgHexJoy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_world_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_world_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_world_yaw_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_z_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_roll_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_place_pitch_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_move_type_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gait_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_leg_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_stance_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_reboot_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_set_home_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/HexJoy value.
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
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgHexJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgHexJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Interbotix_xs_msgsMsgHexJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Interbotix_xs_msgsMsgHexJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/HexJoy value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgHexJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgHexJoy,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Interbotix_xs_msgsMsgHexJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgHexJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgHexJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointGroupCommand value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..392 bytes
// and is identified by UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointGroupCommand :: struct {
 // @brief interbotix_xs_msgs/msg/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/msg/JointGroupCommand.cmd: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
 field_cmd: []f32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointGroupCommand in bytes.
// @details The inclusive bound is 392 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointGroupCommand_Maximum_Wire_Bytes :: 392
// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointGroupCommand.
// @details Exact identity UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointGroupCommand_Codec_Identity :: "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a"
// @brief Original ROS type name for interbotix_xs_msgs/msg/JointGroupCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointGroupCommand_Native_Type :: "interbotix_xs_msgs/msg/JointGroupCommand"
// @brief Selected original native identity for interbotix_xs_msgs/msg/JointGroupCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointGroupCommand_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/JointGroupCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgJointGroupCommand :: proc() -> Ros2Interbotix_xs_msgsMsgJointGroupCommand {
 v: Ros2Interbotix_xs_msgsMsgJointGroupCommand
 v.field_name = ""
 v.field_cmd = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/JointGroupCommand.
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
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgJointGroupCommand :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointGroupCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if len(v.field_cmd)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_cmd)),4) { return false }
 for e in v.field_cmd {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointGroupCommand.
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
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgJointGroupCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgJointGroupCommand,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgJointGroupCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_cmd=make([]f32,int(n),allocator)
 }
 for &e in v.field_cmd {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/JointGroupCommand value.
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
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgJointGroupCommand :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointGroupCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=392}
 if !write_Ros2Interbotix_xs_msgsMsgJointGroupCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=392}
 if !write_Ros2Interbotix_xs_msgsMsgJointGroupCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointGroupCommand value.
// @details Require the complete 8..392-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgJointGroupCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgJointGroupCommand,u32) {
 if len(bytes)<8 || len(bytes)>392 { return Ros2Interbotix_xs_msgsMsgJointGroupCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgJointGroupCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgJointGroupCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointSingleCommand value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointSingleCommand :: struct {
 // @brief interbotix_xs_msgs/msg/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/msg/JointSingleCommand.cmd: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
 field_cmd: f32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointSingleCommand in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointSingleCommand_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointSingleCommand.
// @details Exact identity UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointSingleCommand_Codec_Identity :: "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94"
// @brief Original ROS type name for interbotix_xs_msgs/msg/JointSingleCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointSingleCommand_Native_Type :: "interbotix_xs_msgs/msg/JointSingleCommand"
// @brief Selected original native identity for interbotix_xs_msgs/msg/JointSingleCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointSingleCommand_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/JointSingleCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgJointSingleCommand :: proc() -> Ros2Interbotix_xs_msgsMsgJointSingleCommand {
 v: Ros2Interbotix_xs_msgsMsgJointSingleCommand
 v.field_name = ""
 v.field_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/JointSingleCommand.
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
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgJointSingleCommand :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointSingleCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float32(w,v.field_cmd) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointSingleCommand.
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
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgJointSingleCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgJointSingleCommand,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgJointSingleCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_cmd=f32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/JointSingleCommand value.
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
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgJointSingleCommand :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointSingleCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Interbotix_xs_msgsMsgJointSingleCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Interbotix_xs_msgsMsgJointSingleCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointSingleCommand value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgJointSingleCommand :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsMsgJointSingleCommand,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Interbotix_xs_msgsMsgJointSingleCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgJointSingleCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgJointSingleCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTemps value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8712 bytes
// and is identified by UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTemps :: struct {
 // @brief interbotix_xs_msgs/msg/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
 field_names: []string,
 // @brief interbotix_xs_msgs/msg/JointTemps.temps: int32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
 field_temps: []i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointTemps in bytes.
// @details The inclusive bound is 8712 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTemps_Maximum_Wire_Bytes :: 8712
// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointTemps.
// @details Exact identity UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTemps_Codec_Identity :: "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4"
// @brief Original ROS type name for interbotix_xs_msgs/msg/JointTemps.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTemps_Native_Type :: "interbotix_xs_msgs/msg/JointTemps"
// @brief Selected original native identity for interbotix_xs_msgs/msg/JointTemps.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTemps_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/JointTemps.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgJointTemps :: proc() -> Ros2Interbotix_xs_msgsMsgJointTemps {
 v: Ros2Interbotix_xs_msgsMsgJointTemps
 v.field_names = nil
 v.field_temps = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/JointTemps.
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
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgJointTemps :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointTemps, w: ^Writer) -> bool {
 if len(v.field_names)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_names)),4) { return false }
 for e in v.field_names {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_temps)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_temps)),4) { return false }
 for e in v.field_temps {
 if !put_integer(w,u64(e),4) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointTemps.
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
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgJointTemps :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgJointTemps,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgJointTemps()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_names=make([]string,int(n),allocator)
 }
 for &e in v.field_names {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_temps=make([]i32,int(n),allocator)
 }
 for &e in v.field_temps {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=i32(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/JointTemps value.
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
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgJointTemps :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointTemps, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8712}
 if !write_Ros2Interbotix_xs_msgsMsgJointTemps(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8712}
 if !write_Ros2Interbotix_xs_msgsMsgJointTemps(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointTemps value.
// @details Require the complete 8..8712-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgJointTemps :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgJointTemps,u32) {
 if len(bytes)<8 || len(bytes)>8712 { return Ros2Interbotix_xs_msgsMsgJointTemps{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgJointTemps(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgJointTemps{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
// and is identified by UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint :: struct {
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_positions: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_velocities: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_accelerations: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_effort: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
 field_time_from_start: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectoryPoint in bytes.
// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Maximum_Wire_Bytes :: 536
// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
// @details Exact identity UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1"
// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectoryPoint.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Native_Type :: "trajectory_msgs/msg/JointTrajectoryPoint"
// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectoryPoint.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectoryPoint.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc() -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
 v: Ros2Trajectory_msgsMsgJointTrajectoryPoint
 v.field_positions = nil
 v.field_velocities = nil
 v.field_accelerations = nil
 v.field_effort = nil
 v.field_time_from_start = Ros2Builtin_interfacesMsgDuration{}
 return v
}
// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectoryPoint.
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, w: ^Writer) -> bool {
 if len(v.field_positions)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_positions)),4) { return false }
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocities)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_accelerations)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_accelerations)),4) { return false }
 for e in v.field_accelerations {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_time_from_start,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectoryPoint.
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectoryPoint,bool) {
 v:=init_Ros2Trajectory_msgsMsgJointTrajectoryPoint()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_positions=make([]f64,int(n),allocator)
 }
 for &e in v.field_positions {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_velocities=make([]f64,int(n),allocator)
 }
 for &e in v.field_velocities {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_accelerations=make([]f64,int(n),allocator)
 }
 for &e in v.field_accelerations {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_effort=make([]f64,int(n),allocator)
 }
 for &e in v.field_effort {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_time_from_start=b
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/msg/JointTrajectoryPoint value.
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=536}
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=536}
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectoryPoint,u32) {
 if len(bytes)<24 || len(bytes)>536 { return Ros2Trajectory_msgsMsgJointTrajectoryPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgJointTrajectoryPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..4404 bytes
// and is identified by UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectory :: struct {
 // @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
 field_joint_names: []string,
 // @brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
 field_points: []Ros2Trajectory_msgsMsgJointTrajectoryPoint,
}
// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectory in bytes.
// @details The inclusive bound is 4404 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectory_Maximum_Wire_Bytes :: 4404
// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
// @details Exact identity UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectory_Codec_Identity :: "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7"
// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectory.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectory_Native_Type :: "trajectory_msgs/msg/JointTrajectory"
// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectory.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
Ros2Trajectory_msgsMsgJointTrajectory_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectory.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Trajectory_msgsMsgJointTrajectory :: proc() -> Ros2Trajectory_msgsMsgJointTrajectory {
 v: Ros2Trajectory_msgsMsgJointTrajectory
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_names = nil
 v.field_points = nil
 return v
}
// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectory.
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Trajectory_msgsMsgJointTrajectory :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectory, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_points)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_points)),4) { return false }
 for e in v.field_points {
 item:=e
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectory.
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Trajectory_msgsMsgJointTrajectory :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectory,bool) {
 v:=init_Ros2Trajectory_msgsMsgJointTrajectory()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_points=make([]Ros2Trajectory_msgsMsgJointTrajectoryPoint,int(n),allocator)
 }
 for &e in v.field_points {
 {
 b,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/msg/JointTrajectory value.
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Trajectory_msgsMsgJointTrajectory :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectory, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4404}
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4404}
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
// @details Require the complete 20..4404-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Trajectory_msgsMsgJointTrajectory :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectory,u32) {
 if len(bytes)<20 || len(bytes)>4404 { return Ros2Trajectory_msgsMsgJointTrajectory{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgJointTrajectory(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgJointTrajectory{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTrajectoryCommand value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..4668 bytes
// and is identified by UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand :: struct {
 // @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.traj: trajectory_msgs/msg/JointTrajectory.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
 field_traj: Ros2Trajectory_msgsMsgJointTrajectory,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointTrajectoryCommand in bytes.
// @details The inclusive bound is 4668 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_Maximum_Wire_Bytes :: 4668
// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointTrajectoryCommand.
// @details Exact identity UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_Codec_Identity :: "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52"
// @brief Original ROS type name for interbotix_xs_msgs/msg/JointTrajectoryCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_Native_Type :: "interbotix_xs_msgs/msg/JointTrajectoryCommand"
// @brief Selected original native identity for interbotix_xs_msgs/msg/JointTrajectoryCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/JointTrajectoryCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand :: proc() -> Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand {
 v: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_traj = Ros2Trajectory_msgsMsgJointTrajectory{}
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/JointTrajectoryCommand.
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
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(&v.field_traj,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointTrajectoryCommand.
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
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgJointTrajectory(r,allocator); if !ok { return v,false }
 v.field_traj=b
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/JointTrajectoryCommand value.
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
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand :: proc(v: ^Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4668}
 if !write_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4668}
 if !write_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointTrajectoryCommand value.
// @details Require the complete 28..4668-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand,u32) {
 if len(bytes)<28 || len(bytes)>4668 { return Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/LocobotJoy value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 30..30 bytes
// and is identified by UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy :: struct {
 // @brief interbotix_xs_msgs/msg/LocobotJoy.base_x_cmd: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_base_x_cmd: f64,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.base_theta_cmd: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_base_theta_cmd: f64,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.base_reset_odom_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_base_reset_odom_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.pan_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pan_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.tilt_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_tilt_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.ee_x_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_x_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.ee_y_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_y_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.ee_z_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_z_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.ee_roll_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_roll_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.ee_pitch_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_ee_pitch_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.waist_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_waist_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.gripper_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.pose_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pose_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
 // @brief interbotix_xs_msgs/msg/LocobotJoy.gripper_pwm_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
 field_gripper_pwm_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/LocobotJoy in bytes.
// @details The inclusive bound is 30 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_Maximum_Wire_Bytes :: 30
// @brief Canonical codec identity of interbotix_xs_msgs/msg/LocobotJoy.
// @details Exact identity UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_Codec_Identity :: "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633"
// @brief Original ROS type name for interbotix_xs_msgs/msg/LocobotJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_Native_Type :: "interbotix_xs_msgs/msg/LocobotJoy"
// @brief Selected original native identity for interbotix_xs_msgs/msg/LocobotJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/msg/LocobotJoy.RESET_ODOM: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_RESET_ODOM :: i8(1)
// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_CCW: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CCW :: i8(2)
// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_CW: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CW :: i8(3)
// @brief interbotix_xs_msgs/msg/LocobotJoy.TILT_UP: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_UP :: i8(4)
// @brief interbotix_xs_msgs/msg/LocobotJoy.TILT_DOWN: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_DOWN :: i8(5)
// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_TILT_HOME: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_TILT_HOME :: i8(6)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_X_INC: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_INC :: i8(7)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_X_DEC: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_DEC :: i8(8)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Y_INC: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_INC :: i8(9)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Y_DEC: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_DEC :: i8(10)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Z_INC: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_INC :: i8(11)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Z_DEC: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_DEC :: i8(12)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_ROLL_CCW: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CCW :: i8(13)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_ROLL_CW: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CW :: i8(14)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_PITCH_UP: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_UP :: i8(15)
// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_PITCH_DOWN: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_DOWN :: i8(16)
// @brief interbotix_xs_msgs/msg/LocobotJoy.WAIST_CCW: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CCW :: i8(17)
// @brief interbotix_xs_msgs/msg/LocobotJoy.WAIST_CW: original int8 constant.
// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CW :: i8(18)
// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_RELEASE: original int8 constant.
// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_RELEASE :: i8(19)
// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_GRASP: original int8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_GRASP :: i8(20)
// @brief interbotix_xs_msgs/msg/LocobotJoy.HOME_POSE: original int8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_HOME_POSE :: i8(21)
// @brief interbotix_xs_msgs/msg/LocobotJoy.SLEEP_POSE: original int8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_SLEEP_POSE :: i8(22)
// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_INC :: i8(23)
// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_DEC :: i8(24)
// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_COARSE: original int8 constant.
// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_COARSE :: i8(25)
// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_FINE :: i8(26)
// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_PWM_INC: original int8 constant.
// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_INC :: i8(27)
// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_PWM_DEC: original int8 constant.
// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_DEC :: i8(28)
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/LocobotJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgLocobotJoy :: proc() -> Ros2Interbotix_xs_msgsMsgLocobotJoy {
 v: Ros2Interbotix_xs_msgsMsgLocobotJoy
 v.field_base_x_cmd = 0
 v.field_base_theta_cmd = 0
 v.field_base_reset_odom_cmd = 0
 v.field_pan_cmd = 0
 v.field_tilt_cmd = 0
 v.field_ee_x_cmd = 0
 v.field_ee_y_cmd = 0
 v.field_ee_z_cmd = 0
 v.field_ee_roll_cmd = 0
 v.field_ee_pitch_cmd = 0
 v.field_waist_cmd = 0
 v.field_gripper_cmd = 0
 v.field_pose_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 v.field_gripper_pwm_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/LocobotJoy.
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
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgLocobotJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgLocobotJoy, w: ^Writer) -> bool {
 if !put_float64(w,v.field_base_x_cmd) { return false }
 if !put_float64(w,v.field_base_theta_cmd) { return false }
 if !put_integer(w,u64(v.field_base_reset_odom_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pan_cmd),1) { return false }
 if !put_integer(w,u64(v.field_tilt_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_x_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_y_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_z_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_roll_cmd),1) { return false }
 if !put_integer(w,u64(v.field_ee_pitch_cmd),1) { return false }
 if !put_integer(w,u64(v.field_waist_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_cmd),1) { return false }
 if !put_integer(w,u64(v.field_pose_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 if !put_integer(w,u64(v.field_gripper_pwm_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/LocobotJoy.
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
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgLocobotJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgLocobotJoy,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgLocobotJoy()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_base_x_cmd=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_base_theta_cmd=f64(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_base_reset_odom_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pan_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tilt_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_x_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_y_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_z_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_roll_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_ee_pitch_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_waist_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pose_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_pwm_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/LocobotJoy value.
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
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgLocobotJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgLocobotJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=30}
 if !write_Ros2Interbotix_xs_msgsMsgLocobotJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=30}
 if !write_Ros2Interbotix_xs_msgsMsgLocobotJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/LocobotJoy value.
// @details Require the complete 30..30-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgLocobotJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgLocobotJoy,u32) {
 if len(bytes)<30 || len(bytes)>30 { return Ros2Interbotix_xs_msgsMsgLocobotJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgLocobotJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgLocobotJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/msg/TurretJoy value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy :: struct {
 // @brief interbotix_xs_msgs/msg/TurretJoy.pan_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_pan_cmd: i8,
 // @brief interbotix_xs_msgs/msg/TurretJoy.tilt_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_tilt_cmd: i8,
 // @brief interbotix_xs_msgs/msg/TurretJoy.speed_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_cmd: i8,
 // @brief interbotix_xs_msgs/msg/TurretJoy.speed_toggle_cmd: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
 field_speed_toggle_cmd: i8,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/msg/TurretJoy in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of interbotix_xs_msgs/msg/TurretJoy.
// @details Exact identity UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_Codec_Identity :: "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f"
// @brief Original ROS type name for interbotix_xs_msgs/msg/TurretJoy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_Native_Type :: "interbotix_xs_msgs/msg/TurretJoy"
// @brief Selected original native identity for interbotix_xs_msgs/msg/TurretJoy.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_Native_Identity :: ""
// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_CCW: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CCW :: i8(1)
// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_CW: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CW :: i8(2)
// @brief interbotix_xs_msgs/msg/TurretJoy.TILT_UP: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_TILT_UP :: i8(3)
// @brief interbotix_xs_msgs/msg/TurretJoy.TILT_DOWN: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_TILT_DOWN :: i8(4)
// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_TILT_HOME: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_PAN_TILT_HOME :: i8(5)
// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_INC: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_INC :: i8(6)
// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_DEC: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_DEC :: i8(7)
// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_COARSE: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_COARSE :: i8(8)
// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_FINE: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_FINE :: i8(9)
// @brief Construct the declared defaults of interbotix_xs_msgs/msg/TurretJoy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsMsgTurretJoy :: proc() -> Ros2Interbotix_xs_msgsMsgTurretJoy {
 v: Ros2Interbotix_xs_msgsMsgTurretJoy
 v.field_pan_cmd = 0
 v.field_tilt_cmd = 0
 v.field_speed_cmd = 0
 v.field_speed_toggle_cmd = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/msg/TurretJoy.
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
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsMsgTurretJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgTurretJoy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pan_cmd),1) { return false }
 if !put_integer(w,u64(v.field_tilt_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_cmd),1) { return false }
 if !put_integer(w,u64(v.field_speed_toggle_cmd),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/TurretJoy.
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
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsMsgTurretJoy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgTurretJoy,bool) {
 v:=init_Ros2Interbotix_xs_msgsMsgTurretJoy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pan_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tilt_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_cmd=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed_toggle_cmd=i8(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/msg/TurretJoy value.
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
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsMsgTurretJoy :: proc(v: ^Ros2Interbotix_xs_msgsMsgTurretJoy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Interbotix_xs_msgsMsgTurretJoy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Interbotix_xs_msgsMsgTurretJoy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/msg/TurretJoy value.
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
// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsMsgTurretJoy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsMsgTurretJoy,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Interbotix_xs_msgsMsgTurretJoy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsMsgTurretJoy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsMsgTurretJoy{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/MotorGains_Request value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 36..292 bytes
// and is identified by UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Request :: struct {
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.kp_pos: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_kp_pos: i32,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.ki_pos: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_ki_pos: i32,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.kd_pos: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_kd_pos: i32,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.k1: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_k1: i32,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.k2: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_k2: i32,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.kp_vel: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_kp_vel: i32,
 // @brief interbotix_xs_msgs/srv/MotorGains_Request.ki_vel: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
 field_ki_vel: i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/MotorGains_Request in bytes.
// @details The inclusive bound is 292 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Request_Maximum_Wire_Bytes :: 292
// @brief Canonical codec identity of interbotix_xs_msgs/srv/MotorGains_Request.
// @details Exact identity UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Request_Codec_Identity :: "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f"
// @brief Original ROS type name for interbotix_xs_msgs/srv/MotorGains_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Request_Native_Type :: "interbotix_xs_msgs/srv/MotorGains_Request"
// @brief Selected original native identity for interbotix_xs_msgs/srv/MotorGains_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/MotorGains_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvMotorGains_Request :: proc() -> Ros2Interbotix_xs_msgsSrvMotorGains_Request {
 v: Ros2Interbotix_xs_msgsSrvMotorGains_Request
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_kp_pos = 0
 v.field_ki_pos = 0
 v.field_kd_pos = 0
 v.field_k1 = 0
 v.field_k2 = 0
 v.field_kp_vel = 0
 v.field_ki_vel = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/MotorGains_Request.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvMotorGains_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvMotorGains_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_integer(w,u64(v.field_kp_pos),4) { return false }
 if !put_integer(w,u64(v.field_ki_pos),4) { return false }
 if !put_integer(w,u64(v.field_kd_pos),4) { return false }
 if !put_integer(w,u64(v.field_k1),4) { return false }
 if !put_integer(w,u64(v.field_k2),4) { return false }
 if !put_integer(w,u64(v.field_kp_vel),4) { return false }
 if !put_integer(w,u64(v.field_ki_vel),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/MotorGains_Request.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvMotorGains_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvMotorGains_Request,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvMotorGains_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_kp_pos=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_ki_pos=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_kd_pos=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_k1=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_k2=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_kp_vel=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_ki_vel=i32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/MotorGains_Request value.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvMotorGains_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvMotorGains_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=292}
 if !write_Ros2Interbotix_xs_msgsSrvMotorGains_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=292}
 if !write_Ros2Interbotix_xs_msgsSrvMotorGains_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/MotorGains_Request value.
// @details Require the complete 36..292-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvMotorGains_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvMotorGains_Request,u32) {
 if len(bytes)<36 || len(bytes)>292 { return Ros2Interbotix_xs_msgsSrvMotorGains_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvMotorGains_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvMotorGains_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/MotorGains_Response value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Response :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/MotorGains_Response in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Response_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/srv/MotorGains_Response.
// @details Exact identity UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Response_Codec_Identity :: "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972"
// @brief Original ROS type name for interbotix_xs_msgs/srv/MotorGains_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Response_Native_Type :: "interbotix_xs_msgs/srv/MotorGains_Response"
// @brief Selected original native identity for interbotix_xs_msgs/srv/MotorGains_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvMotorGains_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/MotorGains_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvMotorGains_Response :: proc() -> Ros2Interbotix_xs_msgsSrvMotorGains_Response {
 v: Ros2Interbotix_xs_msgsSrvMotorGains_Response
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/MotorGains_Response.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvMotorGains_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvMotorGains_Response, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/MotorGains_Response.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvMotorGains_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvMotorGains_Response,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvMotorGains_Response()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/MotorGains_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvMotorGains_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvMotorGains_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvMotorGains_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvMotorGains_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/MotorGains_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvMotorGains_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvMotorGains_Response,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Interbotix_xs_msgsSrvMotorGains_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvMotorGains_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvMotorGains_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Request value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
// and is identified by UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Request :: struct {
 // @brief interbotix_xs_msgs/srv/OperatingModes_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/srv/OperatingModes_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/srv/OperatingModes_Request.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
 field_mode: string,
 // @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_type: string; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
 field_profile_type: string,
 // @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_velocity: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
 field_profile_velocity: i32,
 // @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_acceleration: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
 field_profile_acceleration: i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/OperatingModes_Request in bytes.
// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Request_Maximum_Wire_Bytes :: 536
// @brief Canonical codec identity of interbotix_xs_msgs/srv/OperatingModes_Request.
// @details Exact identity UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Request_Codec_Identity :: "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15"
// @brief Original ROS type name for interbotix_xs_msgs/srv/OperatingModes_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Request_Native_Type :: "interbotix_xs_msgs/srv/OperatingModes_Request"
// @brief Selected original native identity for interbotix_xs_msgs/srv/OperatingModes_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/OperatingModes_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvOperatingModes_Request :: proc() -> Ros2Interbotix_xs_msgsSrvOperatingModes_Request {
 v: Ros2Interbotix_xs_msgsSrvOperatingModes_Request
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_mode = ""
 v.field_profile_type = ""
 v.field_profile_velocity = 0
 v.field_profile_acceleration = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/OperatingModes_Request.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvOperatingModes_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvOperatingModes_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_string(w,v.field_mode,128) { return false }
 if !put_string(w,v.field_profile_type,128) { return false }
 if !put_integer(w,u64(v.field_profile_velocity),4) { return false }
 if !put_integer(w,u64(v.field_profile_acceleration),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/OperatingModes_Request.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvOperatingModes_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvOperatingModes_Request,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvOperatingModes_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_mode=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_profile_type=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_profile_velocity=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_profile_acceleration=i32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/OperatingModes_Request value.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvOperatingModes_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvOperatingModes_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=536}
 if !write_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=536}
 if !write_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/OperatingModes_Request value.
// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvOperatingModes_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvOperatingModes_Request,u32) {
 if len(bytes)<24 || len(bytes)>536 { return Ros2Interbotix_xs_msgsSrvOperatingModes_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvOperatingModes_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvOperatingModes_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Response value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Response :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/OperatingModes_Response in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Response_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/srv/OperatingModes_Response.
// @details Exact identity UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Response_Codec_Identity :: "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345"
// @brief Original ROS type name for interbotix_xs_msgs/srv/OperatingModes_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Response_Native_Type :: "interbotix_xs_msgs/srv/OperatingModes_Response"
// @brief Selected original native identity for interbotix_xs_msgs/srv/OperatingModes_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvOperatingModes_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/OperatingModes_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvOperatingModes_Response :: proc() -> Ros2Interbotix_xs_msgsSrvOperatingModes_Response {
 v: Ros2Interbotix_xs_msgsSrvOperatingModes_Response
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/OperatingModes_Response.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvOperatingModes_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvOperatingModes_Response, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/OperatingModes_Response.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvOperatingModes_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvOperatingModes_Response,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvOperatingModes_Response()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/OperatingModes_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvOperatingModes_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvOperatingModes_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/OperatingModes_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvOperatingModes_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvOperatingModes_Response,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Interbotix_xs_msgsSrvOperatingModes_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvOperatingModes_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvOperatingModes_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/Reboot_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..266 bytes
// and is identified by UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Request :: struct {
 // @brief interbotix_xs_msgs/srv/Reboot_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/srv/Reboot_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/srv/Reboot_Request.enable: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
 field_enable: bool,
 // @brief interbotix_xs_msgs/srv/Reboot_Request.smart_reboot: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
 field_smart_reboot: bool,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/Reboot_Request in bytes.
// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Request_Maximum_Wire_Bytes :: 266
// @brief Canonical codec identity of interbotix_xs_msgs/srv/Reboot_Request.
// @details Exact identity UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Request_Codec_Identity :: "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55"
// @brief Original ROS type name for interbotix_xs_msgs/srv/Reboot_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Request_Native_Type :: "interbotix_xs_msgs/srv/Reboot_Request"
// @brief Selected original native identity for interbotix_xs_msgs/srv/Reboot_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/Reboot_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvReboot_Request :: proc() -> Ros2Interbotix_xs_msgsSrvReboot_Request {
 v: Ros2Interbotix_xs_msgsSrvReboot_Request
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_enable = false
 v.field_smart_reboot = false
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/Reboot_Request.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvReboot_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvReboot_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_bool(w,v.field_enable) { return false }
 if !put_bool(w,v.field_smart_reboot) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/Reboot_Request.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvReboot_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvReboot_Request,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvReboot_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_enable=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_smart_reboot=bool(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/Reboot_Request value.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvReboot_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvReboot_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=266}
 if !write_Ros2Interbotix_xs_msgsSrvReboot_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=266}
 if !write_Ros2Interbotix_xs_msgsSrvReboot_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/Reboot_Request value.
// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvReboot_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvReboot_Request,u32) {
 if len(bytes)<10 || len(bytes)>266 { return Ros2Interbotix_xs_msgsSrvReboot_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvReboot_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvReboot_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/Reboot_Response value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Response :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/Reboot_Response in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Response_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/srv/Reboot_Response.
// @details Exact identity UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Response_Codec_Identity :: "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b"
// @brief Original ROS type name for interbotix_xs_msgs/srv/Reboot_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Response_Native_Type :: "interbotix_xs_msgs/srv/Reboot_Response"
// @brief Selected original native identity for interbotix_xs_msgs/srv/Reboot_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvReboot_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/Reboot_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvReboot_Response :: proc() -> Ros2Interbotix_xs_msgsSrvReboot_Response {
 v: Ros2Interbotix_xs_msgsSrvReboot_Response
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/Reboot_Response.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvReboot_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvReboot_Response, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/Reboot_Response.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvReboot_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvReboot_Response,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvReboot_Response()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/Reboot_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvReboot_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvReboot_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvReboot_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvReboot_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/Reboot_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvReboot_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvReboot_Response,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Interbotix_xs_msgsSrvReboot_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvReboot_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvReboot_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/RegisterValues_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..400 bytes
// and is identified by UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Request :: struct {
 // @brief interbotix_xs_msgs/srv/RegisterValues_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/srv/RegisterValues_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/srv/RegisterValues_Request.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
 field_reg: string,
 // @brief interbotix_xs_msgs/srv/RegisterValues_Request.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
 field_value: i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RegisterValues_Request in bytes.
// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Request_Maximum_Wire_Bytes :: 400
// @brief Canonical codec identity of interbotix_xs_msgs/srv/RegisterValues_Request.
// @details Exact identity UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Request_Codec_Identity :: "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd"
// @brief Original ROS type name for interbotix_xs_msgs/srv/RegisterValues_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Request_Native_Type :: "interbotix_xs_msgs/srv/RegisterValues_Request"
// @brief Selected original native identity for interbotix_xs_msgs/srv/RegisterValues_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/RegisterValues_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvRegisterValues_Request :: proc() -> Ros2Interbotix_xs_msgsSrvRegisterValues_Request {
 v: Ros2Interbotix_xs_msgsSrvRegisterValues_Request
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_reg = ""
 v.field_value = 0
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/RegisterValues_Request.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvRegisterValues_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvRegisterValues_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_string(w,v.field_reg,128) { return false }
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RegisterValues_Request.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvRegisterValues_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvRegisterValues_Request,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvRegisterValues_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_reg=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/RegisterValues_Request value.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvRegisterValues_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvRegisterValues_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=400}
 if !write_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=400}
 if !write_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/RegisterValues_Request value.
// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvRegisterValues_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvRegisterValues_Request,u32) {
 if len(bytes)<16 || len(bytes)>400 { return Ros2Interbotix_xs_msgsSrvRegisterValues_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvRegisterValues_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvRegisterValues_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/RegisterValues_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes and
// is identified by UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Response :: struct {
 // @brief interbotix_xs_msgs/srv/RegisterValues_Response.values: int32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
 field_values: []i32,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RegisterValues_Response in bytes.
// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Response_Maximum_Wire_Bytes :: 68
// @brief Canonical codec identity of interbotix_xs_msgs/srv/RegisterValues_Response.
// @details Exact identity UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Response_Codec_Identity :: "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a"
// @brief Original ROS type name for interbotix_xs_msgs/srv/RegisterValues_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Response_Native_Type :: "interbotix_xs_msgs/srv/RegisterValues_Response"
// @brief Selected original native identity for interbotix_xs_msgs/srv/RegisterValues_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRegisterValues_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/RegisterValues_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvRegisterValues_Response :: proc() -> Ros2Interbotix_xs_msgsSrvRegisterValues_Response {
 v: Ros2Interbotix_xs_msgsSrvRegisterValues_Response
 v.field_values = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/RegisterValues_Response.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvRegisterValues_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvRegisterValues_Response, w: ^Writer) -> bool {
 if len(v.field_values)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_integer(w,u64(e),4) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RegisterValues_Response.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvRegisterValues_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvRegisterValues_Response,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvRegisterValues_Response()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_values=make([]i32,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=i32(b)
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/RegisterValues_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvRegisterValues_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvRegisterValues_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=68}
 if !write_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=68}
 if !write_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/RegisterValues_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvRegisterValues_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvRegisterValues_Response,u32) {
 if len(bytes)<4 || len(bytes)>68 { return Ros2Interbotix_xs_msgsSrvRegisterValues_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvRegisterValues_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvRegisterValues_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/RobotInfo_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..264 bytes
// and is identified by UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Request :: struct {
 // @brief interbotix_xs_msgs/srv/RobotInfo_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RobotInfo_Request in bytes.
// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Request_Maximum_Wire_Bytes :: 264
// @brief Canonical codec identity of interbotix_xs_msgs/srv/RobotInfo_Request.
// @details Exact identity UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Request_Codec_Identity :: "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9"
// @brief Original ROS type name for interbotix_xs_msgs/srv/RobotInfo_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Request_Native_Type :: "interbotix_xs_msgs/srv/RobotInfo_Request"
// @brief Selected original native identity for interbotix_xs_msgs/srv/RobotInfo_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/RobotInfo_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvRobotInfo_Request :: proc() -> Ros2Interbotix_xs_msgsSrvRobotInfo_Request {
 v: Ros2Interbotix_xs_msgsSrvRobotInfo_Request
 v.field_cmd_type = ""
 v.field_name = ""
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/RobotInfo_Request.
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvRobotInfo_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvRobotInfo_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RobotInfo_Request.
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvRobotInfo_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvRobotInfo_Request,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvRobotInfo_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/RobotInfo_Request value.
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvRobotInfo_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvRobotInfo_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=264}
 if !write_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=264}
 if !write_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/RobotInfo_Request value.
// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvRobotInfo_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvRobotInfo_Request,u32) {
 if len(bytes)<8 || len(bytes)>264 { return Ros2Interbotix_xs_msgsSrvRobotInfo_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvRobotInfo_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvRobotInfo_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/RobotInfo_Response value.
// @details All 11 declared fields are retained in source order. The canonical representation occupies 42..18474
// bytes and is identified by UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Response :: struct {
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_mode: string,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_profile_type: string,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_names: string; 0..64 elements; each string is 0..128
 // bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_names: []string,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_ids: int16; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_ids: []i16,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_lower_limits: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_lower_limits: []f32,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_upper_limits: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_upper_limits: []f32,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_velocity_limits: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_velocity_limits: []f32,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_sleep_positions: float32; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_sleep_positions: []f32,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_state_indices: int16; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_joint_state_indices: []i16,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.num_joints: int16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_num_joints: i16,
 // @brief interbotix_xs_msgs/srv/RobotInfo_Response.name: string; 0..64 elements; each string is 0..128 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
 field_name: []string,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RobotInfo_Response in bytes.
// @details The inclusive bound is 18474 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Response_Maximum_Wire_Bytes :: 18474
// @brief Canonical codec identity of interbotix_xs_msgs/srv/RobotInfo_Response.
// @details Exact identity UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Response_Codec_Identity :: "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14"
// @brief Original ROS type name for interbotix_xs_msgs/srv/RobotInfo_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Response_Native_Type :: "interbotix_xs_msgs/srv/RobotInfo_Response"
// @brief Selected original native identity for interbotix_xs_msgs/srv/RobotInfo_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvRobotInfo_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/RobotInfo_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvRobotInfo_Response :: proc() -> Ros2Interbotix_xs_msgsSrvRobotInfo_Response {
 v: Ros2Interbotix_xs_msgsSrvRobotInfo_Response
 v.field_mode = ""
 v.field_profile_type = ""
 v.field_joint_names = nil
 v.field_joint_ids = nil
 v.field_joint_lower_limits = nil
 v.field_joint_upper_limits = nil
 v.field_joint_velocity_limits = nil
 v.field_joint_sleep_positions = nil
 v.field_joint_state_indices = nil
 v.field_num_joints = 0
 v.field_name = nil
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/RobotInfo_Response.
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvRobotInfo_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvRobotInfo_Response, w: ^Writer) -> bool {
 if !put_string(w,v.field_mode,128) { return false }
 if !put_string(w,v.field_profile_type,128) { return false }
 if len(v.field_joint_names)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_joint_ids)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_ids)),4) { return false }
 for e in v.field_joint_ids {
 if !put_integer(w,u64(e),2) { return false }
 }
 if len(v.field_joint_lower_limits)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_lower_limits)),4) { return false }
 for e in v.field_joint_lower_limits {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_upper_limits)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_upper_limits)),4) { return false }
 for e in v.field_joint_upper_limits {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_velocity_limits)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_velocity_limits)),4) { return false }
 for e in v.field_joint_velocity_limits {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_sleep_positions)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_sleep_positions)),4) { return false }
 for e in v.field_joint_sleep_positions {
 if !put_float32(w,e) { return false }
 }
 if len(v.field_joint_state_indices)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_state_indices)),4) { return false }
 for e in v.field_joint_state_indices {
 if !put_integer(w,u64(e),2) { return false }
 }
 if !put_integer(w,u64(v.field_num_joints),2) { return false }
 if len(v.field_name)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,128) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RobotInfo_Response.
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvRobotInfo_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Interbotix_xs_msgsSrvRobotInfo_Response,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvRobotInfo_Response()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_mode=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_profile_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_ids=make([]i16,int(n),allocator)
 }
 for &e in v.field_joint_ids {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=i16(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_lower_limits=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_lower_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_upper_limits=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_upper_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_velocity_limits=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_velocity_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_sleep_positions=make([]f32,int(n),allocator)
 }
 for &e in v.field_joint_sleep_positions {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joint_state_indices=make([]i16,int(n),allocator)
 }
 for &e in v.field_joint_state_indices {
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 e=i16(b)
 }
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_num_joints=i16(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_name=make([]string,int(n),allocator)
 }
 for &e in v.field_name {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/RobotInfo_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvRobotInfo_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvRobotInfo_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=18474}
 if !write_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=18474}
 if !write_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/RobotInfo_Response value.
// @details Require the complete 42..18474-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvRobotInfo_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvRobotInfo_Response,u32) {
 if len(bytes)<42 || len(bytes)>18474 { return Ros2Interbotix_xs_msgsSrvRobotInfo_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvRobotInfo_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvRobotInfo_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/TorqueEnable_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..265 bytes
// and is identified by UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Request :: struct {
 // @brief interbotix_xs_msgs/srv/TorqueEnable_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
 field_cmd_type: string,
 // @brief interbotix_xs_msgs/srv/TorqueEnable_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
 field_name: string,
 // @brief interbotix_xs_msgs/srv/TorqueEnable_Request.enable: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
 field_enable: bool,
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/TorqueEnable_Request in bytes.
// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_Maximum_Wire_Bytes :: 265
// @brief Canonical codec identity of interbotix_xs_msgs/srv/TorqueEnable_Request.
// @details Exact identity UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_Codec_Identity :: "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da"
// @brief Original ROS type name for interbotix_xs_msgs/srv/TorqueEnable_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_Native_Type :: "interbotix_xs_msgs/srv/TorqueEnable_Request"
// @brief Selected original native identity for interbotix_xs_msgs/srv/TorqueEnable_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/TorqueEnable_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request :: proc() -> Ros2Interbotix_xs_msgsSrvTorqueEnable_Request {
 v: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
 v.field_cmd_type = ""
 v.field_name = ""
 v.field_enable = false
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/TorqueEnable_Request.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvTorqueEnable_Request, w: ^Writer) -> bool {
 if !put_string(w,v.field_cmd_type,128) { return false }
 if !put_string(w,v.field_name,128) { return false }
 if !put_bool(w,v.field_enable) { return false }
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/TorqueEnable_Request.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvTorqueEnable_Request,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cmd_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_enable=bool(b)
 }
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/TorqueEnable_Request value.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request :: proc(v: ^Ros2Interbotix_xs_msgsSrvTorqueEnable_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=265}
 if !write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=265}
 if !write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/TorqueEnable_Request value.
// @details Require the complete 9..265-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvTorqueEnable_Request,u32) {
 if len(bytes)<9 || len(bytes)>265 { return Ros2Interbotix_xs_msgsSrvTorqueEnable_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvTorqueEnable_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 interbotix_xs_msgs/srv/TorqueEnable_Response value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and
// is identified by UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Response :: struct {
}
// @brief Maximum canonical extent of interbotix_xs_msgs/srv/TorqueEnable_Response in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of interbotix_xs_msgs/srv/TorqueEnable_Response.
// @details Exact identity UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_Codec_Identity :: "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b"
// @brief Original ROS type name for interbotix_xs_msgs/srv/TorqueEnable_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_Native_Type :: "interbotix_xs_msgs/srv/TorqueEnable_Response"
// @brief Selected original native identity for interbotix_xs_msgs/srv/TorqueEnable_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_Native_Identity :: ""
// @brief Construct the declared defaults of interbotix_xs_msgs/srv/TorqueEnable_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
init_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response :: proc() -> Ros2Interbotix_xs_msgsSrvTorqueEnable_Response {
 v: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
 return v
}
// @brief Append every canonical field of interbotix_xs_msgs/srv/TorqueEnable_Response.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvTorqueEnable_Response, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/TorqueEnable_Response.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response :: proc(
    r: ^Reader,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvTorqueEnable_Response,bool) {
 v:=init_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response()
 return v,true
}
// @brief Encode one complete interbotix_xs_msgs/srv/TorqueEnable_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
encode_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response :: proc(v: ^Ros2Interbotix_xs_msgsSrvTorqueEnable_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete interbotix_xs_msgs/srv/TorqueEnable_Response value.
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
// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/odin/API.md
decode_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response :: proc(
    bytes: []u8,
    allocator: runtime.Allocator,
) -> (Ros2Interbotix_xs_msgsSrvTorqueEnable_Response,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Interbotix_xs_msgsSrvTorqueEnable_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Interbotix_xs_msgsSrvTorqueEnable_Response{},reader.code }
 return value,0
}
