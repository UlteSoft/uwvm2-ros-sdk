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
Ros2Builtin_interfacesMsgTime_Codec_Identity ::
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
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
read_Ros2Builtin_interfacesMsgTime :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Builtin_interfacesMsgTime,
    bool) {
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
decode_Ros2Builtin_interfacesMsgTime :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Builtin_interfacesMsgTime,u32) {
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
// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..5980 bytes and
// is identified by UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac.
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
 // @brief sensor_msgs/msg/JointState.name: string; 0..64 elements; each string is 0..64 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_name: []string,
 // @brief sensor_msgs/msg/JointState.position: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief sensor_msgs/msg/JointState.velocity: float64; 0..64 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief sensor_msgs/msg/JointState.effort: float64; 0..64 elements.
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
// @details The inclusive bound is 5980 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Maximum_Wire_Bytes :: 5980
// @brief Canonical codec identity of sensor_msgs/msg/JointState.
// @details Exact identity UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Codec_Identity ::
    "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac"
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
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(
     v.field_position) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(
     v.field_velocity) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(
     v.field_effort) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(
     v.field_velocity) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(
     v.field_effort) { w.code=22; return false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(
     v.field_effort) { w.code=22; return false }
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_name)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,64) { return false }
 }
 if len(v.field_position)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>64 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>64 { w.code=22; return false }
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
read_Ros2Sensor_msgsMsgJointState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgJointState,
    bool) {
 v:=init_Ros2Sensor_msgsMsgJointState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>64 { r.code=22; return v,false }
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
 if n>64 { r.code=22; return v,false }
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
 if n>64 { r.code=22; return v,false }
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
 if n>64 { r.code=22; return v,false }
 v.field_effort=make([]f64,int(n),allocator)
 }
 for &e in v.field_effort {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(
     v.field_position) { r.code=22; return v,false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(
     v.field_velocity) { r.code=22; return v,false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(
     v.field_effort) { r.code=22; return v,false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(
     v.field_velocity) { r.code=22; return v,false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(
     v.field_effort) { r.code=22; return v,false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(
     v.field_effort) { r.code=22; return v,false }
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
 measure:=Writer{measuring=true,limit=5980}
 if !write_Ros2Sensor_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=5980}
 if !write_Ros2Sensor_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
// @details Require the complete 28..5980-byte canonical representation. Reject truncation, invalid fields and trailing
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
decode_Ros2Sensor_msgsMsgJointState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Sensor_msgsMsgJointState,
    u32) {
 if len(bytes)<28 || len(bytes)>5980 { return Ros2Sensor_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_isaac_sim_bridge/msg/ClockEvent value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 14..14 bytes and
// is identified by UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent :: struct {
 // @brief uwvm_isaac_sim_bridge/msg/ClockEvent.kind: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
 field_kind: u8,
 // @brief uwvm_isaac_sim_bridge/msg/ClockEvent.phase: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
 field_phase: u8,
 // @brief uwvm_isaac_sim_bridge/msg/ClockEvent.frame: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
 field_frame: u32,
 // @brief uwvm_isaac_sim_bridge/msg/ClockEvent.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
 field_sec: i32,
 // @brief uwvm_isaac_sim_bridge/msg/ClockEvent.nanosec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
 field_nanosec: u32,
}
// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/msg/ClockEvent in bytes.
// @details The inclusive bound is 14 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_Maximum_Wire_Bytes :: 14
// @brief Canonical codec identity of uwvm_isaac_sim_bridge/msg/ClockEvent.
// @details Exact identity UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_Codec_Identity ::
    "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6"
// @brief Original ROS type name for uwvm_isaac_sim_bridge/msg/ClockEvent.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_Native_Type :: "uwvm_isaac_sim_bridge/msg/ClockEvent"
// @brief Selected original native identity for uwvm_isaac_sim_bridge/msg/ClockEvent.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_Native_Identity :: ""
// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.AUTOMATIC: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_AUTOMATIC :: u8(1)
// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.MANUAL: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_MANUAL :: u8(2)
// @brief Construct the declared defaults of uwvm_isaac_sim_bridge/msg/ClockEvent.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent :: proc() -> Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
 v: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
 v.field_kind = 0
 v.field_phase = 0
 v.field_frame = 0
 v.field_sec = 0
 v.field_nanosec = 0
 return v
}
// @brief Append every canonical field of uwvm_isaac_sim_bridge/msg/ClockEvent.
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
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent :: proc(v: ^Ros2Uwvm_isaac_sim_bridgeMsgClockEvent, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_kind),1) { return false }
 if !put_integer(w,u64(v.field_phase),1) { return false }
 if !put_integer(w,u64(v.field_frame),4) { return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nanosec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/msg/ClockEvent.
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
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,bool) {
 v:=init_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_kind=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_phase=u8(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_frame=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sec=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_nanosec=u32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_isaac_sim_bridge/msg/ClockEvent value.
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
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent :: proc(v: ^Ros2Uwvm_isaac_sim_bridgeMsgClockEvent, output: []u8) -> (
    []u8,u32) {
 measure:=Writer{measuring=true,limit=14}
 if !write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=14}
 if !write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_isaac_sim_bridge/msg/ClockEvent value.
// @details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,u32) {
 if len(bytes)<14 || len(bytes)>14 { return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 22..22 bytes and
// is identified by UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: struct {
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.operation: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_operation: u8,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.session_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_session_nonce: u64,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.request_sequence: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request_sequence: u32,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.phase: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_phase: u8,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.frame: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_frame: u32,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.impulse: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_impulse: bool,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.extra_update: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_extra_update: bool,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.pacing_milliseconds: uint16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pacing_milliseconds: u16,
}
// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/srv/ClockControl_Request in bytes.
// @details The inclusive bound is 22 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_Maximum_Wire_Bytes :: 22
// @brief Canonical codec identity of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
// @details Exact identity UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_Codec_Identity ::
    "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19"
// @brief Original ROS type name for uwvm_isaac_sim_bridge/srv/ClockControl_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_Native_Type :: "uwvm_isaac_sim_bridge/srv/ClockControl_Request"
// @brief Selected original native identity for uwvm_isaac_sim_bridge/srv/ClockControl_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_Native_Identity :: ""
// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.START: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_START :: u8(1)
// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.STEP: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_STEP :: u8(2)
// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.FINISH: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_FINISH :: u8(3)
// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.CANCEL: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_CANCEL :: u8(4)
// @brief Construct the declared defaults of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: proc() -> Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
 v: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
 v.field_operation = 0
 v.field_session_nonce = 0
 v.field_request_sequence = 0
 v.field_phase = 0
 v.field_frame = 0
 v.field_impulse = false
 v.field_extra_update = false
 v.field_pacing_milliseconds = 0
 return v
}
// @brief Append every canonical field of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: proc(v: ^Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_operation),1) { return false }
 if !put_integer(w,u64(v.field_session_nonce),8) { return false }
 if !put_integer(w,u64(v.field_request_sequence),4) { return false }
 if !put_integer(w,u64(v.field_phase),1) { return false }
 if !put_integer(w,u64(v.field_frame),4) { return false }
 if !put_bool(w,v.field_impulse) { return false }
 if !put_bool(w,v.field_extra_update) { return false }
 if !put_integer(w,u64(v.field_pacing_milliseconds),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,bool) {
 v:=init_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_operation=u8(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_session_nonce=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_request_sequence=u32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_phase=u8(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_frame=u32(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_impulse=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_extra_update=bool(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_pacing_milliseconds=u16(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: proc(v: ^Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=22}
 if !write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=22}
 if !write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
// @details Require the complete 22..22-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,u32) {
 if len(bytes)<22 || len(bytes)>22 { return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: struct {
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.session_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_session_nonce: u64,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.request_sequence: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_request_sequence: u32,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.state: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_state: u8,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.actual_app_updates: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_actual_app_updates: u64,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.completed_steps: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_completed_steps: u32,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.has_event: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_has_event: bool,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.event: uwvm_isaac_sim_bridge/msg/ClockEvent.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_event: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,
 // @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.cleanup_status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
 field_cleanup_status: u32,
}
// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/srv/ClockControl_Response in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
// @details Exact identity UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_Codec_Identity ::
    "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502"
// @brief Original ROS type name for uwvm_isaac_sim_bridge/srv/ClockControl_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_Native_Type :: "uwvm_isaac_sim_bridge/srv/ClockControl_Response"
// @brief Selected original native identity for uwvm_isaac_sim_bridge/srv/ClockControl_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: proc() -> Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
 v: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
 v.field_status = 0
 v.field_session_nonce = 0
 v.field_request_sequence = 0
 v.field_state = 0
 v.field_actual_app_updates = 0
 v.field_completed_steps = 0
 v.field_has_event = false
 v.field_event = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}
 v.field_cleanup_status = 0
 return v
}
// @brief Append every canonical field of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: proc(v: ^Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_integer(w,u64(v.field_session_nonce),8) { return false }
 if !put_integer(w,u64(v.field_request_sequence),4) { return false }
 if !put_integer(w,u64(v.field_state),1) { return false }
 if !put_integer(w,u64(v.field_actual_app_updates),8) { return false }
 if !put_integer(w,u64(v.field_completed_steps),4) { return false }
 if !put_bool(w,v.field_has_event) { return false }
 if !write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(&v.field_event,w) { return false }
 if !put_integer(w,u64(v.field_cleanup_status),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response,bool) {
 v:=init_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_session_nonce=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_request_sequence=u32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_state=u8(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_actual_app_updates=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_completed_steps=u32(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_has_event=bool(b)
 }
 {
 b,ok:=read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(r,allocator); if !ok { return v,false }
 v.field_event=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_cleanup_status=u32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: proc(v: ^Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
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
// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{},reader.code }
 return value,0
}
