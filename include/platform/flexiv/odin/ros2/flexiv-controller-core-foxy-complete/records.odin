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
// @brief Complete ROS 2 builtin_interfaces/msg/Duration value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgDuration :: struct {
 // @brief builtin_interfaces/msg/Duration.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgDuration_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgDuration_Codec_Identity :: "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
// @brief Original ROS type name for builtin_interfaces/msg/Duration.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgDuration_Native_Type :: "builtin_interfaces/msg/Duration"
// @brief Selected original native identity for builtin_interfaces/msg/Duration.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgDuration_Native_Identity :: ""
// @brief Construct the declared defaults of builtin_interfaces/msg/Duration.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Builtin_interfacesMsgDuration :: proc(v: ^Ros2Builtin_interfacesMsgDuration, w: ^Writer) -> bool {
 if v.field_nanosec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nanosec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of builtin_interfaces/msg/Duration.
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
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Builtin_interfacesMsgDuration :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgDuration,bool)
        {
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Builtin_interfacesMsgDuration :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Builtin_interfacesMsgDuration,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgDuration{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgDuration(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgDuration{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/Header value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..268 bytes and
// is identified by UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b.
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
 // @brief std_msgs/msg/Header.frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
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
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of std_msgs/msg/Header.
// @details Exact identity UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
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
 if !put_string(w,v.field_frame_id,256) { return false }
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
 b,ok:=get_string(r,256); if !ok { return v,false }
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
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros2Std_msgsMsgHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros2Std_msgsMsgHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/Header value.
// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and trailing
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
 if len(bytes)<12 || len(bytes)>268 { return Ros2Std_msgsMsgHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..9372 bytes and
// is identified by UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState :: struct {
 // @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief sensor_msgs/msg/JointState.name: string; 0..32 elements; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_name: []string,
 // @brief sensor_msgs/msg/JointState.position: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief sensor_msgs/msg/JointState.velocity: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief sensor_msgs/msg/JointState.effort: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_effort: []f64,
}
// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
// @details The inclusive bound is 9372 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Maximum_Wire_Bytes :: 9372
// @brief Canonical codec identity of sensor_msgs/msg/JointState.
// @details Exact identity UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Codec_Identity :: "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556"
// @brief Original ROS type name for sensor_msgs/msg/JointState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Native_Type :: "sensor_msgs/msg/JointState"
// @brief Selected original native identity for sensor_msgs/msg/JointState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/msg/JointState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Sensor_msgsMsgJointState :: proc(v: ^Ros2Sensor_msgsMsgJointState, w: ^Writer) -> bool {
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(v.field_position) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { w.code=22; return
         false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { w.code=22; return false
         }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { w.code=22; return false
         }
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_name)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_position)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/msg/JointState.
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
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Sensor_msgsMsgJointState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgJointState,bool) {
 v:=init_Ros2Sensor_msgsMsgJointState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_name=make([]string,int(n),allocator)
 }
 for &e in v.field_name {
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
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
 if n>32 { r.code=22; return v,false }
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
 if n>32 { r.code=22; return v,false }
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
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { r.code=22; return
         v,false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { r.code=22; return
         v,false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { r.code=22; return
         v,false }
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Sensor_msgsMsgJointState :: proc(v: ^Ros2Sensor_msgsMsgJointState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9372}
 if !write_Ros2Sensor_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9372}
 if !write_Ros2Sensor_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
// @details Require the complete 28..9372-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Sensor_msgsMsgJointState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgJointState,u32) {
 if len(bytes)<28 || len(bytes)>9372 { return Ros2Sensor_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..1048 bytes and
// is identified by UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint :: struct {
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_positions: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_accelerations: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_effort: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_time_from_start: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectoryPoint in bytes.
// @details The inclusive bound is 1048 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Maximum_Wire_Bytes :: 1048
// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
// @details Exact identity UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Codec_Identity ::
        "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c"
// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectoryPoint.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Native_Type :: "trajectory_msgs/msg/JointTrajectoryPoint"
// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectoryPoint.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectoryPoint.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, w: ^Writer) -> bool {
 if len(v.field_positions)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_positions)),4) { return false }
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocities)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_accelerations)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_accelerations)),4) { return false }
 for e in v.field_accelerations {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_time_from_start,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectoryPoint.
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Trajectory_msgsMsgJointTrajectoryPoint,bool) {
 v:=init_Ros2Trajectory_msgsMsgJointTrajectoryPoint()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
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
 if n>32 { r.code=22; return v,false }
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
 if n>32 { r.code=22; return v,false }
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
 if n>32 { r.code=22; return v,false }
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1048}
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1048}
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
// @details Require the complete 24..1048-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Trajectory_msgsMsgJointTrajectoryPoint,u32) {
 if len(bytes)<24 || len(bytes)>1048 { return Ros2Trajectory_msgsMsgJointTrajectoryPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgJointTrajectoryPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..16980 bytes
// and is identified by UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory :: struct {
 // @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..32 elements; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_points: []Ros2Trajectory_msgsMsgJointTrajectoryPoint,
}
// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectory in bytes.
// @details The inclusive bound is 16980 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory_Maximum_Wire_Bytes :: 16980
// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
// @details Exact identity UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory_Codec_Identity :: "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4"
// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectory.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory_Native_Type :: "trajectory_msgs/msg/JointTrajectory"
// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectory.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectory.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Trajectory_msgsMsgJointTrajectory :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectory, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_points)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_points)),4) { return false }
 for e in v.field_points {
 item:=e
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectory.
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Trajectory_msgsMsgJointTrajectory :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Trajectory_msgsMsgJointTrajectory,bool) {
 v:=init_Ros2Trajectory_msgsMsgJointTrajectory()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Trajectory_msgsMsgJointTrajectory :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectory, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16980}
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16980}
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
// @details Require the complete 20..16980-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Trajectory_msgsMsgJointTrajectory :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Trajectory_msgsMsgJointTrajectory,u32) {
 if len(bytes)<20 || len(bytes)>16980 { return Ros2Trajectory_msgsMsgJointTrajectory{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgJointTrajectory(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgJointTrajectory{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/MultiArrayDimension value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..268 bytes and
// is identified by UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayDimension :: struct {
 // @brief std_msgs/msg/MultiArrayDimension.label: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
 field_label: string,
 // @brief std_msgs/msg/MultiArrayDimension.size: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
 field_size: u32,
 // @brief std_msgs/msg/MultiArrayDimension.stride: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
 field_stride: u32,
}
// @brief Maximum canonical extent of std_msgs/msg/MultiArrayDimension in bytes.
// @details The inclusive bound is 268 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayDimension_Maximum_Wire_Bytes :: 268
// @brief Canonical codec identity of std_msgs/msg/MultiArrayDimension.
// @details Exact identity UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayDimension_Codec_Identity :: "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d"
// @brief Original ROS type name for std_msgs/msg/MultiArrayDimension.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayDimension_Native_Type :: "std_msgs/msg/MultiArrayDimension"
// @brief Selected original native identity for std_msgs/msg/MultiArrayDimension.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayDimension_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/MultiArrayDimension.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Std_msgsMsgMultiArrayDimension :: proc() -> Ros2Std_msgsMsgMultiArrayDimension {
 v: Ros2Std_msgsMsgMultiArrayDimension
 v.field_label = ""
 v.field_size = 0
 v.field_stride = 0
 return v
}
// @brief Append every canonical field of std_msgs/msg/MultiArrayDimension.
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
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_msgsMsgMultiArrayDimension :: proc(v: ^Ros2Std_msgsMsgMultiArrayDimension, w: ^Writer) -> bool {
 if !put_string(w,v.field_label,256) { return false }
 if !put_integer(w,u64(v.field_size),4) { return false }
 if !put_integer(w,u64(v.field_stride),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/MultiArrayDimension.
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
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Std_msgsMsgMultiArrayDimension :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Std_msgsMsgMultiArrayDimension,bool) {
 v:=init_Ros2Std_msgsMsgMultiArrayDimension()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_label=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_size=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_stride=u32(b)
 }
 return v,true
}
// @brief Encode one complete std_msgs/msg/MultiArrayDimension value.
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
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Std_msgsMsgMultiArrayDimension :: proc(v: ^Ros2Std_msgsMsgMultiArrayDimension, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=268}
 if !write_Ros2Std_msgsMsgMultiArrayDimension(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=268}
 if !write_Ros2Std_msgsMsgMultiArrayDimension(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/MultiArrayDimension value.
// @details Require the complete 12..268-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_msgsMsgMultiArrayDimension; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_msgsMsgMultiArrayDimension :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Std_msgsMsgMultiArrayDimension,u32) {
 if len(bytes)<12 || len(bytes)>268 { return Ros2Std_msgsMsgMultiArrayDimension{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgMultiArrayDimension(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgMultiArrayDimension{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/MultiArrayLayout value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..2152 bytes and
// is identified by UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayLayout :: struct {
 // @brief std_msgs/msg/MultiArrayLayout.dim: std_msgs/msg/MultiArrayDimension; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
 field_dim: []Ros2Std_msgsMsgMultiArrayDimension,
 // @brief std_msgs/msg/MultiArrayLayout.data_offset: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
 field_data_offset: u32,
}
// @brief Maximum canonical extent of std_msgs/msg/MultiArrayLayout in bytes.
// @details The inclusive bound is 2152 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayLayout_Maximum_Wire_Bytes :: 2152
// @brief Canonical codec identity of std_msgs/msg/MultiArrayLayout.
// @details Exact identity UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayLayout_Codec_Identity :: "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40"
// @brief Original ROS type name for std_msgs/msg/MultiArrayLayout.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayLayout_Native_Type :: "std_msgs/msg/MultiArrayLayout"
// @brief Selected original native identity for std_msgs/msg/MultiArrayLayout.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgMultiArrayLayout_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/MultiArrayLayout.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Std_msgsMsgMultiArrayLayout :: proc() -> Ros2Std_msgsMsgMultiArrayLayout {
 v: Ros2Std_msgsMsgMultiArrayLayout
 v.field_dim = nil
 v.field_data_offset = 0
 return v
}
// @brief Append every canonical field of std_msgs/msg/MultiArrayLayout.
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
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_msgsMsgMultiArrayLayout :: proc(v: ^Ros2Std_msgsMsgMultiArrayLayout, w: ^Writer) -> bool {
 if len(v.field_dim)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_dim)),4) { return false }
 for e in v.field_dim {
 item:=e
 if !write_Ros2Std_msgsMsgMultiArrayDimension(&item,w) { return false }
 }
 if !put_integer(w,u64(v.field_data_offset),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/MultiArrayLayout.
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
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Std_msgsMsgMultiArrayLayout :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgMultiArrayLayout,bool) {
 v:=init_Ros2Std_msgsMsgMultiArrayLayout()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_dim=make([]Ros2Std_msgsMsgMultiArrayDimension,int(n),allocator)
 }
 for &e in v.field_dim {
 {
 b,ok:=read_Ros2Std_msgsMsgMultiArrayDimension(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_data_offset=u32(b)
 }
 return v,true
}
// @brief Encode one complete std_msgs/msg/MultiArrayLayout value.
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
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Std_msgsMsgMultiArrayLayout :: proc(v: ^Ros2Std_msgsMsgMultiArrayLayout, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2152}
 if !write_Ros2Std_msgsMsgMultiArrayLayout(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2152}
 if !write_Ros2Std_msgsMsgMultiArrayLayout(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/MultiArrayLayout value.
// @details Require the complete 8..2152-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_msgsMsgMultiArrayLayout; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_msgsMsgMultiArrayLayout :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgMultiArrayLayout,u32) {
 if len(bytes)<8 || len(bytes)>2152 { return Ros2Std_msgsMsgMultiArrayLayout{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgMultiArrayLayout(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgMultiArrayLayout{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_msgs/msg/Float64MultiArray value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..2412 bytes and
// is identified by UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgFloat64MultiArray :: struct {
 // @brief std_msgs/msg/Float64MultiArray.layout: std_msgs/msg/MultiArrayLayout.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
 field_layout: Ros2Std_msgsMsgMultiArrayLayout,
 // @brief std_msgs/msg/Float64MultiArray.data: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
 field_data: []f64,
}
// @brief Maximum canonical extent of std_msgs/msg/Float64MultiArray in bytes.
// @details The inclusive bound is 2412 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgFloat64MultiArray_Maximum_Wire_Bytes :: 2412
// @brief Canonical codec identity of std_msgs/msg/Float64MultiArray.
// @details Exact identity UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgFloat64MultiArray_Codec_Identity :: "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2"
// @brief Original ROS type name for std_msgs/msg/Float64MultiArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgFloat64MultiArray_Native_Type :: "std_msgs/msg/Float64MultiArray"
// @brief Selected original native identity for std_msgs/msg/Float64MultiArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgFloat64MultiArray_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/msg/Float64MultiArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Std_msgsMsgFloat64MultiArray :: proc() -> Ros2Std_msgsMsgFloat64MultiArray {
 v: Ros2Std_msgsMsgFloat64MultiArray
 v.field_layout = Ros2Std_msgsMsgMultiArrayLayout{}
 v.field_data = nil
 return v
}
// @brief Append every canonical field of std_msgs/msg/Float64MultiArray.
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
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_msgsMsgFloat64MultiArray :: proc(v: ^Ros2Std_msgsMsgFloat64MultiArray, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgMultiArrayLayout(&v.field_layout,w) { return false }
 if len(v.field_data)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_data)),4) { return false }
 for e in v.field_data {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/msg/Float64MultiArray.
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
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Std_msgsMsgFloat64MultiArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgFloat64MultiArray,bool) {
 v:=init_Ros2Std_msgsMsgFloat64MultiArray()
 {
 b,ok:=read_Ros2Std_msgsMsgMultiArrayLayout(r,allocator); if !ok { return v,false }
 v.field_layout=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
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
// @brief Encode one complete std_msgs/msg/Float64MultiArray value.
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
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Std_msgsMsgFloat64MultiArray :: proc(v: ^Ros2Std_msgsMsgFloat64MultiArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2412}
 if !write_Ros2Std_msgsMsgFloat64MultiArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2412}
 if !write_Ros2Std_msgsMsgFloat64MultiArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/Float64MultiArray value.
// @details Require the complete 12..2412-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_msgsMsgFloat64MultiArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_msgsMsgFloat64MultiArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_msgsMsgFloat64MultiArray,u32)
        {
 if len(bytes)<12 || len(bytes)>2412 { return Ros2Std_msgsMsgFloat64MultiArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgFloat64MultiArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgFloat64MultiArray{},reader.code }
 return value,0
}
