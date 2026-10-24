// @file records.odin
// @brief Complete kuka values and adapters for the selected original interface catalog.
// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
// roles require the separately admitted SDK owner.
// @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
// @see document/platform/kuka/en_US/README.md

package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
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
decode_Ros2Builtin_interfacesMsgDuration :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgDuration,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgDuration{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgDuration(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgDuration{},reader.code }
 return value,0
}
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
// @brief Complete ROS 2 std_msgs/msg/Header value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..76 bytes and
// is identified by UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396.
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
 // @brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
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
// @details The inclusive bound is 76 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 76
// @brief Canonical codec identity of std_msgs/msg/Header.
// @details Exact identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_msgsMsgHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
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
 if !put_string(w,v.field_frame_id,64) { return false }
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
 b,ok:=get_string(r,64); if !ok { return v,false }
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
 measure:=Writer{measuring=true,limit=76}
 if !write_Ros2Std_msgsMsgHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=76}
 if !write_Ros2Std_msgsMsgHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/msg/Header value.
// @details Require the complete 12..76-byte canonical representation. Reject truncation, invalid fields and trailing
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
 if len(bytes)<12 || len(bytes)>76 { return Ros2Std_msgsMsgHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_msgsMsgHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_msgsMsgHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..408 bytes and
// is identified by UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint :: struct {
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_positions: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_accelerations: []f64,
 // @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..12 elements.
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
// @details The inclusive bound is 408 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Maximum_Wire_Bytes :: 408
// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
// @details Exact identity UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
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
 if len(v.field_positions)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_positions)),4) { return false }
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocities)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_accelerations)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_accelerations)),4) { return false }
 for e in v.field_accelerations {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>12 { w.code=22; return false }
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
read_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectoryPoint,bool) {
 v:=init_Ros2Trajectory_msgsMsgJointTrajectoryPoint()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
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
 if n>12 { r.code=22; return v,false }
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
 if n>12 { r.code=22; return v,false }
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
 if n>12 { r.code=22; return v,false }
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
encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=408}
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=408}
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
// @details Require the complete 24..408-byte canonical representation. Reject truncation, invalid fields and trailing
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
decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectoryPoint,u32) {
 if len(bytes)<24 || len(bytes)>408 { return Ros2Trajectory_msgsMsgJointTrajectoryPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgJointTrajectoryPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..4164 bytes and
// is identified by UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0.
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
 // @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..12 elements; each string is 0..64 bytes; strict
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
// @details The inclusive bound is 4164 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory_Maximum_Wire_Bytes :: 4164
// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
// @details Exact identity UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgJointTrajectory_Codec_Identity :: "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
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
 if len(v.field_joint_names)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,64) { return false }
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
read_Ros2Trajectory_msgsMsgJointTrajectory :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectory,bool) {
 v:=init_Ros2Trajectory_msgsMsgJointTrajectory()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
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
 measure:=Writer{measuring=true,limit=4164}
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4164}
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
// @details Require the complete 20..4164-byte canonical representation. Reject truncation, invalid fields and trailing
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
decode_Ros2Trajectory_msgsMsgJointTrajectory :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgJointTrajectory,u32) {
 if len(bytes)<20 || len(bytes)>4164 { return Ros2Trajectory_msgsMsgJointTrajectory{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgJointTrajectory(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgJointTrajectory{},reader.code }
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
// @brief Complete ROS 2 geometry_msgs/msg/Transform value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
// is identified by UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTransform :: struct {
 // @brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
 field_translation: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
 field_rotation: Ros2Geometry_msgsMsgQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Transform in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTransform_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/msg/Transform.
// @details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTransform_Codec_Identity :: "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
// @brief Original ROS type name for geometry_msgs/msg/Transform.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTransform_Native_Type :: "geometry_msgs/msg/Transform"
// @brief Selected original native identity for geometry_msgs/msg/Transform.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTransform_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Transform.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgTransform :: proc(v: ^Ros2Geometry_msgsMsgTransform, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_translation,w) { return false }
 if !write_Ros2Geometry_msgsMsgQuaternion(&v.field_rotation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Transform.
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
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTransform; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgTransform :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTransform,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros2Geometry_msgsMsgTransform{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTransform(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTransform{},reader.code }
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
// @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..324 bytes and
// is identified by UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: struct {
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms: geometry_msgs/msg/Transform; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_transforms: []Ros2Geometry_msgsMsgTransform,
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities: geometry_msgs/msg/Twist; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: []Ros2Geometry_msgsMsgTwist,
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations: geometry_msgs/msg/Twist; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_accelerations: []Ros2Geometry_msgsMsgTwist,
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_time_from_start: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint in bytes.
// @details The inclusive bound is 324 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Maximum_Wire_Bytes :: 324
// @brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
// @details Exact identity UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
// @brief Original ROS type name for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Native_Type :: "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint"
// @brief Selected original native identity for trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
 v: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
 v.field_transforms = nil
 v.field_velocities = nil
 v.field_accelerations = nil
 v.field_time_from_start = Ros2Builtin_interfacesMsgDuration{}
 return v
}
// @brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, w: ^Writer) -> bool {
 if len(v.field_transforms)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_transforms)),4) { return false }
 for e in v.field_transforms {
 item:=e
 if !write_Ros2Geometry_msgsMsgTransform(&item,w) { return false }
 }
 if len(v.field_velocities)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 item:=e
 if !write_Ros2Geometry_msgsMsgTwist(&item,w) { return false }
 }
 if len(v.field_accelerations)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_accelerations)),4) { return false }
 for e in v.field_accelerations {
 item:=e
 if !write_Ros2Geometry_msgsMsgTwist(&item,w) { return false }
 }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_time_from_start,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,bool) {
 v:=init_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_transforms=make([]Ros2Geometry_msgsMsgTransform,int(n),allocator)
 }
 for &e in v.field_transforms {
 {
 b,ok:=read_Ros2Geometry_msgsMsgTransform(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_velocities=make([]Ros2Geometry_msgsMsgTwist,int(n),allocator)
 }
 for &e in v.field_velocities {
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwist(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_accelerations=make([]Ros2Geometry_msgsMsgTwist,int(n),allocator)
 }
 for &e in v.field_accelerations {
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwist(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_time_from_start=b
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc(v: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=324}
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=324}
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
// @details Require the complete 20..324-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,u32) {
 if len(bytes)<20 || len(bytes)>324 { return Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectory value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..1516 bytes and
// is identified by UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: struct {
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectory.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names: string; 0..2 elements; each string is 0..64 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief trajectory_msgs/msg/MultiDOFJointTrajectory.points: trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; 0..4
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_points: []Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
}
// @brief Maximum canonical extent of trajectory_msgs/msg/MultiDOFJointTrajectory in bytes.
// @details The inclusive bound is 1516 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Maximum_Wire_Bytes :: 1516
// @brief Canonical codec identity of trajectory_msgs/msg/MultiDOFJointTrajectory.
// @details Exact identity UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Codec_Identity :: "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
// @brief Original ROS type name for trajectory_msgs/msg/MultiDOFJointTrajectory.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Native_Type :: "trajectory_msgs/msg/MultiDOFJointTrajectory"
// @brief Selected original native identity for trajectory_msgs/msg/MultiDOFJointTrajectory.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/msg/MultiDOFJointTrajectory.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
 v: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_names = nil
 v.field_points = nil
 return v
}
// @brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectory.
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc(v: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,64) { return false }
 }
 if len(v.field_points)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_points)),4) { return false }
 for e in v.field_points {
 item:=e
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectory.
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,bool) {
 v:=init_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_points=make([]Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,int(n),allocator)
 }
 for &e in v.field_points {
 {
 b,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc(v: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1516}
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1516}
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
// @details Require the complete 20..1516-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,u32) {
 if len(bytes)<20 || len(bytes)>1516 { return Ros2Trajectory_msgsMsgMultiDOFJointTrajectory{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Trajectory_msgsMsgMultiDOFJointTrajectory{},reader.code }
 return value,0
}
// @brief Complete ROS 2 control_msgs/msg/JointTolerance value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..92 bytes and
// is identified by UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointTolerance :: struct {
 // @brief control_msgs/msg/JointTolerance.name: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief control_msgs/msg/JointTolerance.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief control_msgs/msg/JointTolerance.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief control_msgs/msg/JointTolerance.acceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_acceleration: f64,
}
// @brief Maximum canonical extent of control_msgs/msg/JointTolerance in bytes.
// @details The inclusive bound is 92 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointTolerance_Maximum_Wire_Bytes :: 92
// @brief Canonical codec identity of control_msgs/msg/JointTolerance.
// @details Exact identity UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointTolerance_Codec_Identity :: "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
// @brief Original ROS type name for control_msgs/msg/JointTolerance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointTolerance_Native_Type :: "control_msgs/msg/JointTolerance"
// @brief Selected original native identity for control_msgs/msg/JointTolerance.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointTolerance_Native_Identity :: ""
// @brief Construct the declared defaults of control_msgs/msg/JointTolerance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Control_msgsMsgJointTolerance :: proc() -> Ros2Control_msgsMsgJointTolerance {
 v: Ros2Control_msgsMsgJointTolerance
 v.field_name = ""
 v.field_position = 0
 v.field_velocity = 0
 v.field_acceleration = 0
 return v
}
// @brief Append every canonical field of control_msgs/msg/JointTolerance.
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
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Control_msgsMsgJointTolerance :: proc(v: ^Ros2Control_msgsMsgJointTolerance, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,64) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_acceleration) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/msg/JointTolerance.
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
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Control_msgsMsgJointTolerance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Control_msgsMsgJointTolerance,bool) {
 v:=init_Ros2Control_msgsMsgJointTolerance()
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_position=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_velocity=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_acceleration=f64(b)
 }
 return v,true
}
// @brief Encode one complete control_msgs/msg/JointTolerance value.
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
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Control_msgsMsgJointTolerance :: proc(v: ^Ros2Control_msgsMsgJointTolerance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=92}
 if !write_Ros2Control_msgsMsgJointTolerance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=92}
 if !write_Ros2Control_msgsMsgJointTolerance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/msg/JointTolerance value.
// @details Require the complete 28..92-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Control_msgsMsgJointTolerance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Control_msgsMsgJointTolerance,u32) {
 if len(bytes)<28 || len(bytes)>92 { return Ros2Control_msgsMsgJointTolerance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Control_msgsMsgJointTolerance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Control_msgsMsgJointTolerance{},reader.code }
 return value,0
}
// @brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 30..542 bytes and
// is identified by UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance :: struct {
 // @brief control_msgs/msg/JointComponentTolerance.joint_name: string; each string is 0..512 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_joint_name: string,
 // @brief control_msgs/msg/JointComponentTolerance.component: uint16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_component: u16,
 // @brief control_msgs/msg/JointComponentTolerance.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief control_msgs/msg/JointComponentTolerance.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief control_msgs/msg/JointComponentTolerance.acceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_acceleration: f64,
}
// @brief Maximum canonical extent of control_msgs/msg/JointComponentTolerance in bytes.
// @details The inclusive bound is 542 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_Maximum_Wire_Bytes :: 542
// @brief Canonical codec identity of control_msgs/msg/JointComponentTolerance.
// @details Exact identity UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_Codec_Identity :: "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
// @brief Original ROS type name for control_msgs/msg/JointComponentTolerance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_Native_Type :: "control_msgs/msg/JointComponentTolerance"
// @brief Selected original native identity for control_msgs/msg/JointComponentTolerance.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_Native_Identity :: ""
// @brief control_msgs/msg/JointComponentTolerance.X_AXIS: original uint16 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_X_AXIS :: u16(1)
// @brief control_msgs/msg/JointComponentTolerance.Y_AXIS: original uint16 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_Y_AXIS :: u16(2)
// @brief control_msgs/msg/JointComponentTolerance.Z_AXIS: original uint16 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_Z_AXIS :: u16(3)
// @brief control_msgs/msg/JointComponentTolerance.TRANSLATION: original uint16 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_TRANSLATION :: u16(4)
// @brief control_msgs/msg/JointComponentTolerance.ROTATION: original uint16 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsMsgJointComponentTolerance_ROTATION :: u16(5)
// @brief Construct the declared defaults of control_msgs/msg/JointComponentTolerance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Control_msgsMsgJointComponentTolerance :: proc() -> Ros2Control_msgsMsgJointComponentTolerance {
 v: Ros2Control_msgsMsgJointComponentTolerance
 v.field_joint_name = ""
 v.field_component = 0
 v.field_position = 0
 v.field_velocity = 0
 v.field_acceleration = 0
 return v
}
// @brief Append every canonical field of control_msgs/msg/JointComponentTolerance.
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
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Control_msgsMsgJointComponentTolerance :: proc(v: ^Ros2Control_msgsMsgJointComponentTolerance, w: ^Writer) -> bool {
 if !put_string(w,v.field_joint_name,512) { return false }
 if !put_integer(w,u64(v.field_component),2) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_acceleration) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/msg/JointComponentTolerance.
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
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Control_msgsMsgJointComponentTolerance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Control_msgsMsgJointComponentTolerance,bool) {
 v:=init_Ros2Control_msgsMsgJointComponentTolerance()
 {
 b,ok:=get_string(r,512); if !ok { return v,false }
 v.field_joint_name=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_component=u16(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_position=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_velocity=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_acceleration=f64(b)
 }
 return v,true
}
// @brief Encode one complete control_msgs/msg/JointComponentTolerance value.
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
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Control_msgsMsgJointComponentTolerance :: proc(v: ^Ros2Control_msgsMsgJointComponentTolerance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=542}
 if !write_Ros2Control_msgsMsgJointComponentTolerance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=542}
 if !write_Ros2Control_msgsMsgJointComponentTolerance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/msg/JointComponentTolerance value.
// @details Require the complete 30..542-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Control_msgsMsgJointComponentTolerance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Control_msgsMsgJointComponentTolerance,u32) {
 if len(bytes)<30 || len(bytes)>542 { return Ros2Control_msgsMsgJointComponentTolerance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Control_msgsMsgJointComponentTolerance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Control_msgsMsgJointComponentTolerance{},reader.code }
 return value,0
}
// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 64..20920 bytes
// and is identified by UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Goal :: struct {
 // @brief control_msgs/action/FollowJointTrajectory_Goal.trajectory: trajectory_msgs/msg/JointTrajectory.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory,
 // @brief control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory:
 // trajectory_msgs/msg/MultiDOFJointTrajectory.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
 // @brief control_msgs/action/FollowJointTrajectory_Goal.path_tolerance: control_msgs/msg/JointTolerance; 0..12
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_path_tolerance: []Ros2Control_msgsMsgJointTolerance,
 // @brief control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance:
 // control_msgs/msg/JointComponentTolerance; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_component_path_tolerance: []Ros2Control_msgsMsgJointComponentTolerance,
 // @brief control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance: control_msgs/msg/JointTolerance; 0..12
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_goal_tolerance: []Ros2Control_msgsMsgJointTolerance,
 // @brief control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance:
 // control_msgs/msg/JointComponentTolerance; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_component_goal_tolerance: []Ros2Control_msgsMsgJointComponentTolerance,
 // @brief control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance: builtin_interfaces/msg/Duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration,
}
// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Goal in bytes.
// @details The inclusive bound is 20920 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Goal_Maximum_Wire_Bytes :: 20920
// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Goal.
// @details Exact identity UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Goal_Codec_Identity :: "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Goal_Native_Type :: "control_msgs/action/FollowJointTrajectory_Goal"
// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc() -> Ros2Control_msgsActionFollowJointTrajectory_Goal {
 v: Ros2Control_msgsActionFollowJointTrajectory_Goal
 v.field_trajectory = Ros2Trajectory_msgsMsgJointTrajectory{}
 v.field_multi_dof_trajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory{}
 v.field_path_tolerance = nil
 v.field_component_path_tolerance = nil
 v.field_goal_tolerance = nil
 v.field_component_goal_tolerance = nil
 v.field_goal_time_tolerance = Ros2Builtin_interfacesMsgDuration{}
 return v
}
// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Goal.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc(v: ^Ros2Control_msgsActionFollowJointTrajectory_Goal, w: ^Writer) -> bool {
 if !write_Ros2Trajectory_msgsMsgJointTrajectory(&v.field_trajectory,w) { return false }
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(&v.field_multi_dof_trajectory,w) { return false }
 if len(v.field_path_tolerance)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_path_tolerance)),4) { return false }
 for e in v.field_path_tolerance {
 item:=e
 if !write_Ros2Control_msgsMsgJointTolerance(&item,w) { return false }
 }
 if len(v.field_component_path_tolerance)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_component_path_tolerance)),4) { return false }
 for e in v.field_component_path_tolerance {
 item:=e
 if !write_Ros2Control_msgsMsgJointComponentTolerance(&item,w) { return false }
 }
 if len(v.field_goal_tolerance)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_goal_tolerance)),4) { return false }
 for e in v.field_goal_tolerance {
 item:=e
 if !write_Ros2Control_msgsMsgJointTolerance(&item,w) { return false }
 }
 if len(v.field_component_goal_tolerance)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_component_goal_tolerance)),4) { return false }
 for e in v.field_component_goal_tolerance {
 item:=e
 if !write_Ros2Control_msgsMsgJointComponentTolerance(&item,w) { return false }
 }
 if !write_Ros2Builtin_interfacesMsgDuration(&v.field_goal_time_tolerance,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Goal.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Control_msgsActionFollowJointTrajectory_Goal,bool) {
 v:=init_Ros2Control_msgsActionFollowJointTrajectory_Goal()
 {
 b,ok:=read_Ros2Trajectory_msgsMsgJointTrajectory(r,allocator); if !ok { return v,false }
 v.field_trajectory=b
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(r,allocator); if !ok { return v,false }
 v.field_multi_dof_trajectory=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
 v.field_path_tolerance=make([]Ros2Control_msgsMsgJointTolerance,int(n),allocator)
 }
 for &e in v.field_path_tolerance {
 {
 b,ok:=read_Ros2Control_msgsMsgJointTolerance(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
 v.field_component_path_tolerance=make([]Ros2Control_msgsMsgJointComponentTolerance,int(n),allocator)
 }
 for &e in v.field_component_path_tolerance {
 {
 b,ok:=read_Ros2Control_msgsMsgJointComponentTolerance(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
 v.field_goal_tolerance=make([]Ros2Control_msgsMsgJointTolerance,int(n),allocator)
 }
 for &e in v.field_goal_tolerance {
 {
 b,ok:=read_Ros2Control_msgsMsgJointTolerance(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
 v.field_component_goal_tolerance=make([]Ros2Control_msgsMsgJointComponentTolerance,int(n),allocator)
 }
 for &e in v.field_component_goal_tolerance {
 {
 b,ok:=read_Ros2Control_msgsMsgJointComponentTolerance(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgDuration(r,allocator); if !ok { return v,false }
 v.field_goal_time_tolerance=b
 }
 return v,true
}
// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Goal value.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc(v: ^Ros2Control_msgsActionFollowJointTrajectory_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=20920}
 if !write_Ros2Control_msgsActionFollowJointTrajectory_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=20920}
 if !write_Ros2Control_msgsActionFollowJointTrajectory_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal value.
// @details Require the complete 64..20920-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Control_msgsActionFollowJointTrajectory_Goal,u32) {
 if len(bytes)<64 || len(bytes)>20920 { return Ros2Control_msgsActionFollowJointTrajectory_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Control_msgsActionFollowJointTrajectory_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Control_msgsActionFollowJointTrajectory_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104 bytes and
// is identified by UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result :: struct {
 // @brief control_msgs/action/FollowJointTrajectory_Result.error_code: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error_code: i32,
 // @brief control_msgs/action/FollowJointTrajectory_Result.error_string: string; each string is 0..4096 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error_string: string,
}
// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Result in bytes.
// @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_Maximum_Wire_Bytes :: 4104
// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Result.
// @details Exact identity UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_Codec_Identity :: "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_Native_Type :: "control_msgs/action/FollowJointTrajectory_Result"
// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_Native_Identity :: ""
// @brief control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL: original int32 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL :: i32(0)
// @brief control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL: original int32 constant.
// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL :: i32(-1)
// @brief control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS: original int32 constant.
// @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS :: i32(-2)
// @brief control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP: original int32 constant.
// @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP :: i32(-3)
// @brief control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED: original int32 constant.
// @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED :: i32(-4)
// @brief control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED: original int32 constant.
// @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED :: i32(-5)
// @brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc() -> Ros2Control_msgsActionFollowJointTrajectory_Result {
 v: Ros2Control_msgsActionFollowJointTrajectory_Result
 v.field_error_code = 0
 v.field_error_string = ""
 return v
}
// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Result.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc(v: ^Ros2Control_msgsActionFollowJointTrajectory_Result, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_error_code),4) { return false }
 if !put_string(w,v.field_error_string,4096) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Result.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Control_msgsActionFollowJointTrajectory_Result,bool) {
 v:=init_Ros2Control_msgsActionFollowJointTrajectory_Result()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_error_code=i32(b)
 }
 {
 b,ok:=get_string(r,4096); if !ok { return v,false }
 v.field_error_string=b
 }
 return v,true
}
// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Result value.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc(v: ^Ros2Control_msgsActionFollowJointTrajectory_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4104}
 if !write_Ros2Control_msgsActionFollowJointTrajectory_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4104}
 if !write_Ros2Control_msgsActionFollowJointTrajectory_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result value.
// @details Require the complete 8..4104-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Control_msgsActionFollowJointTrajectory_Result,u32) {
 if len(bytes)<8 || len(bytes)>4104 { return Ros2Control_msgsActionFollowJointTrajectory_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Control_msgsActionFollowJointTrajectory_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Control_msgsActionFollowJointTrajectory_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Feedback value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 152..4128 bytes
// and is identified by UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Feedback :: struct {
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.joint_names: string; 0..12 elements; each string is 0..64
 // bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.desired: trajectory_msgs/msg/JointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.actual: trajectory_msgs/msg/JointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.error: trajectory_msgs/msg/JointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names: string; 0..2 elements; each string
 // is 0..512 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_multi_dof_joint_names: []string,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired:
 // trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual:
 // trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
 // @brief control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error:
 // trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
}
// @brief Maximum canonical extent of control_msgs/action/FollowJointTrajectory_Feedback in bytes.
// @details The inclusive bound is 4128 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Maximum_Wire_Bytes :: 4128
// @brief Canonical codec identity of control_msgs/action/FollowJointTrajectory_Feedback.
// @details Exact identity UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Codec_Identity :: "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
// @brief Original ROS type name for control_msgs/action/FollowJointTrajectory_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Native_Type :: "control_msgs/action/FollowJointTrajectory_Feedback"
// @brief Selected original native identity for control_msgs/action/FollowJointTrajectory_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc() -> Ros2Control_msgsActionFollowJointTrajectory_Feedback {
 v: Ros2Control_msgsActionFollowJointTrajectory_Feedback
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_names = nil
 v.field_desired = Ros2Trajectory_msgsMsgJointTrajectoryPoint{}
 v.field_actual = Ros2Trajectory_msgsMsgJointTrajectoryPoint{}
 v.field_error = Ros2Trajectory_msgsMsgJointTrajectoryPoint{}
 v.field_multi_dof_joint_names = nil
 v.field_multi_dof_desired = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint{}
 v.field_multi_dof_actual = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint{}
 v.field_multi_dof_error = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint{}
 return v
}
// @brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Feedback.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc(v: ^Ros2Control_msgsActionFollowJointTrajectory_Feedback, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,64) { return false }
 }
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&v.field_desired,w) { return false }
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&v.field_actual,w) { return false }
 if !write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&v.field_error,w) { return false }
 if len(v.field_multi_dof_joint_names)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_multi_dof_joint_names)),4) { return false }
 for e in v.field_multi_dof_joint_names {
 if !put_string(w,e,512) { return false }
 }
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&v.field_multi_dof_desired,w) { return false }
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&v.field_multi_dof_actual,w) { return false }
 if !write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&v.field_multi_dof_error,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Feedback.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Control_msgsActionFollowJointTrajectory_Feedback,bool) {
 v:=init_Ros2Control_msgsActionFollowJointTrajectory_Feedback()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_desired=b
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_actual=b
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_error=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_multi_dof_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_multi_dof_joint_names {
 {
 b,ok:=get_string(r,512); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_multi_dof_desired=b
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_multi_dof_actual=b
 }
 {
 b,ok:=read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_multi_dof_error=b
 }
 return v,true
}
// @brief Encode one complete control_msgs/action/FollowJointTrajectory_Feedback value.
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc(v: ^Ros2Control_msgsActionFollowJointTrajectory_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4128}
 if !write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4128}
 if !write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback value.
// @details Require the complete 152..4128-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Control_msgsActionFollowJointTrajectory_Feedback,u32) {
 if len(bytes)<152 || len(bytes)>4128 { return Ros2Control_msgsActionFollowJointTrajectory_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Control_msgsActionFollowJointTrajectory_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 kuka_driver_interfaces/msg/FRIState value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 40..40 bytes and
// is identified by UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIState :: struct {
 // @brief kuka_driver_interfaces/msg/FRIState.session_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_session_state: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.connection_quality: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_connection_quality: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.safety_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_safety_state: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.command_mode: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_command_mode: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.control_mode: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_control_mode: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.operation_mode: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_operation_mode: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.drive_state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_drive_state: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.overlay_type: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_overlay_type: i32,
 // @brief kuka_driver_interfaces/msg/FRIState.tracking_performance: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
 field_tracking_performance: f64,
}
// @brief Maximum canonical extent of kuka_driver_interfaces/msg/FRIState in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIState_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of kuka_driver_interfaces/msg/FRIState.
// @details Exact identity UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIState_Codec_Identity :: "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716"
// @brief Original ROS type name for kuka_driver_interfaces/msg/FRIState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIState_Native_Type :: "kuka_driver_interfaces/msg/FRIState"
// @brief Selected original native identity for kuka_driver_interfaces/msg/FRIState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIState_Native_Identity :: ""
// @brief Construct the declared defaults of kuka_driver_interfaces/msg/FRIState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Kuka_driver_interfacesMsgFRIState :: proc() -> Ros2Kuka_driver_interfacesMsgFRIState {
 v: Ros2Kuka_driver_interfacesMsgFRIState
 v.field_session_state = 0
 v.field_connection_quality = 0
 v.field_safety_state = 0
 v.field_command_mode = 0
 v.field_control_mode = 0
 v.field_operation_mode = 0
 v.field_drive_state = 0
 v.field_overlay_type = 0
 v.field_tracking_performance = 0
 return v
}
// @brief Append every canonical field of kuka_driver_interfaces/msg/FRIState.
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
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Kuka_driver_interfacesMsgFRIState :: proc(v: ^Ros2Kuka_driver_interfacesMsgFRIState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_session_state),4) { return false }
 if !put_integer(w,u64(v.field_connection_quality),4) { return false }
 if !put_integer(w,u64(v.field_safety_state),4) { return false }
 if !put_integer(w,u64(v.field_command_mode),4) { return false }
 if !put_integer(w,u64(v.field_control_mode),4) { return false }
 if !put_integer(w,u64(v.field_operation_mode),4) { return false }
 if !put_integer(w,u64(v.field_drive_state),4) { return false }
 if !put_integer(w,u64(v.field_overlay_type),4) { return false }
 if !put_float64(w,v.field_tracking_performance) { return false }
 return true
}
// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIState.
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
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Kuka_driver_interfacesMsgFRIState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgFRIState,bool) {
 v:=init_Ros2Kuka_driver_interfacesMsgFRIState()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_session_state=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_connection_quality=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_safety_state=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_command_mode=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_control_mode=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_operation_mode=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_drive_state=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_overlay_type=i32(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_tracking_performance=f64(b)
 }
 return v,true
}
// @brief Encode one complete kuka_driver_interfaces/msg/FRIState value.
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
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Kuka_driver_interfacesMsgFRIState :: proc(v: ^Ros2Kuka_driver_interfacesMsgFRIState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros2Kuka_driver_interfacesMsgFRIState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros2Kuka_driver_interfacesMsgFRIState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuka_driver_interfaces/msg/FRIState value.
// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Kuka_driver_interfacesMsgFRIState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgFRIState,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros2Kuka_driver_interfacesMsgFRIState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Kuka_driver_interfacesMsgFRIState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Kuka_driver_interfacesMsgFRIState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 kuka_driver_interfaces/msg/FRIStateArray value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..1736 bytes and
// is identified by UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIStateArray :: struct {
 // @brief kuka_driver_interfaces/msg/FRIStateArray.robot_names: string; 0..16 elements; each string is 0..64 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_robot_names: []string,
 // @brief kuka_driver_interfaces/msg/FRIStateArray.states: kuka_driver_interfaces/msg/FRIState; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_states: []Ros2Kuka_driver_interfacesMsgFRIState,
}
// @brief Maximum canonical extent of kuka_driver_interfaces/msg/FRIStateArray in bytes.
// @details The inclusive bound is 1736 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIStateArray_Maximum_Wire_Bytes :: 1736
// @brief Canonical codec identity of kuka_driver_interfaces/msg/FRIStateArray.
// @details Exact identity UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIStateArray_Codec_Identity :: "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449"
// @brief Original ROS type name for kuka_driver_interfaces/msg/FRIStateArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIStateArray_Native_Type :: "kuka_driver_interfaces/msg/FRIStateArray"
// @brief Selected original native identity for kuka_driver_interfaces/msg/FRIStateArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFRIStateArray_Native_Identity :: ""
// @brief Construct the declared defaults of kuka_driver_interfaces/msg/FRIStateArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Kuka_driver_interfacesMsgFRIStateArray :: proc() -> Ros2Kuka_driver_interfacesMsgFRIStateArray {
 v: Ros2Kuka_driver_interfacesMsgFRIStateArray
 v.field_robot_names = nil
 v.field_states = nil
 return v
}
// @brief Append every canonical field of kuka_driver_interfaces/msg/FRIStateArray.
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
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Kuka_driver_interfacesMsgFRIStateArray :: proc(v: ^Ros2Kuka_driver_interfacesMsgFRIStateArray, w: ^Writer) -> bool {
 if len(v.field_robot_names)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_robot_names)),4) { return false }
 for e in v.field_robot_names {
 if !put_string(w,e,64) { return false }
 }
 if len(v.field_states)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_states)),4) { return false }
 for e in v.field_states {
 item:=e
 if !write_Ros2Kuka_driver_interfacesMsgFRIState(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIStateArray.
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
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Kuka_driver_interfacesMsgFRIStateArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgFRIStateArray,bool) {
 v:=init_Ros2Kuka_driver_interfacesMsgFRIStateArray()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_robot_names=make([]string,int(n),allocator)
 }
 for &e in v.field_robot_names {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_states=make([]Ros2Kuka_driver_interfacesMsgFRIState,int(n),allocator)
 }
 for &e in v.field_states {
 {
 b,ok:=read_Ros2Kuka_driver_interfacesMsgFRIState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete kuka_driver_interfaces/msg/FRIStateArray value.
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
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Kuka_driver_interfacesMsgFRIStateArray :: proc(v: ^Ros2Kuka_driver_interfacesMsgFRIStateArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1736}
 if !write_Ros2Kuka_driver_interfacesMsgFRIStateArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1736}
 if !write_Ros2Kuka_driver_interfacesMsgFRIStateArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuka_driver_interfaces/msg/FRIStateArray value.
// @details Require the complete 8..1736-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Kuka_driver_interfacesMsgFRIStateArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgFRIStateArray,u32) {
 if len(bytes)<8 || len(bytes)>1736 { return Ros2Kuka_driver_interfacesMsgFRIStateArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Kuka_driver_interfacesMsgFRIStateArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Kuka_driver_interfacesMsgFRIStateArray{},reader.code }
 return value,0
}
// @brief Complete ROS 2 kuka_driver_interfaces/msg/FriConfiguration value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFriConfiguration :: struct {
 // @brief kuka_driver_interfaces/msg/FriConfiguration.receive_multiplier: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
 field_receive_multiplier: i32,
 // @brief kuka_driver_interfaces/msg/FriConfiguration.send_period_ms: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
 field_send_period_ms: i32,
}
// @brief Maximum canonical extent of kuka_driver_interfaces/msg/FriConfiguration in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFriConfiguration_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of kuka_driver_interfaces/msg/FriConfiguration.
// @details Exact identity UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFriConfiguration_Codec_Identity :: "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e"
// @brief Original ROS type name for kuka_driver_interfaces/msg/FriConfiguration.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFriConfiguration_Native_Type :: "kuka_driver_interfaces/msg/FriConfiguration"
// @brief Selected original native identity for kuka_driver_interfaces/msg/FriConfiguration.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgFriConfiguration_Native_Identity :: ""
// @brief Construct the declared defaults of kuka_driver_interfaces/msg/FriConfiguration.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Kuka_driver_interfacesMsgFriConfiguration :: proc() -> Ros2Kuka_driver_interfacesMsgFriConfiguration {
 v: Ros2Kuka_driver_interfacesMsgFriConfiguration
 v.field_receive_multiplier = 0
 v.field_send_period_ms = 0
 return v
}
// @brief Append every canonical field of kuka_driver_interfaces/msg/FriConfiguration.
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
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Kuka_driver_interfacesMsgFriConfiguration :: proc(v: ^Ros2Kuka_driver_interfacesMsgFriConfiguration, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_receive_multiplier),4) { return false }
 if !put_integer(w,u64(v.field_send_period_ms),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FriConfiguration.
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
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Kuka_driver_interfacesMsgFriConfiguration :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgFriConfiguration,bool) {
 v:=init_Ros2Kuka_driver_interfacesMsgFriConfiguration()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_receive_multiplier=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_send_period_ms=i32(b)
 }
 return v,true
}
// @brief Encode one complete kuka_driver_interfaces/msg/FriConfiguration value.
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
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Kuka_driver_interfacesMsgFriConfiguration :: proc(v: ^Ros2Kuka_driver_interfacesMsgFriConfiguration, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Kuka_driver_interfacesMsgFriConfiguration(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Kuka_driver_interfacesMsgFriConfiguration(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuka_driver_interfaces/msg/FriConfiguration value.
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
// @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Kuka_driver_interfacesMsgFriConfiguration :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgFriConfiguration,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Kuka_driver_interfacesMsgFriConfiguration{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Kuka_driver_interfacesMsgFriConfiguration(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Kuka_driver_interfacesMsgFriConfiguration{},reader.code }
 return value,0
}
// @brief Complete ROS 2 kuka_driver_interfaces/msg/HardwareEvent value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
// is identified by UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgHardwareEvent :: struct {
 // @brief kuka_driver_interfaces/msg/HardwareEvent.robot_name: string; each string is 0..512 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
 field_robot_name: string,
 // @brief kuka_driver_interfaces/msg/HardwareEvent.event: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
 field_event: u8,
}
// @brief Maximum canonical extent of kuka_driver_interfaces/msg/HardwareEvent in bytes.
// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgHardwareEvent_Maximum_Wire_Bytes :: 517
// @brief Canonical codec identity of kuka_driver_interfaces/msg/HardwareEvent.
// @details Exact identity UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgHardwareEvent_Codec_Identity :: "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68"
// @brief Original ROS type name for kuka_driver_interfaces/msg/HardwareEvent.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgHardwareEvent_Native_Type :: "kuka_driver_interfaces/msg/HardwareEvent"
// @brief Selected original native identity for kuka_driver_interfaces/msg/HardwareEvent.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgHardwareEvent_Native_Identity :: ""
// @brief Construct the declared defaults of kuka_driver_interfaces/msg/HardwareEvent.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Kuka_driver_interfacesMsgHardwareEvent :: proc() -> Ros2Kuka_driver_interfacesMsgHardwareEvent {
 v: Ros2Kuka_driver_interfacesMsgHardwareEvent
 v.field_robot_name = ""
 v.field_event = 0
 return v
}
// @brief Append every canonical field of kuka_driver_interfaces/msg/HardwareEvent.
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
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Kuka_driver_interfacesMsgHardwareEvent :: proc(v: ^Ros2Kuka_driver_interfacesMsgHardwareEvent, w: ^Writer) -> bool {
 if !put_string(w,v.field_robot_name,512) { return false }
 if !put_integer(w,u64(v.field_event),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/HardwareEvent.
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
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Kuka_driver_interfacesMsgHardwareEvent :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgHardwareEvent,bool) {
 v:=init_Ros2Kuka_driver_interfacesMsgHardwareEvent()
 {
 b,ok:=get_string(r,512); if !ok { return v,false }
 v.field_robot_name=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_event=u8(b)
 }
 return v,true
}
// @brief Encode one complete kuka_driver_interfaces/msg/HardwareEvent value.
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
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Kuka_driver_interfacesMsgHardwareEvent :: proc(v: ^Ros2Kuka_driver_interfacesMsgHardwareEvent, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=517}
 if !write_Ros2Kuka_driver_interfacesMsgHardwareEvent(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=517}
 if !write_Ros2Kuka_driver_interfacesMsgHardwareEvent(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuka_driver_interfaces/msg/HardwareEvent value.
// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Kuka_driver_interfacesMsgHardwareEvent :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgHardwareEvent,u32) {
 if len(bytes)<5 || len(bytes)>517 { return Ros2Kuka_driver_interfacesMsgHardwareEvent{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Kuka_driver_interfacesMsgHardwareEvent(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Kuka_driver_interfacesMsgHardwareEvent{},reader.code }
 return value,0
}
// @brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatus value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and is
// identified by UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus :: struct {
 // @brief kuka_driver_interfaces/msg/KssStatus.control_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_control_mode: u8,
 // @brief kuka_driver_interfaces/msg/KssStatus.cycle_time: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_cycle_time: u8,
 // @brief kuka_driver_interfaces/msg/KssStatus.drives_powered: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_drives_powered: bool,
 // @brief kuka_driver_interfaces/msg/KssStatus.emergency_stop: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_emergency_stop: bool,
 // @brief kuka_driver_interfaces/msg/KssStatus.guard_stop: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_guard_stop: bool,
 // @brief kuka_driver_interfaces/msg/KssStatus.in_motion: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_in_motion: bool,
 // @brief kuka_driver_interfaces/msg/KssStatus.motion_possible: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_motion_possible: bool,
 // @brief kuka_driver_interfaces/msg/KssStatus.operation_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_operation_mode: u8,
 // @brief kuka_driver_interfaces/msg/KssStatus.robot_stopped: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
 field_robot_stopped: bool,
}
// @brief Maximum canonical extent of kuka_driver_interfaces/msg/KssStatus in bytes.
// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_Maximum_Wire_Bytes :: 9
// @brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatus.
// @details Exact identity UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_Codec_Identity :: "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82"
// @brief Original ROS type name for kuka_driver_interfaces/msg/KssStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_Native_Type :: "kuka_driver_interfaces/msg/KssStatus"
// @brief Selected original native identity for kuka_driver_interfaces/msg/KssStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_Native_Identity :: ""
// @brief kuka_driver_interfaces/msg/KssStatus.UNSPECIFIED: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_UNSPECIFIED :: u8(0)
// @brief kuka_driver_interfaces/msg/KssStatus.JOINT_POSITION_CONTROL: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_JOINT_POSITION_CONTROL :: u8(1)
// @brief kuka_driver_interfaces/msg/KssStatus.CARTESIAN_POSITION_CONTROL: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_CARTESIAN_POSITION_CONTROL :: u8(5)
// @brief kuka_driver_interfaces/msg/KssStatus.RSI_4MS: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_RSI_4MS :: u8(1)
// @brief kuka_driver_interfaces/msg/KssStatus.RSI_12MS: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_RSI_12MS :: u8(2)
// @brief kuka_driver_interfaces/msg/KssStatus.T1: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_T1 :: u8(1)
// @brief kuka_driver_interfaces/msg/KssStatus.T2: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_T2 :: u8(2)
// @brief kuka_driver_interfaces/msg/KssStatus.AUT: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_AUT :: u8(3)
// @brief kuka_driver_interfaces/msg/KssStatus.EXT: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatus_EXT :: u8(4)
// @brief Construct the declared defaults of kuka_driver_interfaces/msg/KssStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Kuka_driver_interfacesMsgKssStatus :: proc() -> Ros2Kuka_driver_interfacesMsgKssStatus {
 v: Ros2Kuka_driver_interfacesMsgKssStatus
 v.field_control_mode = 0
 v.field_cycle_time = 0
 v.field_drives_powered = false
 v.field_emergency_stop = false
 v.field_guard_stop = false
 v.field_in_motion = false
 v.field_motion_possible = false
 v.field_operation_mode = 0
 v.field_robot_stopped = false
 return v
}
// @brief Append every canonical field of kuka_driver_interfaces/msg/KssStatus.
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
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Kuka_driver_interfacesMsgKssStatus :: proc(v: ^Ros2Kuka_driver_interfacesMsgKssStatus, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_control_mode),1) { return false }
 if !put_integer(w,u64(v.field_cycle_time),1) { return false }
 if !put_bool(w,v.field_drives_powered) { return false }
 if !put_bool(w,v.field_emergency_stop) { return false }
 if !put_bool(w,v.field_guard_stop) { return false }
 if !put_bool(w,v.field_in_motion) { return false }
 if !put_bool(w,v.field_motion_possible) { return false }
 if !put_integer(w,u64(v.field_operation_mode),1) { return false }
 if !put_bool(w,v.field_robot_stopped) { return false }
 return true
}
// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatus.
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
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Kuka_driver_interfacesMsgKssStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgKssStatus,bool) {
 v:=init_Ros2Kuka_driver_interfacesMsgKssStatus()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_control_mode=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_cycle_time=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_drives_powered=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_emergency_stop=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_guard_stop=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_in_motion=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_motion_possible=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_operation_mode=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_robot_stopped=bool(b)
 }
 return v,true
}
// @brief Encode one complete kuka_driver_interfaces/msg/KssStatus value.
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
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Kuka_driver_interfacesMsgKssStatus :: proc(v: ^Ros2Kuka_driver_interfacesMsgKssStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9}
 if !write_Ros2Kuka_driver_interfacesMsgKssStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9}
 if !write_Ros2Kuka_driver_interfacesMsgKssStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatus value.
// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Kuka_driver_interfacesMsgKssStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgKssStatus,u32) {
 if len(bytes)<9 || len(bytes)>9 { return Ros2Kuka_driver_interfacesMsgKssStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Kuka_driver_interfacesMsgKssStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Kuka_driver_interfacesMsgKssStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatusArray value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..1240 bytes and
// is identified by UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatusArray :: struct {
 // @brief kuka_driver_interfaces/msg/KssStatusArray.robot_names: string; 0..16 elements; each string is 0..64 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
 field_robot_names: []string,
 // @brief kuka_driver_interfaces/msg/KssStatusArray.statuses: kuka_driver_interfaces/msg/KssStatus; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
 field_statuses: []Ros2Kuka_driver_interfacesMsgKssStatus,
}
// @brief Maximum canonical extent of kuka_driver_interfaces/msg/KssStatusArray in bytes.
// @details The inclusive bound is 1240 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatusArray_Maximum_Wire_Bytes :: 1240
// @brief Canonical codec identity of kuka_driver_interfaces/msg/KssStatusArray.
// @details Exact identity UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatusArray_Codec_Identity :: "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd"
// @brief Original ROS type name for kuka_driver_interfaces/msg/KssStatusArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatusArray_Native_Type :: "kuka_driver_interfaces/msg/KssStatusArray"
// @brief Selected original native identity for kuka_driver_interfaces/msg/KssStatusArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Kuka_driver_interfacesMsgKssStatusArray_Native_Identity :: ""
// @brief Construct the declared defaults of kuka_driver_interfaces/msg/KssStatusArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Kuka_driver_interfacesMsgKssStatusArray :: proc() -> Ros2Kuka_driver_interfacesMsgKssStatusArray {
 v: Ros2Kuka_driver_interfacesMsgKssStatusArray
 v.field_robot_names = nil
 v.field_statuses = nil
 return v
}
// @brief Append every canonical field of kuka_driver_interfaces/msg/KssStatusArray.
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
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Kuka_driver_interfacesMsgKssStatusArray :: proc(v: ^Ros2Kuka_driver_interfacesMsgKssStatusArray, w: ^Writer) -> bool {
 if len(v.field_robot_names)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_robot_names)),4) { return false }
 for e in v.field_robot_names {
 if !put_string(w,e,64) { return false }
 }
 if len(v.field_statuses)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_statuses)),4) { return false }
 for e in v.field_statuses {
 item:=e
 if !write_Ros2Kuka_driver_interfacesMsgKssStatus(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatusArray.
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
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Kuka_driver_interfacesMsgKssStatusArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgKssStatusArray,bool) {
 v:=init_Ros2Kuka_driver_interfacesMsgKssStatusArray()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_robot_names=make([]string,int(n),allocator)
 }
 for &e in v.field_robot_names {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_statuses=make([]Ros2Kuka_driver_interfacesMsgKssStatus,int(n),allocator)
 }
 for &e in v.field_statuses {
 {
 b,ok:=read_Ros2Kuka_driver_interfacesMsgKssStatus(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete kuka_driver_interfaces/msg/KssStatusArray value.
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
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Kuka_driver_interfacesMsgKssStatusArray :: proc(v: ^Ros2Kuka_driver_interfacesMsgKssStatusArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1240}
 if !write_Ros2Kuka_driver_interfacesMsgKssStatusArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1240}
 if !write_Ros2Kuka_driver_interfacesMsgKssStatusArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatusArray value.
// @details Require the complete 8..1240-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Kuka_driver_interfacesMsgKssStatusArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Kuka_driver_interfacesMsgKssStatusArray,u32) {
 if len(bytes)<8 || len(bytes)>1240 { return Ros2Kuka_driver_interfacesMsgKssStatusArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Kuka_driver_interfacesMsgKssStatusArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Kuka_driver_interfacesMsgKssStatusArray{},reader.code }
 return value,0
}
// @brief Complete ROS 2 lifecycle_msgs/msg/State value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
// is identified by UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState :: struct {
 // @brief lifecycle_msgs/msg/State.id: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
 field_id: u8,
 // @brief lifecycle_msgs/msg/State.label: string; each string is 0..512 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
 field_label: string,
}
// @brief Maximum canonical extent of lifecycle_msgs/msg/State in bytes.
// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_Maximum_Wire_Bytes :: 517
// @brief Canonical codec identity of lifecycle_msgs/msg/State.
// @details Exact identity UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_Codec_Identity :: "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94"
// @brief Original ROS type name for lifecycle_msgs/msg/State.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_Native_Type :: "lifecycle_msgs/msg/State"
// @brief Selected original native identity for lifecycle_msgs/msg/State.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_Native_Identity :: ""
// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNKNOWN :: u8(0)
// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_UNCONFIGURED: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNCONFIGURED :: u8(1)
// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_INACTIVE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_INACTIVE :: u8(2)
// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_ACTIVE: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_ACTIVE :: u8(3)
// @brief lifecycle_msgs/msg/State.PRIMARY_STATE_FINALIZED: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_FINALIZED :: u8(4)
// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_CONFIGURING: original uint8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CONFIGURING :: u8(10)
// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_CLEANINGUP: original uint8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CLEANINGUP :: u8(11)
// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_SHUTTINGDOWN: original uint8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_SHUTTINGDOWN :: u8(12)
// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_ACTIVATING: original uint8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ACTIVATING :: u8(13)
// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_DEACTIVATING: original uint8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_DEACTIVATING :: u8(14)
// @brief lifecycle_msgs/msg/State.TRANSITION_STATE_ERRORPROCESSING: original uint8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ERRORPROCESSING :: u8(15)
// @brief Construct the declared defaults of lifecycle_msgs/msg/State.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Lifecycle_msgsMsgState :: proc() -> Ros2Lifecycle_msgsMsgState {
 v: Ros2Lifecycle_msgsMsgState
 v.field_id = 0
 v.field_label = ""
 return v
}
// @brief Append every canonical field of lifecycle_msgs/msg/State.
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
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Lifecycle_msgsMsgState :: proc(v: ^Ros2Lifecycle_msgsMsgState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_id),1) { return false }
 if !put_string(w,v.field_label,512) { return false }
 return true
}
// @brief Read the ordered canonical fields of lifecycle_msgs/msg/State.
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
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Lifecycle_msgsMsgState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsMsgState,bool) {
 v:=init_Ros2Lifecycle_msgsMsgState()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_id=u8(b)
 }
 {
 b,ok:=get_string(r,512); if !ok { return v,false }
 v.field_label=b
 }
 return v,true
}
// @brief Encode one complete lifecycle_msgs/msg/State value.
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
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Lifecycle_msgsMsgState :: proc(v: ^Ros2Lifecycle_msgsMsgState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=517}
 if !write_Ros2Lifecycle_msgsMsgState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=517}
 if !write_Ros2Lifecycle_msgsMsgState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete lifecycle_msgs/msg/State value.
// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Lifecycle_msgsMsgState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Lifecycle_msgsMsgState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsMsgState,u32) {
 if len(bytes)<5 || len(bytes)>517 { return Ros2Lifecycle_msgsMsgState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Lifecycle_msgsMsgState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Lifecycle_msgsMsgState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 lifecycle_msgs/msg/Transition value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
// is identified by UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition :: struct {
 // @brief lifecycle_msgs/msg/Transition.id: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
 field_id: u8,
 // @brief lifecycle_msgs/msg/Transition.label: string; each string is 0..512 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
 field_label: string,
}
// @brief Maximum canonical extent of lifecycle_msgs/msg/Transition in bytes.
// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_Maximum_Wire_Bytes :: 517
// @brief Canonical codec identity of lifecycle_msgs/msg/Transition.
// @details Exact identity UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_Codec_Identity :: "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb"
// @brief Original ROS type name for lifecycle_msgs/msg/Transition.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_Native_Type :: "lifecycle_msgs/msg/Transition"
// @brief Selected original native identity for lifecycle_msgs/msg/Transition.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_Native_Identity :: ""
// @brief lifecycle_msgs/msg/Transition.TRANSITION_CREATE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_CREATE :: u8(0)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_CONFIGURE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_CONFIGURE :: u8(1)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_CLEANUP: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_CLEANUP :: u8(2)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVATE: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVATE :: u8(3)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_DEACTIVATE: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_DEACTIVATE :: u8(4)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_UNCONFIGURED_SHUTDOWN: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_UNCONFIGURED_SHUTDOWN :: u8(5)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_INACTIVE_SHUTDOWN: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_INACTIVE_SHUTDOWN :: u8(6)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ACTIVE_SHUTDOWN: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVE_SHUTDOWN :: u8(7)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_DESTROY: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_DESTROY :: u8(8)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_SUCCESS: original uint8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_SUCCESS :: u8(10)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_FAILURE: original uint8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_FAILURE :: u8(11)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_ERROR: original uint8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_ERROR :: u8(12)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_SUCCESS: original uint8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_SUCCESS :: u8(20)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_FAILURE: original uint8 constant.
// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_FAILURE :: u8(21)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_ERROR: original uint8 constant.
// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_ERROR :: u8(22)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_SUCCESS: original uint8 constant.
// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_SUCCESS :: u8(30)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_FAILURE: original uint8 constant.
// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_FAILURE :: u8(31)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_ERROR: original uint8 constant.
// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_ERROR :: u8(32)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_SUCCESS: original uint8 constant.
// @details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_SUCCESS :: u8(40)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_FAILURE: original uint8 constant.
// @details Exact admitted value 41. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_FAILURE :: u8(41)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_ERROR: original uint8 constant.
// @details Exact admitted value 42. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_ERROR :: u8(42)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_SUCCESS: original uint8 constant.
// @details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_SUCCESS :: u8(50)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_FAILURE: original uint8 constant.
// @details Exact admitted value 51. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_FAILURE :: u8(51)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_ERROR: original uint8 constant.
// @details Exact admitted value 52. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_ERROR :: u8(52)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_SUCCESS: original uint8 constant.
// @details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_SUCCESS :: u8(60)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_FAILURE: original uint8 constant.
// @details Exact admitted value 61. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_FAILURE :: u8(61)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_ERROR: original uint8 constant.
// @details Exact admitted value 62. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_ERROR :: u8(62)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_SUCCESS: original uint8 constant.
// @details Exact admitted value 97. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_SUCCESS :: u8(97)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_FAILURE: original uint8 constant.
// @details Exact admitted value 98. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_FAILURE :: u8(98)
// @brief lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_ERROR: original uint8 constant.
// @details Exact admitted value 99. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_ERROR :: u8(99)
// @brief Construct the declared defaults of lifecycle_msgs/msg/Transition.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Lifecycle_msgsMsgTransition :: proc() -> Ros2Lifecycle_msgsMsgTransition {
 v: Ros2Lifecycle_msgsMsgTransition
 v.field_id = 0
 v.field_label = ""
 return v
}
// @brief Append every canonical field of lifecycle_msgs/msg/Transition.
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
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Lifecycle_msgsMsgTransition :: proc(v: ^Ros2Lifecycle_msgsMsgTransition, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_id),1) { return false }
 if !put_string(w,v.field_label,512) { return false }
 return true
}
// @brief Read the ordered canonical fields of lifecycle_msgs/msg/Transition.
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
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Lifecycle_msgsMsgTransition :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsMsgTransition,bool) {
 v:=init_Ros2Lifecycle_msgsMsgTransition()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_id=u8(b)
 }
 {
 b,ok:=get_string(r,512); if !ok { return v,false }
 v.field_label=b
 }
 return v,true
}
// @brief Encode one complete lifecycle_msgs/msg/Transition value.
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
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Lifecycle_msgsMsgTransition :: proc(v: ^Ros2Lifecycle_msgsMsgTransition, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=517}
 if !write_Ros2Lifecycle_msgsMsgTransition(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=517}
 if !write_Ros2Lifecycle_msgsMsgTransition(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete lifecycle_msgs/msg/Transition value.
// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Lifecycle_msgsMsgTransition :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsMsgTransition,u32) {
 if len(bytes)<5 || len(bytes)>517 { return Ros2Lifecycle_msgsMsgTransition{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Lifecycle_msgsMsgTransition(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Lifecycle_msgsMsgTransition{},reader.code }
 return value,0
}
// @brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
// is identified by UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Request :: struct {
 // @brief lifecycle_msgs/srv/ChangeState_Request.transition: lifecycle_msgs/msg/Transition.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_transition: Ros2Lifecycle_msgsMsgTransition,
}
// @brief Maximum canonical extent of lifecycle_msgs/srv/ChangeState_Request in bytes.
// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Request_Maximum_Wire_Bytes :: 517
// @brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Request.
// @details Exact identity UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Request_Codec_Identity :: "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1"
// @brief Original ROS type name for lifecycle_msgs/srv/ChangeState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Request_Native_Type :: "lifecycle_msgs/srv/ChangeState_Request"
// @brief Selected original native identity for lifecycle_msgs/srv/ChangeState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of lifecycle_msgs/srv/ChangeState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Lifecycle_msgsSrvChangeState_Request :: proc() -> Ros2Lifecycle_msgsSrvChangeState_Request {
 v: Ros2Lifecycle_msgsSrvChangeState_Request
 v.field_transition = Ros2Lifecycle_msgsMsgTransition{}
 return v
}
// @brief Append every canonical field of lifecycle_msgs/srv/ChangeState_Request.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Lifecycle_msgsSrvChangeState_Request :: proc(v: ^Ros2Lifecycle_msgsSrvChangeState_Request, w: ^Writer) -> bool {
 if !write_Ros2Lifecycle_msgsMsgTransition(&v.field_transition,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Request.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Lifecycle_msgsSrvChangeState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvChangeState_Request,bool) {
 v:=init_Ros2Lifecycle_msgsSrvChangeState_Request()
 {
 b,ok:=read_Ros2Lifecycle_msgsMsgTransition(r,allocator); if !ok { return v,false }
 v.field_transition=b
 }
 return v,true
}
// @brief Encode one complete lifecycle_msgs/srv/ChangeState_Request value.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Lifecycle_msgsSrvChangeState_Request :: proc(v: ^Ros2Lifecycle_msgsSrvChangeState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=517}
 if !write_Ros2Lifecycle_msgsSrvChangeState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=517}
 if !write_Ros2Lifecycle_msgsSrvChangeState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Request value.
// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Lifecycle_msgsSrvChangeState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvChangeState_Request,u32) {
 if len(bytes)<5 || len(bytes)>517 { return Ros2Lifecycle_msgsSrvChangeState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Lifecycle_msgsSrvChangeState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Lifecycle_msgsSrvChangeState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Response :: struct {
 // @brief lifecycle_msgs/srv/ChangeState_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of lifecycle_msgs/srv/ChangeState_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of lifecycle_msgs/srv/ChangeState_Response.
// @details Exact identity UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Response_Codec_Identity :: "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032"
// @brief Original ROS type name for lifecycle_msgs/srv/ChangeState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Response_Native_Type :: "lifecycle_msgs/srv/ChangeState_Response"
// @brief Selected original native identity for lifecycle_msgs/srv/ChangeState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvChangeState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of lifecycle_msgs/srv/ChangeState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Lifecycle_msgsSrvChangeState_Response :: proc() -> Ros2Lifecycle_msgsSrvChangeState_Response {
 v: Ros2Lifecycle_msgsSrvChangeState_Response
 v.field_success = false
 return v
}
// @brief Append every canonical field of lifecycle_msgs/srv/ChangeState_Response.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Lifecycle_msgsSrvChangeState_Response :: proc(v: ^Ros2Lifecycle_msgsSrvChangeState_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Response.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Lifecycle_msgsSrvChangeState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvChangeState_Response,bool) {
 v:=init_Ros2Lifecycle_msgsSrvChangeState_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete lifecycle_msgs/srv/ChangeState_Response value.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Lifecycle_msgsSrvChangeState_Response :: proc(v: ^Ros2Lifecycle_msgsSrvChangeState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Lifecycle_msgsSrvChangeState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Lifecycle_msgsSrvChangeState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Response value.
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
// @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Lifecycle_msgsSrvChangeState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvChangeState_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Lifecycle_msgsSrvChangeState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Lifecycle_msgsSrvChangeState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Lifecycle_msgsSrvChangeState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 lifecycle_msgs/srv/GetState_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Request :: struct {
}
// @brief Maximum canonical extent of lifecycle_msgs/srv/GetState_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of lifecycle_msgs/srv/GetState_Request.
// @details Exact identity UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Request_Codec_Identity :: "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d"
// @brief Original ROS type name for lifecycle_msgs/srv/GetState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Request_Native_Type :: "lifecycle_msgs/srv/GetState_Request"
// @brief Selected original native identity for lifecycle_msgs/srv/GetState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of lifecycle_msgs/srv/GetState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Lifecycle_msgsSrvGetState_Request :: proc() -> Ros2Lifecycle_msgsSrvGetState_Request {
 v: Ros2Lifecycle_msgsSrvGetState_Request
 return v
}
// @brief Append every canonical field of lifecycle_msgs/srv/GetState_Request.
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
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Lifecycle_msgsSrvGetState_Request :: proc(v: ^Ros2Lifecycle_msgsSrvGetState_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Request.
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
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Lifecycle_msgsSrvGetState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvGetState_Request,bool) {
 v:=init_Ros2Lifecycle_msgsSrvGetState_Request()
 return v,true
}
// @brief Encode one complete lifecycle_msgs/srv/GetState_Request value.
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
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Lifecycle_msgsSrvGetState_Request :: proc(v: ^Ros2Lifecycle_msgsSrvGetState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Lifecycle_msgsSrvGetState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Lifecycle_msgsSrvGetState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete lifecycle_msgs/srv/GetState_Request value.
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
// @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Lifecycle_msgsSrvGetState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvGetState_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Lifecycle_msgsSrvGetState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Lifecycle_msgsSrvGetState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Lifecycle_msgsSrvGetState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 lifecycle_msgs/srv/GetState_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
// is identified by UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Response :: struct {
 // @brief lifecycle_msgs/srv/GetState_Response.current_state: lifecycle_msgs/msg/State.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_current_state: Ros2Lifecycle_msgsMsgState,
}
// @brief Maximum canonical extent of lifecycle_msgs/srv/GetState_Response in bytes.
// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Response_Maximum_Wire_Bytes :: 517
// @brief Canonical codec identity of lifecycle_msgs/srv/GetState_Response.
// @details Exact identity UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Response_Codec_Identity :: "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39"
// @brief Original ROS type name for lifecycle_msgs/srv/GetState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Response_Native_Type :: "lifecycle_msgs/srv/GetState_Response"
// @brief Selected original native identity for lifecycle_msgs/srv/GetState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Lifecycle_msgsSrvGetState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of lifecycle_msgs/srv/GetState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Lifecycle_msgsSrvGetState_Response :: proc() -> Ros2Lifecycle_msgsSrvGetState_Response {
 v: Ros2Lifecycle_msgsSrvGetState_Response
 v.field_current_state = Ros2Lifecycle_msgsMsgState{}
 return v
}
// @brief Append every canonical field of lifecycle_msgs/srv/GetState_Response.
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
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Lifecycle_msgsSrvGetState_Response :: proc(v: ^Ros2Lifecycle_msgsSrvGetState_Response, w: ^Writer) -> bool {
 if !write_Ros2Lifecycle_msgsMsgState(&v.field_current_state,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Response.
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
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Lifecycle_msgsSrvGetState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvGetState_Response,bool) {
 v:=init_Ros2Lifecycle_msgsSrvGetState_Response()
 {
 b,ok:=read_Ros2Lifecycle_msgsMsgState(r,allocator); if !ok { return v,false }
 v.field_current_state=b
 }
 return v,true
}
// @brief Encode one complete lifecycle_msgs/srv/GetState_Response value.
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
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Lifecycle_msgsSrvGetState_Response :: proc(v: ^Ros2Lifecycle_msgsSrvGetState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=517}
 if !write_Ros2Lifecycle_msgsSrvGetState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=517}
 if !write_Ros2Lifecycle_msgsSrvGetState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete lifecycle_msgs/srv/GetState_Response value.
// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Lifecycle_msgsSrvGetState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Lifecycle_msgsSrvGetState_Response,u32) {
 if len(bytes)<5 || len(bytes)>517 { return Ros2Lifecycle_msgsSrvGetState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Lifecycle_msgsSrvGetState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Lifecycle_msgsSrvGetState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..1196 bytes and
// is identified by UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884.
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
 // @brief sensor_msgs/msg/JointState.name: string; 0..12 elements; each string is 0..64 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_name: []string,
 // @brief sensor_msgs/msg/JointState.position: float64; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief sensor_msgs/msg/JointState.velocity: float64; 0..12 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief sensor_msgs/msg/JointState.effort: float64; 0..12 elements.
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
// @details The inclusive bound is 1196 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Maximum_Wire_Bytes :: 1196
// @brief Canonical codec identity of sensor_msgs/msg/JointState.
// @details Exact identity UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Codec_Identity :: "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
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
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { w.code=22; return false }
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_name)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,64) { return false }
 }
 if len(v.field_position)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>12 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>12 { w.code=22; return false }
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
 if n>12 { r.code=22; return v,false }
 v.field_name=make([]string,int(n),allocator)
 }
 for &e in v.field_name {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>12 { r.code=22; return v,false }
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
 if n>12 { r.code=22; return v,false }
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
 if n>12 { r.code=22; return v,false }
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Sensor_msgsMsgJointState :: proc(v: ^Ros2Sensor_msgsMsgJointState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1196}
 if !write_Ros2Sensor_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1196}
 if !write_Ros2Sensor_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
// @details Require the complete 28..1196-byte canonical representation. Reject truncation, invalid fields and trailing
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
 if len(bytes)<28 || len(bytes)>1196 { return Ros2Sensor_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_srvs/srv/Trigger_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Request :: struct {
}
// @brief Maximum canonical extent of std_srvs/srv/Trigger_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of std_srvs/srv/Trigger_Request.
// @details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Request_Codec_Identity :: "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
// @brief Original ROS type name for std_srvs/srv/Trigger_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Request_Native_Type :: "std_srvs/srv/Trigger_Request"
// @brief Selected original native identity for std_srvs/srv/Trigger_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Request_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/srv/Trigger_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_srvsSrvTrigger_Request :: proc(v: ^Ros2Std_srvsSrvTrigger_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Request.
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
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
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
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
// decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_srvsSrvTrigger_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Std_srvsSrvTrigger_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_srvsSrvTrigger_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_srvsSrvTrigger_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 std_srvs/srv/Trigger_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..517 bytes and
// is identified by UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Response :: struct {
 // @brief std_srvs/srv/Trigger_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief std_srvs/srv/Trigger_Response.message: string; each string is 0..512 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of std_srvs/srv/Trigger_Response in bytes.
// @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Response_Maximum_Wire_Bytes :: 517
// @brief Canonical codec identity of std_srvs/srv/Trigger_Response.
// @details Exact identity UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Response_Codec_Identity :: "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
// @brief Original ROS type name for std_srvs/srv/Trigger_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Response_Native_Type :: "std_srvs/srv/Trigger_Response"
// @brief Selected original native identity for std_srvs/srv/Trigger_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Std_srvsSrvTrigger_Response_Native_Identity :: ""
// @brief Construct the declared defaults of std_srvs/srv/Trigger_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Std_srvsSrvTrigger_Response :: proc(v: ^Ros2Std_srvsSrvTrigger_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,512) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Response.
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
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Std_srvsSrvTrigger_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Response,bool) {
 v:=init_Ros2Std_srvsSrvTrigger_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,512); if !ok { return v,false }
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Std_srvsSrvTrigger_Response :: proc(v: ^Ros2Std_srvsSrvTrigger_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=517}
 if !write_Ros2Std_srvsSrvTrigger_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=517}
 if !write_Ros2Std_srvsSrvTrigger_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_srvs/srv/Trigger_Response value.
// @details Require the complete 5..517-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Std_srvsSrvTrigger_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Std_srvsSrvTrigger_Response,u32) {
 if len(bytes)<5 || len(bytes)>517 { return Ros2Std_srvsSrvTrigger_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Std_srvsSrvTrigger_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Std_srvsSrvTrigger_Response{},reader.code }
 return value,0
}
