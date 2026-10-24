// @file records.odin
// @brief Full agibot odin codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_0_0_rl values in odin. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
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
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime :: struct {
 // @brief builtin_interfaces/msg/Time.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
 field_sec: i32,
 // @brief builtin_interfaces/msg/Time.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
Ros2Builtin_interfacesMsgTime_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of builtin_interfaces/msg/Time.
// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
// order, shape and bounds. It does not replace the native type identity.
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
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous
// return; no ownership is transferred to Native.
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
// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
// failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Builtin_interfacesMsgTime :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Builtin_interfacesMsgTime{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Builtin_interfacesMsgTime(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Builtin_interfacesMsgTime{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/RequestHeader value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgRequestHeader :: struct {
 // @brief aimdk_msgs/msg/RequestHeader.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/RequestHeader in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgRequestHeader_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/msg/RequestHeader.
// @details Exact identity UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgRequestHeader_Codec_Identity :: "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000"
// @brief Original ROS type name for aimdk_msgs/msg/RequestHeader.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgRequestHeader_Native_Type :: "aimdk_msgs/msg/RequestHeader"
// @brief Selected original native identity for aimdk_msgs/msg/RequestHeader.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgRequestHeader_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/RequestHeader.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgRequestHeader :: proc() -> Ros2Aimdk_msgsMsgRequestHeader {
 v: Ros2Aimdk_msgsMsgRequestHeader
 v.field_stamp = Ros2Builtin_interfacesMsgTime{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/RequestHeader.
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
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgRequestHeader :: proc(v: ^Ros2Aimdk_msgsMsgRequestHeader, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_stamp,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/RequestHeader.
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
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgRequestHeader :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgRequestHeader,bool) {
 v:=init_Ros2Aimdk_msgsMsgRequestHeader()
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_stamp=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/RequestHeader value.
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
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgRequestHeader :: proc(v: ^Ros2Aimdk_msgsMsgRequestHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsMsgRequestHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsMsgRequestHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/RequestHeader value.
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
// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgRequestHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgRequestHeader,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsMsgRequestHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgRequestHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgRequestHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/CommonRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonRequest :: struct {
 // @brief aimdk_msgs/msg/CommonRequest.header: aimdk_msgs/msg/RequestHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgRequestHeader,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/CommonRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/msg/CommonRequest.
// @details Exact identity UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonRequest_Codec_Identity :: "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7"
// @brief Original ROS type name for aimdk_msgs/msg/CommonRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonRequest_Native_Type :: "aimdk_msgs/msg/CommonRequest"
// @brief Selected original native identity for aimdk_msgs/msg/CommonRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonRequest_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/CommonRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgCommonRequest :: proc() -> Ros2Aimdk_msgsMsgCommonRequest {
 v: Ros2Aimdk_msgsMsgCommonRequest
 v.field_header = Ros2Aimdk_msgsMsgRequestHeader{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/CommonRequest.
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
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgCommonRequest :: proc(v: ^Ros2Aimdk_msgsMsgCommonRequest, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgRequestHeader(&v.field_header,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonRequest.
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
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgCommonRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonRequest,bool) {
 v:=init_Ros2Aimdk_msgsMsgCommonRequest()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgRequestHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/CommonRequest value.
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
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgCommonRequest :: proc(v: ^Ros2Aimdk_msgsMsgCommonRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsMsgCommonRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsMsgCommonRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/CommonRequest value.
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
// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgCommonRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsMsgCommonRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgCommonRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ResponseHeader value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
// and is identified by UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgResponseHeader :: struct {
 // @brief aimdk_msgs/msg/ResponseHeader.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
 // @brief aimdk_msgs/msg/ResponseHeader.code: int64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
 field_code: i64,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ResponseHeader in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgResponseHeader_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of aimdk_msgs/msg/ResponseHeader.
// @details Exact identity UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgResponseHeader_Codec_Identity :: "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90"
// @brief Original ROS type name for aimdk_msgs/msg/ResponseHeader.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgResponseHeader_Native_Type :: "aimdk_msgs/msg/ResponseHeader"
// @brief Selected original native identity for aimdk_msgs/msg/ResponseHeader.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgResponseHeader_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ResponseHeader.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgResponseHeader :: proc() -> Ros2Aimdk_msgsMsgResponseHeader {
 v: Ros2Aimdk_msgsMsgResponseHeader
 v.field_stamp = Ros2Builtin_interfacesMsgTime{}
 v.field_code = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ResponseHeader.
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
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgResponseHeader :: proc(v: ^Ros2Aimdk_msgsMsgResponseHeader, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_stamp,w) { return false }
 if !put_integer(w,u64(v.field_code),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ResponseHeader.
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
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgResponseHeader :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgResponseHeader,bool) {
 v:=init_Ros2Aimdk_msgsMsgResponseHeader()
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_stamp=b
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_code=i64(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ResponseHeader value.
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
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgResponseHeader :: proc(v: ^Ros2Aimdk_msgsMsgResponseHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Aimdk_msgsMsgResponseHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Aimdk_msgsMsgResponseHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ResponseHeader value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgResponseHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgResponseHeader,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Aimdk_msgsMsgResponseHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgResponseHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgResponseHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/CommonState value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState :: struct {
 // @brief aimdk_msgs/msg/CommonState.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/CommonState in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of aimdk_msgs/msg/CommonState.
// @details Exact identity UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_Codec_Identity :: "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e"
// @brief Original ROS type name for aimdk_msgs/msg/CommonState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_Native_Type :: "aimdk_msgs/msg/CommonState"
// @brief Selected original native identity for aimdk_msgs/msg/CommonState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_Native_Identity :: ""
// @brief aimdk_msgs/msg/CommonState.UNKNOWN: original int32 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_UNKNOWN :: i32(0)
// @brief aimdk_msgs/msg/CommonState.SUCCESS: original int32 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_SUCCESS :: i32(1)
// @brief aimdk_msgs/msg/CommonState.FAILURE: original int32 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_FAILURE :: i32(2)
// @brief aimdk_msgs/msg/CommonState.ABORTED: original int32 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_ABORTED :: i32(3)
// @brief aimdk_msgs/msg/CommonState.TIMEOUT: original int32 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_TIMEOUT :: i32(4)
// @brief aimdk_msgs/msg/CommonState.INVALID: original int32 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_INVALID :: i32(5)
// @brief aimdk_msgs/msg/CommonState.IN_MANUAL: original int32 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_IN_MANUAL :: i32(6)
// @brief aimdk_msgs/msg/CommonState.NOT_READY: original int32 constant.
// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_NOT_READY :: i32(100)
// @brief aimdk_msgs/msg/CommonState.PENDING: original int32 constant.
// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_PENDING :: i32(200)
// @brief aimdk_msgs/msg/CommonState.CREATED: original int32 constant.
// @details Exact admitted value 300. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_CREATED :: i32(300)
// @brief aimdk_msgs/msg/CommonState.RUNNING: original int32 constant.
// @details Exact admitted value 400. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonState_RUNNING :: i32(400)
// @brief Construct the declared defaults of aimdk_msgs/msg/CommonState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgCommonState :: proc() -> Ros2Aimdk_msgsMsgCommonState {
 v: Ros2Aimdk_msgsMsgCommonState
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/CommonState.
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
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgCommonState :: proc(v: ^Ros2Aimdk_msgsMsgCommonState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonState.
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
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgCommonState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonState,bool) {
 v:=init_Ros2Aimdk_msgsMsgCommonState()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/CommonState value.
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
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgCommonState :: proc(v: ^Ros2Aimdk_msgsMsgCommonState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Aimdk_msgsMsgCommonState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Aimdk_msgsMsgCommonState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/CommonState value.
// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgCommonState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonState,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Aimdk_msgsMsgCommonState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgCommonState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgCommonState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/CommonResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
// and is identified by UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonResponse :: struct {
 // @brief aimdk_msgs/msg/CommonResponse.header: aimdk_msgs/msg/ResponseHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader,
 // @brief aimdk_msgs/msg/CommonResponse.status: aimdk_msgs/msg/CommonState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
 field_status: Ros2Aimdk_msgsMsgCommonState,
 // @brief aimdk_msgs/msg/CommonResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/CommonResponse in bytes.
// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonResponse_Maximum_Wire_Bytes :: 152
// @brief Canonical codec identity of aimdk_msgs/msg/CommonResponse.
// @details Exact identity UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonResponse_Codec_Identity :: "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6"
// @brief Original ROS type name for aimdk_msgs/msg/CommonResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonResponse_Native_Type :: "aimdk_msgs/msg/CommonResponse"
// @brief Selected original native identity for aimdk_msgs/msg/CommonResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonResponse_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/CommonResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgCommonResponse :: proc() -> Ros2Aimdk_msgsMsgCommonResponse {
 v: Ros2Aimdk_msgsMsgCommonResponse
 v.field_header = Ros2Aimdk_msgsMsgResponseHeader{}
 v.field_status = Ros2Aimdk_msgsMsgCommonState{}
 v.field_message = ""
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/CommonResponse.
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
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgCommonResponse :: proc(v: ^Ros2Aimdk_msgsMsgCommonResponse, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgResponseHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgCommonState(&v.field_status,w) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonResponse.
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
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgCommonResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonResponse,bool) {
 v:=init_Ros2Aimdk_msgsMsgCommonResponse()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgResponseHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonState(r,allocator); if !ok { return v,false }
 v.field_status=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/CommonResponse value.
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
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgCommonResponse :: proc(v: ^Ros2Aimdk_msgsMsgCommonResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=152}
 if !write_Ros2Aimdk_msgsMsgCommonResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=152}
 if !write_Ros2Aimdk_msgsMsgCommonResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/CommonResponse value.
// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgCommonResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonResponse,u32) {
 if len(bytes)<24 || len(bytes)>152 { return Ros2Aimdk_msgsMsgCommonResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgCommonResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/CommonTaskResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
// and is identified by UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonTaskResponse :: struct {
 // @brief aimdk_msgs/msg/CommonTaskResponse.header: aimdk_msgs/msg/ResponseHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader,
 // @brief aimdk_msgs/msg/CommonTaskResponse.task_id: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
 field_task_id: u64,
 // @brief aimdk_msgs/msg/CommonTaskResponse.state: aimdk_msgs/msg/CommonState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
 field_state: Ros2Aimdk_msgsMsgCommonState,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/CommonTaskResponse in bytes.
// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonTaskResponse_Maximum_Wire_Bytes :: 28
// @brief Canonical codec identity of aimdk_msgs/msg/CommonTaskResponse.
// @details Exact identity UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonTaskResponse_Codec_Identity :: "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2"
// @brief Original ROS type name for aimdk_msgs/msg/CommonTaskResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonTaskResponse_Native_Type :: "aimdk_msgs/msg/CommonTaskResponse"
// @brief Selected original native identity for aimdk_msgs/msg/CommonTaskResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgCommonTaskResponse_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/CommonTaskResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc() -> Ros2Aimdk_msgsMsgCommonTaskResponse {
 v: Ros2Aimdk_msgsMsgCommonTaskResponse
 v.field_header = Ros2Aimdk_msgsMsgResponseHeader{}
 v.field_task_id = 0
 v.field_state = Ros2Aimdk_msgsMsgCommonState{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/CommonTaskResponse.
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
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc(v: ^Ros2Aimdk_msgsMsgCommonTaskResponse, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgResponseHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_task_id),8) { return false }
 if !write_Ros2Aimdk_msgsMsgCommonState(&v.field_state,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonTaskResponse.
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
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonTaskResponse,bool) {
 v:=init_Ros2Aimdk_msgsMsgCommonTaskResponse()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgResponseHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_task_id=u64(b)
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonState(r,allocator); if !ok { return v,false }
 v.field_state=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/CommonTaskResponse value.
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
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc(v: ^Ros2Aimdk_msgsMsgCommonTaskResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=28}
 if !write_Ros2Aimdk_msgsMsgCommonTaskResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=28}
 if !write_Ros2Aimdk_msgsMsgCommonTaskResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/CommonTaskResponse value.
// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgCommonTaskResponse,u32) {
 if len(bytes)<28 || len(bytes)>28 { return Ros2Aimdk_msgsMsgCommonTaskResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgCommonTaskResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgCommonTaskResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/DomainErrorState value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState :: struct {
 // @brief aimdk_msgs/msg/DomainErrorState.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
 field_value: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/DomainErrorState in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of aimdk_msgs/msg/DomainErrorState.
// @details Exact identity UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_Codec_Identity :: "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231"
// @brief Original ROS type name for aimdk_msgs/msg/DomainErrorState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_Native_Type :: "aimdk_msgs/msg/DomainErrorState"
// @brief Selected original native identity for aimdk_msgs/msg/DomainErrorState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_Native_Identity :: ""
// @brief aimdk_msgs/msg/DomainErrorState.NONE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_NONE :: u8(0)
// @brief aimdk_msgs/msg/DomainErrorState.DAMPING: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_DAMPING :: u8(1)
// @brief aimdk_msgs/msg/DomainErrorState.POWERDOWN: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_POWERDOWN :: u8(2)
// @brief aimdk_msgs/msg/DomainErrorState.DISABLE: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_DISABLE :: u8(3)
// @brief aimdk_msgs/msg/DomainErrorState.DISCONNECT: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgDomainErrorState_DISCONNECT :: u8(4)
// @brief Construct the declared defaults of aimdk_msgs/msg/DomainErrorState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgDomainErrorState :: proc() -> Ros2Aimdk_msgsMsgDomainErrorState {
 v: Ros2Aimdk_msgsMsgDomainErrorState
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/DomainErrorState.
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
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgDomainErrorState :: proc(v: ^Ros2Aimdk_msgsMsgDomainErrorState, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/DomainErrorState.
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
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgDomainErrorState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgDomainErrorState,bool) {
 v:=init_Ros2Aimdk_msgsMsgDomainErrorState()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/DomainErrorState value.
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
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgDomainErrorState :: proc(v: ^Ros2Aimdk_msgsMsgDomainErrorState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Aimdk_msgsMsgDomainErrorState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Aimdk_msgsMsgDomainErrorState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/DomainErrorState value.
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
// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgDomainErrorState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgDomainErrorState,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Aimdk_msgsMsgDomainErrorState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgDomainErrorState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgDomainErrorState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/JointCommand value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
// and is identified by UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommand :: struct {
 // @brief aimdk_msgs/msg/JointCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/JointCommand.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief aimdk_msgs/msg/JointCommand.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief aimdk_msgs/msg/JointCommand.effort: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
 field_effort: f64,
 // @brief aimdk_msgs/msg/JointCommand.stiffness: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
 field_stiffness: f64,
 // @brief aimdk_msgs/msg/JointCommand.damping: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
 field_damping: f64,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/JointCommand in bytes.
// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommand_Maximum_Wire_Bytes :: 172
// @brief Canonical codec identity of aimdk_msgs/msg/JointCommand.
// @details Exact identity UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommand_Codec_Identity :: "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f"
// @brief Original ROS type name for aimdk_msgs/msg/JointCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommand_Native_Type :: "aimdk_msgs/msg/JointCommand"
// @brief Selected original native identity for aimdk_msgs/msg/JointCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommand_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/JointCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgJointCommand :: proc() -> Ros2Aimdk_msgsMsgJointCommand {
 v: Ros2Aimdk_msgsMsgJointCommand
 v.field_name = ""
 v.field_position = 0
 v.field_velocity = 0
 v.field_effort = 0
 v.field_stiffness = 0
 v.field_damping = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/JointCommand.
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
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgJointCommand :: proc(v: ^Ros2Aimdk_msgsMsgJointCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_effort) { return false }
 if !put_float64(w,v.field_stiffness) { return false }
 if !put_float64(w,v.field_damping) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointCommand.
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
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgJointCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointCommand,bool) {
 v:=init_Ros2Aimdk_msgsMsgJointCommand()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
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
 v.field_effort=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_stiffness=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_damping=f64(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/JointCommand value.
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
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgJointCommand :: proc(v: ^Ros2Aimdk_msgsMsgJointCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=172}
 if !write_Ros2Aimdk_msgsMsgJointCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=172}
 if !write_Ros2Aimdk_msgsMsgJointCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/JointCommand value.
// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgJointCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointCommand,u32) {
 if len(bytes)<44 || len(bytes)>172 { return Ros2Aimdk_msgsMsgJointCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgJointCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgJointCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/MessageHeader value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
// and is identified by UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMessageHeader :: struct {
 // @brief aimdk_msgs/msg/MessageHeader.stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime,
 // @brief aimdk_msgs/msg/MessageHeader.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
 field_frame_id: string,
 // @brief aimdk_msgs/msg/MessageHeader.sequence: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
 field_sequence: u32,
 // @brief aimdk_msgs/msg/MessageHeader.meas_stamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
 field_meas_stamp: Ros2Builtin_interfacesMsgTime,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/MessageHeader in bytes.
// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMessageHeader_Maximum_Wire_Bytes :: 152
// @brief Canonical codec identity of aimdk_msgs/msg/MessageHeader.
// @details Exact identity UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMessageHeader_Codec_Identity :: "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496"
// @brief Original ROS type name for aimdk_msgs/msg/MessageHeader.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMessageHeader_Native_Type :: "aimdk_msgs/msg/MessageHeader"
// @brief Selected original native identity for aimdk_msgs/msg/MessageHeader.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMessageHeader_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/MessageHeader.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMessageHeader :: proc() -> Ros2Aimdk_msgsMsgMessageHeader {
 v: Ros2Aimdk_msgsMsgMessageHeader
 v.field_stamp = Ros2Builtin_interfacesMsgTime{}
 v.field_frame_id = ""
 v.field_sequence = 0
 v.field_meas_stamp = Ros2Builtin_interfacesMsgTime{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/MessageHeader.
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
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMessageHeader :: proc(v: ^Ros2Aimdk_msgsMsgMessageHeader, w: ^Writer) -> bool {
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 if !put_integer(w,u64(v.field_sequence),4) { return false }
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_meas_stamp,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/MessageHeader.
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
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMessageHeader :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMessageHeader,bool) {
 v:=init_Ros2Aimdk_msgsMsgMessageHeader()
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_stamp=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_frame_id=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sequence=u32(b)
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_meas_stamp=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/MessageHeader value.
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
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMessageHeader :: proc(v: ^Ros2Aimdk_msgsMsgMessageHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=152}
 if !write_Ros2Aimdk_msgsMsgMessageHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=152}
 if !write_Ros2Aimdk_msgsMsgMessageHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/MessageHeader value.
// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMessageHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMessageHeader,u32) {
 if len(bytes)<24 || len(bytes)>152 { return Ros2Aimdk_msgsMsgMessageHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMessageHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/JointCommandArray value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..11164
// bytes and is identified by UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommandArray :: struct {
 // @brief aimdk_msgs/msg/JointCommandArray.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/JointCommandArray.joints: aimdk_msgs/msg/JointCommand; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_joints: []Ros2Aimdk_msgsMsgJointCommand,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/JointCommandArray in bytes.
// @details The inclusive bound is 11164 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommandArray_Maximum_Wire_Bytes :: 11164
// @brief Canonical codec identity of aimdk_msgs/msg/JointCommandArray.
// @details Exact identity UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommandArray_Codec_Identity :: "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6"
// @brief Original ROS type name for aimdk_msgs/msg/JointCommandArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommandArray_Native_Type :: "aimdk_msgs/msg/JointCommandArray"
// @brief Selected original native identity for aimdk_msgs/msg/JointCommandArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointCommandArray_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/JointCommandArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgJointCommandArray :: proc() -> Ros2Aimdk_msgsMsgJointCommandArray {
 v: Ros2Aimdk_msgsMsgJointCommandArray
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_joints = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/JointCommandArray.
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
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgJointCommandArray :: proc(v: ^Ros2Aimdk_msgsMsgJointCommandArray, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if len(v.field_joints)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joints)),4) { return false }
 for e in v.field_joints {
 item:=e
 if !write_Ros2Aimdk_msgsMsgJointCommand(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointCommandArray.
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
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgJointCommandArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointCommandArray,bool) {
 v:=init_Ros2Aimdk_msgsMsgJointCommandArray()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joints=make([]Ros2Aimdk_msgsMsgJointCommand,int(n),allocator)
 }
 for &e in v.field_joints {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgJointCommand(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/JointCommandArray value.
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
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgJointCommandArray :: proc(v: ^Ros2Aimdk_msgsMsgJointCommandArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=11164}
 if !write_Ros2Aimdk_msgsMsgJointCommandArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=11164}
 if !write_Ros2Aimdk_msgsMsgJointCommandArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/JointCommandArray value.
// @details Require the complete 28..11164-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgJointCommandArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointCommandArray,u32) {
 if len(bytes)<28 || len(bytes)>11164 { return Ros2Aimdk_msgsMsgJointCommandArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgJointCommandArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgJointCommandArray{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 30..158 bytes
// and is identified by UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState :: struct {
 // @brief aimdk_msgs/msg/JointState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/JointState.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief aimdk_msgs/msg/JointState.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief aimdk_msgs/msg/JointState.effort: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_effort: f64,
 // @brief aimdk_msgs/msg/JointState.error_code: uint16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_error_code: u16,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/JointState in bytes.
// @details The inclusive bound is 158 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState_Maximum_Wire_Bytes :: 158
// @brief Canonical codec identity of aimdk_msgs/msg/JointState.
// @details Exact identity UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState_Codec_Identity :: "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53"
// @brief Original ROS type name for aimdk_msgs/msg/JointState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState_Native_Type :: "aimdk_msgs/msg/JointState"
// @brief Selected original native identity for aimdk_msgs/msg/JointState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/JointState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgJointState :: proc() -> Ros2Aimdk_msgsMsgJointState {
 v: Ros2Aimdk_msgsMsgJointState
 v.field_name = ""
 v.field_position = 0
 v.field_velocity = 0
 v.field_effort = 0
 v.field_error_code = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/JointState.
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
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgJointState :: proc(v: ^Ros2Aimdk_msgsMsgJointState, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_effort) { return false }
 if !put_integer(w,u64(v.field_error_code),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointState.
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
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgJointState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointState,bool) {
 v:=init_Ros2Aimdk_msgsMsgJointState()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
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
 v.field_effort=f64(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_error_code=u16(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/JointState value.
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
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgJointState :: proc(v: ^Ros2Aimdk_msgsMsgJointState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=158}
 if !write_Ros2Aimdk_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=158}
 if !write_Ros2Aimdk_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/JointState value.
// @details Require the complete 30..158-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgJointState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointState,u32) {
 if len(bytes)<30 || len(bytes)>158 { return Ros2Aimdk_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/JointStateArray value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..10269
// bytes and is identified by UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray :: struct {
 // @brief aimdk_msgs/msg/JointStateArray.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/JointStateArray.state: aimdk_msgs/msg/DomainErrorState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_state: Ros2Aimdk_msgsMsgDomainErrorState,
 // @brief aimdk_msgs/msg/JointStateArray.joints: aimdk_msgs/msg/JointState; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_joints: []Ros2Aimdk_msgsMsgJointState,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/JointStateArray in bytes.
// @details The inclusive bound is 10269 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray_Maximum_Wire_Bytes :: 10269
// @brief Canonical codec identity of aimdk_msgs/msg/JointStateArray.
// @details Exact identity UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray_Codec_Identity :: "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e"
// @brief Original ROS type name for aimdk_msgs/msg/JointStateArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray_Native_Type :: "aimdk_msgs/msg/JointStateArray"
// @brief Selected original native identity for aimdk_msgs/msg/JointStateArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/JointStateArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgJointStateArray :: proc() -> Ros2Aimdk_msgsMsgJointStateArray {
 v: Ros2Aimdk_msgsMsgJointStateArray
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_state = Ros2Aimdk_msgsMsgDomainErrorState{}
 v.field_joints = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/JointStateArray.
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
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgJointStateArray :: proc(v: ^Ros2Aimdk_msgsMsgJointStateArray, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgDomainErrorState(&v.field_state,w) { return false }
 if len(v.field_joints)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joints)),4) { return false }
 for e in v.field_joints {
 item:=e
 if !write_Ros2Aimdk_msgsMsgJointState(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointStateArray.
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
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgJointStateArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointStateArray,bool) {
 v:=init_Ros2Aimdk_msgsMsgJointStateArray()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgDomainErrorState(r,allocator); if !ok { return v,false }
 v.field_state=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
 v.field_joints=make([]Ros2Aimdk_msgsMsgJointState,int(n),allocator)
 }
 for &e in v.field_joints {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgJointState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/JointStateArray value.
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
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgJointStateArray :: proc(v: ^Ros2Aimdk_msgsMsgJointStateArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10269}
 if !write_Ros2Aimdk_msgsMsgJointStateArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10269}
 if !write_Ros2Aimdk_msgsMsgJointStateArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/JointStateArray value.
// @details Require the complete 29..10269-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgJointStateArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgJointStateArray,u32) {
 if len(bytes)<29 || len(bytes)>10269 { return Ros2Aimdk_msgsMsgJointStateArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgJointStateArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgJointStateArray{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ModuleChannelInfo value.
// @details All 11 declared fields are retained in source order. The canonical representation occupies 58..586 bytes
// and is identified by UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleChannelInfo :: struct {
 // @brief aimdk_msgs/msg/ModuleChannelInfo.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.type: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_type: string,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.frequency: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_frequency: f64,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.min_time_diff: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_min_time_diff: f64,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.max_time_diff: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_max_time_diff: f64,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.std_dev: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_std_dev: f64,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.window_size: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_window_size: i32,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.timeout_threshold: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_timeout_threshold: f64,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.is_active: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_is_active: bool,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.is_timeout: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_is_timeout: bool,
 // @brief aimdk_msgs/msg/ModuleChannelInfo.backends: string; 0..4 elements; each string is 0..64 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
 field_backends: []string,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ModuleChannelInfo in bytes.
// @details The inclusive bound is 586 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleChannelInfo_Maximum_Wire_Bytes :: 586
// @brief Canonical codec identity of aimdk_msgs/msg/ModuleChannelInfo.
// @details Exact identity UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleChannelInfo_Codec_Identity :: "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696"
// @brief Original ROS type name for aimdk_msgs/msg/ModuleChannelInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleChannelInfo_Native_Type :: "aimdk_msgs/msg/ModuleChannelInfo"
// @brief Selected original native identity for aimdk_msgs/msg/ModuleChannelInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleChannelInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ModuleChannelInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc() -> Ros2Aimdk_msgsMsgModuleChannelInfo {
 v: Ros2Aimdk_msgsMsgModuleChannelInfo
 v.field_name = ""
 v.field_type = ""
 v.field_frequency = 0
 v.field_min_time_diff = 0
 v.field_max_time_diff = 0
 v.field_std_dev = 0
 v.field_window_size = 0
 v.field_timeout_threshold = 0
 v.field_is_active = false
 v.field_is_timeout = false
 v.field_backends = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ModuleChannelInfo.
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
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc(v: ^Ros2Aimdk_msgsMsgModuleChannelInfo, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_string(w,v.field_type,128) { return false }
 if !put_float64(w,v.field_frequency) { return false }
 if !put_float64(w,v.field_min_time_diff) { return false }
 if !put_float64(w,v.field_max_time_diff) { return false }
 if !put_float64(w,v.field_std_dev) { return false }
 if !put_integer(w,u64(v.field_window_size),4) { return false }
 if !put_float64(w,v.field_timeout_threshold) { return false }
 if !put_bool(w,v.field_is_active) { return false }
 if !put_bool(w,v.field_is_timeout) { return false }
 if len(v.field_backends)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_backends)),4) { return false }
 for e in v.field_backends {
 if !put_string(w,e,64) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ModuleChannelInfo.
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
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgModuleChannelInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgModuleChannelInfo()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_type=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_frequency=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_min_time_diff=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_max_time_diff=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_std_dev=f64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_window_size=i32(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_timeout_threshold=f64(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_active=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_timeout=bool(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_backends=make([]string,int(n),allocator)
 }
 for &e in v.field_backends {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ModuleChannelInfo value.
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
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc(v: ^Ros2Aimdk_msgsMsgModuleChannelInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=586}
 if !write_Ros2Aimdk_msgsMsgModuleChannelInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=586}
 if !write_Ros2Aimdk_msgsMsgModuleChannelInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ModuleChannelInfo value.
// @details Require the complete 58..586-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgModuleChannelInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgModuleChannelInfo,u32) {
 if len(bytes)<58 || len(bytes)>586 { return Ros2Aimdk_msgsMsgModuleChannelInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgModuleChannelInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgModuleChannelInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ModuleRpcInfo value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..672 bytes
// and is identified by UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleRpcInfo :: struct {
 // @brief aimdk_msgs/msg/ModuleRpcInfo.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/ModuleRpcInfo.req_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
 field_req_type: string,
 // @brief aimdk_msgs/msg/ModuleRpcInfo.res_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
 field_res_type: string,
 // @brief aimdk_msgs/msg/ModuleRpcInfo.backends: string; 0..4 elements; each string is 0..64 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
 field_backends: []string,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ModuleRpcInfo in bytes.
// @details The inclusive bound is 672 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleRpcInfo_Maximum_Wire_Bytes :: 672
// @brief Canonical codec identity of aimdk_msgs/msg/ModuleRpcInfo.
// @details Exact identity UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleRpcInfo_Codec_Identity :: "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8"
// @brief Original ROS type name for aimdk_msgs/msg/ModuleRpcInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleRpcInfo_Native_Type :: "aimdk_msgs/msg/ModuleRpcInfo"
// @brief Selected original native identity for aimdk_msgs/msg/ModuleRpcInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleRpcInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ModuleRpcInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc() -> Ros2Aimdk_msgsMsgModuleRpcInfo {
 v: Ros2Aimdk_msgsMsgModuleRpcInfo
 v.field_name = ""
 v.field_req_type = ""
 v.field_res_type = ""
 v.field_backends = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ModuleRpcInfo.
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
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc(v: ^Ros2Aimdk_msgsMsgModuleRpcInfo, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_string(w,v.field_req_type,128) { return false }
 if !put_string(w,v.field_res_type,128) { return false }
 if len(v.field_backends)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_backends)),4) { return false }
 for e in v.field_backends {
 if !put_string(w,e,64) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ModuleRpcInfo.
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
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgModuleRpcInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgModuleRpcInfo()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_req_type=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_res_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_backends=make([]string,int(n),allocator)
 }
 for &e in v.field_backends {
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ModuleRpcInfo value.
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
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc(v: ^Ros2Aimdk_msgsMsgModuleRpcInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=672}
 if !write_Ros2Aimdk_msgsMsgModuleRpcInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=672}
 if !write_Ros2Aimdk_msgsMsgModuleRpcInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ModuleRpcInfo value.
// @details Require the complete 16..672-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgModuleRpcInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgModuleRpcInfo,u32) {
 if len(bytes)<16 || len(bytes)>672 { return Ros2Aimdk_msgsMsgModuleRpcInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgModuleRpcInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgModuleRpcInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ModuleResourceInfo value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..5180 bytes
// and is identified by UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleResourceInfo :: struct {
 // @brief aimdk_msgs/msg/ModuleResourceInfo.module_name: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_module_name: string,
 // @brief aimdk_msgs/msg/ModuleResourceInfo.rpc_clients: aimdk_msgs/msg/ModuleRpcInfo; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_rpc_clients: []Ros2Aimdk_msgsMsgModuleRpcInfo,
 // @brief aimdk_msgs/msg/ModuleResourceInfo.rpc_services: aimdk_msgs/msg/ModuleRpcInfo; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_rpc_services: []Ros2Aimdk_msgsMsgModuleRpcInfo,
 // @brief aimdk_msgs/msg/ModuleResourceInfo.pub_channels: aimdk_msgs/msg/ModuleChannelInfo; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_pub_channels: []Ros2Aimdk_msgsMsgModuleChannelInfo,
 // @brief aimdk_msgs/msg/ModuleResourceInfo.sub_channels: aimdk_msgs/msg/ModuleChannelInfo; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_sub_channels: []Ros2Aimdk_msgsMsgModuleChannelInfo,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ModuleResourceInfo in bytes.
// @details The inclusive bound is 5180 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleResourceInfo_Maximum_Wire_Bytes :: 5180
// @brief Canonical codec identity of aimdk_msgs/msg/ModuleResourceInfo.
// @details Exact identity UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleResourceInfo_Codec_Identity :: "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f"
// @brief Original ROS type name for aimdk_msgs/msg/ModuleResourceInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleResourceInfo_Native_Type :: "aimdk_msgs/msg/ModuleResourceInfo"
// @brief Selected original native identity for aimdk_msgs/msg/ModuleResourceInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgModuleResourceInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ModuleResourceInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc() -> Ros2Aimdk_msgsMsgModuleResourceInfo {
 v: Ros2Aimdk_msgsMsgModuleResourceInfo
 v.field_module_name = ""
 v.field_rpc_clients = nil
 v.field_rpc_services = nil
 v.field_pub_channels = nil
 v.field_sub_channels = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ModuleResourceInfo.
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
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc(v: ^Ros2Aimdk_msgsMsgModuleResourceInfo, w: ^Writer) -> bool {
 if !put_string(w,v.field_module_name,128) { return false }
 if len(v.field_rpc_clients)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_rpc_clients)),4) { return false }
 for e in v.field_rpc_clients {
 item:=e
 if !write_Ros2Aimdk_msgsMsgModuleRpcInfo(&item,w) { return false }
 }
 if len(v.field_rpc_services)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_rpc_services)),4) { return false }
 for e in v.field_rpc_services {
 item:=e
 if !write_Ros2Aimdk_msgsMsgModuleRpcInfo(&item,w) { return false }
 }
 if len(v.field_pub_channels)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_pub_channels)),4) { return false }
 for e in v.field_pub_channels {
 item:=e
 if !write_Ros2Aimdk_msgsMsgModuleChannelInfo(&item,w) { return false }
 }
 if len(v.field_sub_channels)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_sub_channels)),4) { return false }
 for e in v.field_sub_channels {
 item:=e
 if !write_Ros2Aimdk_msgsMsgModuleChannelInfo(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ModuleResourceInfo.
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
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgModuleResourceInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgModuleResourceInfo()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_module_name=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_rpc_clients=make([]Ros2Aimdk_msgsMsgModuleRpcInfo,int(n),allocator)
 }
 for &e in v.field_rpc_clients {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgModuleRpcInfo(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_rpc_services=make([]Ros2Aimdk_msgsMsgModuleRpcInfo,int(n),allocator)
 }
 for &e in v.field_rpc_services {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgModuleRpcInfo(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_pub_channels=make([]Ros2Aimdk_msgsMsgModuleChannelInfo,int(n),allocator)
 }
 for &e in v.field_pub_channels {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgModuleChannelInfo(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_sub_channels=make([]Ros2Aimdk_msgsMsgModuleChannelInfo,int(n),allocator)
 }
 for &e in v.field_sub_channels {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgModuleChannelInfo(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ModuleResourceInfo value.
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
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc(v: ^Ros2Aimdk_msgsMsgModuleResourceInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=5180}
 if !write_Ros2Aimdk_msgsMsgModuleResourceInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=5180}
 if !write_Ros2Aimdk_msgsMsgModuleResourceInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ModuleResourceInfo value.
// @details Require the complete 20..5180-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgModuleResourceInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgModuleResourceInfo,u32) {
 if len(bytes)<20 || len(bytes)>5180 { return Ros2Aimdk_msgsMsgModuleResourceInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgModuleResourceInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgModuleResourceInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ThreadResourceInfo value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 32..352 bytes
// and is identified by UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgThreadResourceInfo :: struct {
 // @brief aimdk_msgs/msg/ThreadResourceInfo.thread_id: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_thread_id: u64,
 // @brief aimdk_msgs/msg/ThreadResourceInfo.thread_name: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_thread_name: string,
 // @brief aimdk_msgs/msg/ThreadResourceInfo.cpu_usage_ratio: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_cpu_usage_ratio: f64,
 // @brief aimdk_msgs/msg/ThreadResourceInfo.cpu_sched_policy: string; each string is 0..128 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_cpu_sched_policy: string,
 // @brief aimdk_msgs/msg/ThreadResourceInfo.cpu_sched_priority: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_cpu_sched_priority: i32,
 // @brief aimdk_msgs/msg/ThreadResourceInfo.bounding_cpus: int32; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_bounding_cpus: []i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ThreadResourceInfo in bytes.
// @details The inclusive bound is 352 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgThreadResourceInfo_Maximum_Wire_Bytes :: 352
// @brief Canonical codec identity of aimdk_msgs/msg/ThreadResourceInfo.
// @details Exact identity UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgThreadResourceInfo_Codec_Identity :: "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15"
// @brief Original ROS type name for aimdk_msgs/msg/ThreadResourceInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgThreadResourceInfo_Native_Type :: "aimdk_msgs/msg/ThreadResourceInfo"
// @brief Selected original native identity for aimdk_msgs/msg/ThreadResourceInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgThreadResourceInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ThreadResourceInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc() -> Ros2Aimdk_msgsMsgThreadResourceInfo {
 v: Ros2Aimdk_msgsMsgThreadResourceInfo
 v.field_thread_id = 0
 v.field_thread_name = ""
 v.field_cpu_usage_ratio = 0
 v.field_cpu_sched_policy = ""
 v.field_cpu_sched_priority = 0
 v.field_bounding_cpus = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ThreadResourceInfo.
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
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc(v: ^Ros2Aimdk_msgsMsgThreadResourceInfo, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_thread_id),8) { return false }
 if !put_string(w,v.field_thread_name,128) { return false }
 if !put_float64(w,v.field_cpu_usage_ratio) { return false }
 if !put_string(w,v.field_cpu_sched_policy,128) { return false }
 if !put_integer(w,u64(v.field_cpu_sched_priority),4) { return false }
 if len(v.field_bounding_cpus)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_bounding_cpus)),4) { return false }
 for e in v.field_bounding_cpus {
 if !put_integer(w,u64(e),4) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ThreadResourceInfo.
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
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgThreadResourceInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgThreadResourceInfo()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_thread_id=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_thread_name=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_cpu_usage_ratio=f64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_cpu_sched_policy=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_cpu_sched_priority=i32(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_bounding_cpus=make([]i32,int(n),allocator)
 }
 for &e in v.field_bounding_cpus {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=i32(b)
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ThreadResourceInfo value.
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
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc(v: ^Ros2Aimdk_msgsMsgThreadResourceInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=352}
 if !write_Ros2Aimdk_msgsMsgThreadResourceInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=352}
 if !write_Ros2Aimdk_msgsMsgThreadResourceInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ThreadResourceInfo value.
// @details Require the complete 32..352-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgThreadResourceInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgThreadResourceInfo,u32) {
 if len(bytes)<32 || len(bytes)>352 { return Ros2Aimdk_msgsMsgThreadResourceInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgThreadResourceInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgThreadResourceInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ProcessResourceInfo value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 48..1584 bytes
// and is identified by UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessResourceInfo :: struct {
 // @brief aimdk_msgs/msg/ProcessResourceInfo.process_id: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_process_id: u64,
 // @brief aimdk_msgs/msg/ProcessResourceInfo.process_name: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_process_name: string,
 // @brief aimdk_msgs/msg/ProcessResourceInfo.process_mem_usage: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_process_mem_usage: u64,
 // @brief aimdk_msgs/msg/ProcessResourceInfo.process_mem_usage_ratio: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_process_mem_usage_ratio: f64,
 // @brief aimdk_msgs/msg/ProcessResourceInfo.process_cpu_usage_ratio: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_process_cpu_usage_ratio: f64,
 // @brief aimdk_msgs/msg/ProcessResourceInfo.thread_count: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_thread_count: u64,
 // @brief aimdk_msgs/msg/ProcessResourceInfo.threads: aimdk_msgs/msg/ThreadResourceInfo; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
 field_threads: []Ros2Aimdk_msgsMsgThreadResourceInfo,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ProcessResourceInfo in bytes.
// @details The inclusive bound is 1584 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessResourceInfo_Maximum_Wire_Bytes :: 1584
// @brief Canonical codec identity of aimdk_msgs/msg/ProcessResourceInfo.
// @details Exact identity UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessResourceInfo_Codec_Identity :: "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550"
// @brief Original ROS type name for aimdk_msgs/msg/ProcessResourceInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessResourceInfo_Native_Type :: "aimdk_msgs/msg/ProcessResourceInfo"
// @brief Selected original native identity for aimdk_msgs/msg/ProcessResourceInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessResourceInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ProcessResourceInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc() -> Ros2Aimdk_msgsMsgProcessResourceInfo {
 v: Ros2Aimdk_msgsMsgProcessResourceInfo
 v.field_process_id = 0
 v.field_process_name = ""
 v.field_process_mem_usage = 0
 v.field_process_mem_usage_ratio = 0
 v.field_process_cpu_usage_ratio = 0
 v.field_thread_count = 0
 v.field_threads = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ProcessResourceInfo.
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
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc(v: ^Ros2Aimdk_msgsMsgProcessResourceInfo, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_process_id),8) { return false }
 if !put_string(w,v.field_process_name,128) { return false }
 if !put_integer(w,u64(v.field_process_mem_usage),8) { return false }
 if !put_float64(w,v.field_process_mem_usage_ratio) { return false }
 if !put_float64(w,v.field_process_cpu_usage_ratio) { return false }
 if !put_integer(w,u64(v.field_thread_count),8) { return false }
 if len(v.field_threads)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_threads)),4) { return false }
 for e in v.field_threads {
 item:=e
 if !write_Ros2Aimdk_msgsMsgThreadResourceInfo(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ProcessResourceInfo.
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
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgProcessResourceInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgProcessResourceInfo()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_process_id=u64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_process_name=b
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_process_mem_usage=u64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_process_mem_usage_ratio=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_process_cpu_usage_ratio=f64(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_thread_count=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_threads=make([]Ros2Aimdk_msgsMsgThreadResourceInfo,int(n),allocator)
 }
 for &e in v.field_threads {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgThreadResourceInfo(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ProcessResourceInfo value.
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
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc(v: ^Ros2Aimdk_msgsMsgProcessResourceInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1584}
 if !write_Ros2Aimdk_msgsMsgProcessResourceInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1584}
 if !write_Ros2Aimdk_msgsMsgProcessResourceInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ProcessResourceInfo value.
// @details Require the complete 48..1584-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgProcessResourceInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgProcessResourceInfo,u32) {
 if len(bytes)<48 || len(bytes)>1584 { return Ros2Aimdk_msgsMsgProcessResourceInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgProcessResourceInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgProcessResourceInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ProcessInfo value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 80..12232
// bytes and is identified by UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessInfo :: struct {
 // @brief aimdk_msgs/msg/ProcessInfo.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/ProcessInfo.app_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
 field_app_name: string,
 // @brief aimdk_msgs/msg/ProcessInfo.resource: aimdk_msgs/msg/ProcessResourceInfo.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
 field_resource: Ros2Aimdk_msgsMsgProcessResourceInfo,
 // @brief aimdk_msgs/msg/ProcessInfo.modules: aimdk_msgs/msg/ModuleResourceInfo; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
 field_modules: []Ros2Aimdk_msgsMsgModuleResourceInfo,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ProcessInfo in bytes.
// @details The inclusive bound is 12232 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessInfo_Maximum_Wire_Bytes :: 12232
// @brief Canonical codec identity of aimdk_msgs/msg/ProcessInfo.
// @details Exact identity UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessInfo_Codec_Identity :: "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996"
// @brief Original ROS type name for aimdk_msgs/msg/ProcessInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessInfo_Native_Type :: "aimdk_msgs/msg/ProcessInfo"
// @brief Selected original native identity for aimdk_msgs/msg/ProcessInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ProcessInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgProcessInfo :: proc() -> Ros2Aimdk_msgsMsgProcessInfo {
 v: Ros2Aimdk_msgsMsgProcessInfo
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_app_name = ""
 v.field_resource = Ros2Aimdk_msgsMsgProcessResourceInfo{}
 v.field_modules = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ProcessInfo.
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
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgProcessInfo :: proc(v: ^Ros2Aimdk_msgsMsgProcessInfo, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_app_name,128) { return false }
 if !write_Ros2Aimdk_msgsMsgProcessResourceInfo(&v.field_resource,w) { return false }
 if len(v.field_modules)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_modules)),4) { return false }
 for e in v.field_modules {
 item:=e
 if !write_Ros2Aimdk_msgsMsgModuleResourceInfo(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ProcessInfo.
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
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgProcessInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgProcessInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgProcessInfo()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_app_name=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgProcessResourceInfo(r,allocator); if !ok { return v,false }
 v.field_resource=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_modules=make([]Ros2Aimdk_msgsMsgModuleResourceInfo,int(n),allocator)
 }
 for &e in v.field_modules {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgModuleResourceInfo(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ProcessInfo value.
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
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgProcessInfo :: proc(v: ^Ros2Aimdk_msgsMsgProcessInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12232}
 if !write_Ros2Aimdk_msgsMsgProcessInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12232}
 if !write_Ros2Aimdk_msgsMsgProcessInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ProcessInfo value.
// @details Require the complete 80..12232-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgProcessInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgProcessInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgProcessInfo,u32) {
 if len(bytes)<80 || len(bytes)>12232 { return Ros2Aimdk_msgsMsgProcessInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgProcessInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgProcessInfo{},reader.code }
 return value,0
}
