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
// @brief Complete ROS 2 flexiv_msgs/action/ErrorRecovery_Goal value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Goal :: struct {
}
// @brief Maximum canonical extent of flexiv_msgs/action/ErrorRecovery_Goal in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Goal_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of flexiv_msgs/action/ErrorRecovery_Goal.
// @details Exact identity UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Goal_Codec_Identity ::
        "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830"
// @brief Original ROS type name for flexiv_msgs/action/ErrorRecovery_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Goal_Native_Type :: "flexiv_msgs/action/ErrorRecovery_Goal"
// @brief Selected original native identity for flexiv_msgs/action/ErrorRecovery_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/ErrorRecovery_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionErrorRecovery_Goal :: proc() -> Ros2Flexiv_msgsActionErrorRecovery_Goal {
 v: Ros2Flexiv_msgsActionErrorRecovery_Goal
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/ErrorRecovery_Goal.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionErrorRecovery_Goal :: proc(v: ^Ros2Flexiv_msgsActionErrorRecovery_Goal, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/ErrorRecovery_Goal.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionErrorRecovery_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionErrorRecovery_Goal,bool) {
 v:=init_Ros2Flexiv_msgsActionErrorRecovery_Goal()
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/ErrorRecovery_Goal value.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionErrorRecovery_Goal :: proc(v: ^Ros2Flexiv_msgsActionErrorRecovery_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Flexiv_msgsActionErrorRecovery_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Flexiv_msgsActionErrorRecovery_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/ErrorRecovery_Goal value.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionErrorRecovery_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionErrorRecovery_Goal,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Flexiv_msgsActionErrorRecovery_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionErrorRecovery_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionErrorRecovery_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/ErrorRecovery_Result value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 7..263 bytes and
// is identified by UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Result :: struct {
 // @brief flexiv_msgs/action/ErrorRecovery_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief flexiv_msgs/action/ErrorRecovery_Result.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
 field_requires_controller_restart: bool,
 // @brief flexiv_msgs/action/ErrorRecovery_Result.recovery_policy: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
 field_recovery_policy: u8,
}
// @brief Maximum canonical extent of flexiv_msgs/action/ErrorRecovery_Result in bytes.
// @details The inclusive bound is 263 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Result_Maximum_Wire_Bytes :: 263
// @brief Canonical codec identity of flexiv_msgs/action/ErrorRecovery_Result.
// @details Exact identity UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Result_Codec_Identity ::
        "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc"
// @brief Original ROS type name for flexiv_msgs/action/ErrorRecovery_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Result_Native_Type :: "flexiv_msgs/action/ErrorRecovery_Result"
// @brief Selected original native identity for flexiv_msgs/action/ErrorRecovery_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Result_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/ErrorRecovery_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionErrorRecovery_Result :: proc() -> Ros2Flexiv_msgsActionErrorRecovery_Result {
 v: Ros2Flexiv_msgsActionErrorRecovery_Result
 v.field_success = false
 v.field_message = ""
 v.field_requires_controller_restart = false
 v.field_recovery_policy = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/ErrorRecovery_Result.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionErrorRecovery_Result :: proc(v: ^Ros2Flexiv_msgsActionErrorRecovery_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if !put_bool(w,v.field_requires_controller_restart) { return false }
 if !put_integer(w,u64(v.field_recovery_policy),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/ErrorRecovery_Result.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionErrorRecovery_Result :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionErrorRecovery_Result,bool) {
 v:=init_Ros2Flexiv_msgsActionErrorRecovery_Result()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_requires_controller_restart=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_recovery_policy=u8(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/ErrorRecovery_Result value.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionErrorRecovery_Result :: proc(v: ^Ros2Flexiv_msgsActionErrorRecovery_Result, output: []u8) -> ([]u8,u32)
        {
 measure:=Writer{measuring=true,limit=263}
 if !write_Ros2Flexiv_msgsActionErrorRecovery_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=263}
 if !write_Ros2Flexiv_msgsActionErrorRecovery_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/ErrorRecovery_Result value.
// @details Require the complete 7..263-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionErrorRecovery_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionErrorRecovery_Result,u32) {
 if len(bytes)<7 || len(bytes)>263 { return Ros2Flexiv_msgsActionErrorRecovery_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionErrorRecovery_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionErrorRecovery_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/ErrorRecovery_Feedback value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..265 bytes and
// is identified by UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback :: struct {
 // @brief flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_recovery_state: u8,
 // @brief flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name: string; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_recovery_state_name: string,
 // @brief flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_elapsed_seconds: f32,
}
// @brief Maximum canonical extent of flexiv_msgs/action/ErrorRecovery_Feedback in bytes.
// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_Maximum_Wire_Bytes :: 265
// @brief Canonical codec identity of flexiv_msgs/action/ErrorRecovery_Feedback.
// @details Exact identity UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_Codec_Identity ::
        "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739"
// @brief Original ROS type name for flexiv_msgs/action/ErrorRecovery_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_Native_Type :: "flexiv_msgs/action/ErrorRecovery_Feedback"
// @brief Selected original native identity for flexiv_msgs/action/ErrorRecovery_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_Native_Identity :: ""
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_IDLE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_IDLE :: u8(0)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_CLASSIFY: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_CLASSIFY :: u8(1)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_STOP: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_STOP :: u8(2)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_CLEAR_FAULT: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_CLEAR_FAULT :: u8(3)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_WAIT_FAULT_CLEARED: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_WAIT_FAULT_CLEARED :: u8(4)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_SERVO_ON: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_SERVO_ON :: u8(5)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_WAIT_OPERATIONAL: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_WAIT_OPERATIONAL :: u8(6)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_COMPLETE: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_COMPLETE :: u8(7)
// @brief flexiv_msgs/action/ErrorRecovery_Feedback.STATE_FAILED: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_FAILED :: u8(8)
// @brief Construct the declared defaults of flexiv_msgs/action/ErrorRecovery_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionErrorRecovery_Feedback :: proc() -> Ros2Flexiv_msgsActionErrorRecovery_Feedback {
 v: Ros2Flexiv_msgsActionErrorRecovery_Feedback
 v.field_recovery_state = 0
 v.field_recovery_state_name = ""
 v.field_elapsed_seconds = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/ErrorRecovery_Feedback.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionErrorRecovery_Feedback :: proc(v: ^Ros2Flexiv_msgsActionErrorRecovery_Feedback, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_recovery_state),1) { return false }
 if !put_string(w,v.field_recovery_state_name,256) { return false }
 if !put_float32(w,v.field_elapsed_seconds) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/ErrorRecovery_Feedback.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionErrorRecovery_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionErrorRecovery_Feedback,bool) {
 v:=init_Ros2Flexiv_msgsActionErrorRecovery_Feedback()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_recovery_state=u8(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_recovery_state_name=b
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_elapsed_seconds=f32(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/ErrorRecovery_Feedback value.
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionErrorRecovery_Feedback :: proc(v: ^Ros2Flexiv_msgsActionErrorRecovery_Feedback, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=265}
 if !write_Ros2Flexiv_msgsActionErrorRecovery_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=265}
 if !write_Ros2Flexiv_msgsActionErrorRecovery_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/ErrorRecovery_Feedback value.
// @details Require the complete 9..265-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionErrorRecovery_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionErrorRecovery_Feedback,u32) {
 if len(bytes)<9 || len(bytes)>265 { return Ros2Flexiv_msgsActionErrorRecovery_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionErrorRecovery_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionErrorRecovery_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/Grasp_Goal value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Goal :: struct {
 // @brief flexiv_msgs/action/Grasp_Goal.force: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_force: f64,
}
// @brief Maximum canonical extent of flexiv_msgs/action/Grasp_Goal in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Goal_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of flexiv_msgs/action/Grasp_Goal.
// @details Exact identity UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Goal_Codec_Identity :: "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce"
// @brief Original ROS type name for flexiv_msgs/action/Grasp_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Goal_Native_Type :: "flexiv_msgs/action/Grasp_Goal"
// @brief Selected original native identity for flexiv_msgs/action/Grasp_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/Grasp_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionGrasp_Goal :: proc() -> Ros2Flexiv_msgsActionGrasp_Goal {
 v: Ros2Flexiv_msgsActionGrasp_Goal
 v.field_force = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/Grasp_Goal.
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
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionGrasp_Goal :: proc(v: ^Ros2Flexiv_msgsActionGrasp_Goal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_force) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/Grasp_Goal.
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
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionGrasp_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionGrasp_Goal,bool) {
 v:=init_Ros2Flexiv_msgsActionGrasp_Goal()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_force=f64(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/Grasp_Goal value.
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
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionGrasp_Goal :: proc(v: ^Ros2Flexiv_msgsActionGrasp_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Flexiv_msgsActionGrasp_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Flexiv_msgsActionGrasp_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/Grasp_Goal value.
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
// @see Ros2Flexiv_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionGrasp_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionGrasp_Goal,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Flexiv_msgsActionGrasp_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionGrasp_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionGrasp_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/Grasp_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Result :: struct {
 // @brief flexiv_msgs/action/Grasp_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief flexiv_msgs/action/Grasp_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of flexiv_msgs/action/Grasp_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of flexiv_msgs/action/Grasp_Result.
// @details Exact identity UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Result_Codec_Identity :: "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a"
// @brief Original ROS type name for flexiv_msgs/action/Grasp_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Result_Native_Type :: "flexiv_msgs/action/Grasp_Result"
// @brief Selected original native identity for flexiv_msgs/action/Grasp_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Result_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/Grasp_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionGrasp_Result :: proc() -> Ros2Flexiv_msgsActionGrasp_Result {
 v: Ros2Flexiv_msgsActionGrasp_Result
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/Grasp_Result.
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
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionGrasp_Result :: proc(v: ^Ros2Flexiv_msgsActionGrasp_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/Grasp_Result.
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
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionGrasp_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionGrasp_Result,bool)
        {
 v:=init_Ros2Flexiv_msgsActionGrasp_Result()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/Grasp_Result value.
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
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionGrasp_Result :: proc(v: ^Ros2Flexiv_msgsActionGrasp_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Flexiv_msgsActionGrasp_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Flexiv_msgsActionGrasp_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/Grasp_Result value.
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
// @see Ros2Flexiv_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionGrasp_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionGrasp_Result,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Flexiv_msgsActionGrasp_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionGrasp_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionGrasp_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/Grasp_Feedback value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 17..17 bytes and
// is identified by UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Feedback :: struct {
 // @brief flexiv_msgs/action/Grasp_Feedback.current_width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_width: f64,
 // @brief flexiv_msgs/action/Grasp_Feedback.current_force: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_force: f64,
 // @brief flexiv_msgs/action/Grasp_Feedback.moving: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_moving: bool,
}
// @brief Maximum canonical extent of flexiv_msgs/action/Grasp_Feedback in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Feedback_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of flexiv_msgs/action/Grasp_Feedback.
// @details Exact identity UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Feedback_Codec_Identity :: "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05"
// @brief Original ROS type name for flexiv_msgs/action/Grasp_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Feedback_Native_Type :: "flexiv_msgs/action/Grasp_Feedback"
// @brief Selected original native identity for flexiv_msgs/action/Grasp_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionGrasp_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/Grasp_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionGrasp_Feedback :: proc() -> Ros2Flexiv_msgsActionGrasp_Feedback {
 v: Ros2Flexiv_msgsActionGrasp_Feedback
 v.field_current_width = 0
 v.field_current_force = 0
 v.field_moving = false
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/Grasp_Feedback.
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
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionGrasp_Feedback :: proc(v: ^Ros2Flexiv_msgsActionGrasp_Feedback, w: ^Writer) -> bool {
 if !put_float64(w,v.field_current_width) { return false }
 if !put_float64(w,v.field_current_force) { return false }
 if !put_bool(w,v.field_moving) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/Grasp_Feedback.
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
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionGrasp_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionGrasp_Feedback,bool) {
 v:=init_Ros2Flexiv_msgsActionGrasp_Feedback()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_width=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_force=f64(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_moving=bool(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/Grasp_Feedback value.
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
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionGrasp_Feedback :: proc(v: ^Ros2Flexiv_msgsActionGrasp_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Flexiv_msgsActionGrasp_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Flexiv_msgsActionGrasp_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/Grasp_Feedback value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionGrasp_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionGrasp_Feedback,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Flexiv_msgsActionGrasp_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionGrasp_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionGrasp_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/Move_Goal value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Goal :: struct {
 // @brief flexiv_msgs/action/Move_Goal.width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_width: f64,
 // @brief flexiv_msgs/action/Move_Goal.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief flexiv_msgs/action/Move_Goal.max_force: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_max_force: f64,
}
// @brief Maximum canonical extent of flexiv_msgs/action/Move_Goal in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Goal_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of flexiv_msgs/action/Move_Goal.
// @details Exact identity UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Goal_Codec_Identity :: "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2"
// @brief Original ROS type name for flexiv_msgs/action/Move_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Goal_Native_Type :: "flexiv_msgs/action/Move_Goal"
// @brief Selected original native identity for flexiv_msgs/action/Move_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/Move_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionMove_Goal :: proc() -> Ros2Flexiv_msgsActionMove_Goal {
 v: Ros2Flexiv_msgsActionMove_Goal
 v.field_width = 0
 v.field_velocity = 0
 v.field_max_force = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/Move_Goal.
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
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionMove_Goal :: proc(v: ^Ros2Flexiv_msgsActionMove_Goal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_width) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_max_force) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/Move_Goal.
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
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionMove_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionMove_Goal,bool) {
 v:=init_Ros2Flexiv_msgsActionMove_Goal()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_width=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_velocity=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_max_force=f64(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/Move_Goal value.
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
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionMove_Goal :: proc(v: ^Ros2Flexiv_msgsActionMove_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Flexiv_msgsActionMove_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Flexiv_msgsActionMove_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/Move_Goal value.
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
// @see Ros2Flexiv_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionMove_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionMove_Goal,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Flexiv_msgsActionMove_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionMove_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionMove_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/Move_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Result :: struct {
 // @brief flexiv_msgs/action/Move_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief flexiv_msgs/action/Move_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of flexiv_msgs/action/Move_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of flexiv_msgs/action/Move_Result.
// @details Exact identity UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Result_Codec_Identity :: "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d"
// @brief Original ROS type name for flexiv_msgs/action/Move_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Result_Native_Type :: "flexiv_msgs/action/Move_Result"
// @brief Selected original native identity for flexiv_msgs/action/Move_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Result_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/Move_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionMove_Result :: proc() -> Ros2Flexiv_msgsActionMove_Result {
 v: Ros2Flexiv_msgsActionMove_Result
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/Move_Result.
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
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionMove_Result :: proc(v: ^Ros2Flexiv_msgsActionMove_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/Move_Result.
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
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionMove_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionMove_Result,bool) {
 v:=init_Ros2Flexiv_msgsActionMove_Result()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/Move_Result value.
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
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionMove_Result :: proc(v: ^Ros2Flexiv_msgsActionMove_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Flexiv_msgsActionMove_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Flexiv_msgsActionMove_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/Move_Result value.
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
// @see Ros2Flexiv_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionMove_Result :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsActionMove_Result,u32)
        {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Flexiv_msgsActionMove_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionMove_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionMove_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/action/Move_Feedback value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 17..17 bytes and
// is identified by UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Feedback :: struct {
 // @brief flexiv_msgs/action/Move_Feedback.current_width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_width: f64,
 // @brief flexiv_msgs/action/Move_Feedback.current_force: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_force: f64,
 // @brief flexiv_msgs/action/Move_Feedback.moving: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_moving: bool,
}
// @brief Maximum canonical extent of flexiv_msgs/action/Move_Feedback in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Feedback_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of flexiv_msgs/action/Move_Feedback.
// @details Exact identity UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Feedback_Codec_Identity :: "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38"
// @brief Original ROS type name for flexiv_msgs/action/Move_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Feedback_Native_Type :: "flexiv_msgs/action/Move_Feedback"
// @brief Selected original native identity for flexiv_msgs/action/Move_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsActionMove_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/action/Move_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsActionMove_Feedback :: proc() -> Ros2Flexiv_msgsActionMove_Feedback {
 v: Ros2Flexiv_msgsActionMove_Feedback
 v.field_current_width = 0
 v.field_current_force = 0
 v.field_moving = false
 return v
}
// @brief Append every canonical field of flexiv_msgs/action/Move_Feedback.
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
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsActionMove_Feedback :: proc(v: ^Ros2Flexiv_msgsActionMove_Feedback, w: ^Writer) -> bool {
 if !put_float64(w,v.field_current_width) { return false }
 if !put_float64(w,v.field_current_force) { return false }
 if !put_bool(w,v.field_moving) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/action/Move_Feedback.
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
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsActionMove_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionMove_Feedback,bool) {
 v:=init_Ros2Flexiv_msgsActionMove_Feedback()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_width=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_force=f64(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_moving=bool(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/action/Move_Feedback value.
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
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsActionMove_Feedback :: proc(v: ^Ros2Flexiv_msgsActionMove_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Flexiv_msgsActionMove_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Flexiv_msgsActionMove_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/action/Move_Feedback value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsActionMove_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsActionMove_Feedback,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Flexiv_msgsActionMove_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsActionMove_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsActionMove_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/Digital value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
// identified by UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgDigital :: struct {
 // @brief flexiv_msgs/msg/Digital.pin: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
 field_pin: u8,
 // @brief flexiv_msgs/msg/Digital.state: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
 field_state: bool,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/Digital in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgDigital_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of flexiv_msgs/msg/Digital.
// @details Exact identity UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgDigital_Codec_Identity :: "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf"
// @brief Original ROS type name for flexiv_msgs/msg/Digital.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgDigital_Native_Type :: "flexiv_msgs/msg/Digital"
// @brief Selected original native identity for flexiv_msgs/msg/Digital.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgDigital_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/Digital.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgDigital :: proc() -> Ros2Flexiv_msgsMsgDigital {
 v: Ros2Flexiv_msgsMsgDigital
 v.field_pin = 0
 v.field_state = false
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/Digital.
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
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgDigital :: proc(v: ^Ros2Flexiv_msgsMsgDigital, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pin),1) { return false }
 if !put_bool(w,v.field_state) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/Digital.
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
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgDigital :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgDigital,bool) {
 v:=init_Ros2Flexiv_msgsMsgDigital()
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
// @brief Encode one complete flexiv_msgs/msg/Digital value.
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
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgDigital :: proc(v: ^Ros2Flexiv_msgsMsgDigital, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros2Flexiv_msgsMsgDigital(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros2Flexiv_msgsMsgDigital(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/Digital value.
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
// @see Ros2Flexiv_msgsMsgDigital; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgDigital :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgDigital,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros2Flexiv_msgsMsgDigital{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgDigital(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgDigital{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/GPIOStates value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes and is
// identified by UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgGPIOStates :: struct {
 // @brief flexiv_msgs/msg/GPIOStates.states: flexiv_msgs/msg/Digital; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
 field_states: []Ros2Flexiv_msgsMsgDigital,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/GPIOStates in bytes.
// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgGPIOStates_Maximum_Wire_Bytes :: 68
// @brief Canonical codec identity of flexiv_msgs/msg/GPIOStates.
// @details Exact identity UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgGPIOStates_Codec_Identity :: "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14"
// @brief Original ROS type name for flexiv_msgs/msg/GPIOStates.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgGPIOStates_Native_Type :: "flexiv_msgs/msg/GPIOStates"
// @brief Selected original native identity for flexiv_msgs/msg/GPIOStates.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgGPIOStates_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/GPIOStates.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgGPIOStates :: proc() -> Ros2Flexiv_msgsMsgGPIOStates {
 v: Ros2Flexiv_msgsMsgGPIOStates
 v.field_states = nil
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/GPIOStates.
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
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgGPIOStates :: proc(v: ^Ros2Flexiv_msgsMsgGPIOStates, w: ^Writer) -> bool {
 if len(v.field_states)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_states)),4) { return false }
 for e in v.field_states {
 item:=e
 if !write_Ros2Flexiv_msgsMsgDigital(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/GPIOStates.
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
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgGPIOStates :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgGPIOStates,bool) {
 v:=init_Ros2Flexiv_msgsMsgGPIOStates()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_states=make([]Ros2Flexiv_msgsMsgDigital,int(n),allocator)
 }
 for &e in v.field_states {
 {
 b,ok:=read_Ros2Flexiv_msgsMsgDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/GPIOStates value.
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
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgGPIOStates :: proc(v: ^Ros2Flexiv_msgsMsgGPIOStates, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=68}
 if !write_Ros2Flexiv_msgsMsgGPIOStates(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=68}
 if !write_Ros2Flexiv_msgsMsgGPIOStates(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/GPIOStates value.
// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgGPIOStates; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgGPIOStates :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgGPIOStates,u32) {
 if len(bytes)<4 || len(bytes)>68 { return Ros2Flexiv_msgsMsgGPIOStates{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgGPIOStates(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgGPIOStates{},reader.code }
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
// @brief Complete ROS 2 flexiv_msgs/msg/JointImpedance value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 29..9373 bytes and
// is identified by UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointImpedance :: struct {
 // @brief flexiv_msgs/msg/JointImpedance.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief flexiv_msgs/msg/JointImpedance.joint_names: string; 0..32 elements; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief flexiv_msgs/msg/JointImpedance.k_q: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
 field_k_q: []f64,
 // @brief flexiv_msgs/msg/JointImpedance.z_q: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
 field_z_q: []f64,
 // @brief flexiv_msgs/msg/JointImpedance.k_q_nom: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
 field_k_q_nom: []f64,
 // @brief flexiv_msgs/msg/JointImpedance.in_effect: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
 field_in_effect: bool,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/JointImpedance in bytes.
// @details The inclusive bound is 9373 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointImpedance_Maximum_Wire_Bytes :: 9373
// @brief Canonical codec identity of flexiv_msgs/msg/JointImpedance.
// @details Exact identity UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointImpedance_Codec_Identity :: "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a"
// @brief Original ROS type name for flexiv_msgs/msg/JointImpedance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointImpedance_Native_Type :: "flexiv_msgs/msg/JointImpedance"
// @brief Selected original native identity for flexiv_msgs/msg/JointImpedance.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointImpedance_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/JointImpedance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgJointImpedance :: proc() -> Ros2Flexiv_msgsMsgJointImpedance {
 v: Ros2Flexiv_msgsMsgJointImpedance
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_names = nil
 v.field_k_q = nil
 v.field_z_q = nil
 v.field_k_q_nom = nil
 v.field_in_effect = false
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/JointImpedance.
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
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgJointImpedance :: proc(v: ^Ros2Flexiv_msgsMsgJointImpedance, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_k_q)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_k_q)),4) { return false }
 for e in v.field_k_q {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_z_q)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_z_q)),4) { return false }
 for e in v.field_z_q {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_k_q_nom)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_k_q_nom)),4) { return false }
 for e in v.field_k_q_nom {
 if !put_float64(w,e) { return false }
 }
 if !put_bool(w,v.field_in_effect) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/JointImpedance.
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
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgJointImpedance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgJointImpedance,bool) {
 v:=init_Ros2Flexiv_msgsMsgJointImpedance()
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
 if n>32 { r.code=22; return v,false }
 v.field_k_q=make([]f64,int(n),allocator)
 }
 for &e in v.field_k_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_z_q=make([]f64,int(n),allocator)
 }
 for &e in v.field_z_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_k_q_nom=make([]f64,int(n),allocator)
 }
 for &e in v.field_k_q_nom {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_in_effect=bool(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/JointImpedance value.
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
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgJointImpedance :: proc(v: ^Ros2Flexiv_msgsMsgJointImpedance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9373}
 if !write_Ros2Flexiv_msgsMsgJointImpedance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9373}
 if !write_Ros2Flexiv_msgsMsgJointImpedance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/JointImpedance value.
// @details Require the complete 29..9373-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgJointImpedance; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgJointImpedance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgJointImpedance,u32)
        {
 if len(bytes)<29 || len(bytes)>9373 { return Ros2Flexiv_msgsMsgJointImpedance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgJointImpedance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgJointImpedance{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/JointInertiaScale value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 21..8853 bytes and
// is identified by UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointInertiaScale :: struct {
 // @brief flexiv_msgs/msg/JointInertiaScale.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief flexiv_msgs/msg/JointInertiaScale.joint_names: string; 0..32 elements; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief flexiv_msgs/msg/JointInertiaScale.inertia_scales: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
 field_inertia_scales: []f64,
 // @brief flexiv_msgs/msg/JointInertiaScale.in_effect: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
 field_in_effect: bool,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/JointInertiaScale in bytes.
// @details The inclusive bound is 8853 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointInertiaScale_Maximum_Wire_Bytes :: 8853
// @brief Canonical codec identity of flexiv_msgs/msg/JointInertiaScale.
// @details Exact identity UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointInertiaScale_Codec_Identity :: "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f"
// @brief Original ROS type name for flexiv_msgs/msg/JointInertiaScale.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointInertiaScale_Native_Type :: "flexiv_msgs/msg/JointInertiaScale"
// @brief Selected original native identity for flexiv_msgs/msg/JointInertiaScale.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointInertiaScale_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/JointInertiaScale.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgJointInertiaScale :: proc() -> Ros2Flexiv_msgsMsgJointInertiaScale {
 v: Ros2Flexiv_msgsMsgJointInertiaScale
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_names = nil
 v.field_inertia_scales = nil
 v.field_in_effect = false
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/JointInertiaScale.
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
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgJointInertiaScale :: proc(v: ^Ros2Flexiv_msgsMsgJointInertiaScale, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_inertia_scales)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_inertia_scales)),4) { return false }
 for e in v.field_inertia_scales {
 if !put_float64(w,e) { return false }
 }
 if !put_bool(w,v.field_in_effect) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/JointInertiaScale.
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
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgJointInertiaScale :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsMsgJointInertiaScale,bool) {
 v:=init_Ros2Flexiv_msgsMsgJointInertiaScale()
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
 if n>32 { r.code=22; return v,false }
 v.field_inertia_scales=make([]f64,int(n),allocator)
 }
 for &e in v.field_inertia_scales {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_in_effect=bool(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/JointInertiaScale value.
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
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgJointInertiaScale :: proc(v: ^Ros2Flexiv_msgsMsgJointInertiaScale, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8853}
 if !write_Ros2Flexiv_msgsMsgJointInertiaScale(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8853}
 if !write_Ros2Flexiv_msgsMsgJointInertiaScale(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/JointInertiaScale value.
// @details Require the complete 21..8853-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgJointInertiaScale; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgJointInertiaScale :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsMsgJointInertiaScale,u32) {
 if len(bytes)<21 || len(bytes)>8853 { return Ros2Flexiv_msgsMsgJointInertiaScale{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgJointInertiaScale(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgJointInertiaScale{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/JointPosVel value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..520 bytes and
// is identified by UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel :: struct {
 // @brief flexiv_msgs/msg/JointPosVel.positions: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
 field_positions: []f64,
 // @brief flexiv_msgs/msg/JointPosVel.velocities: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: []f64,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/JointPosVel in bytes.
// @details The inclusive bound is 520 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Maximum_Wire_Bytes :: 520
// @brief Canonical codec identity of flexiv_msgs/msg/JointPosVel.
// @details Exact identity UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Codec_Identity :: "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca"
// @brief Original ROS type name for flexiv_msgs/msg/JointPosVel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Native_Type :: "flexiv_msgs/msg/JointPosVel"
// @brief Selected original native identity for flexiv_msgs/msg/JointPosVel.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgJointPosVel_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/JointPosVel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgJointPosVel :: proc() -> Ros2Flexiv_msgsMsgJointPosVel {
 v: Ros2Flexiv_msgsMsgJointPosVel
 v.field_positions = nil
 v.field_velocities = nil
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/JointPosVel.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgJointPosVel :: proc(v: ^Ros2Flexiv_msgsMsgJointPosVel, w: ^Writer) -> bool {
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
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/JointPosVel.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgJointPosVel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgJointPosVel,bool) {
 v:=init_Ros2Flexiv_msgsMsgJointPosVel()
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
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/JointPosVel value.
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgJointPosVel :: proc(v: ^Ros2Flexiv_msgsMsgJointPosVel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=520}
 if !write_Ros2Flexiv_msgsMsgJointPosVel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=520}
 if !write_Ros2Flexiv_msgsMsgJointPosVel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/JointPosVel value.
// @details Require the complete 8..520-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgJointPosVel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgJointPosVel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgJointPosVel,u32) {
 if len(bytes)<8 || len(bytes)>520 { return Ros2Flexiv_msgsMsgJointPosVel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgJointPosVel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgJointPosVel{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/MaxContactTorque value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 25..9113 bytes and
// is identified by UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMaxContactTorque :: struct {
 // @brief flexiv_msgs/msg/MaxContactTorque.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief flexiv_msgs/msg/MaxContactTorque.joint_names: string; 0..32 elements; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief flexiv_msgs/msg/MaxContactTorque.max_contact_torques: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
 field_max_contact_torques: []f64,
 // @brief flexiv_msgs/msg/MaxContactTorque.tau_max: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
 field_tau_max: []f64,
 // @brief flexiv_msgs/msg/MaxContactTorque.in_effect: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
 field_in_effect: bool,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/MaxContactTorque in bytes.
// @details The inclusive bound is 9113 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMaxContactTorque_Maximum_Wire_Bytes :: 9113
// @brief Canonical codec identity of flexiv_msgs/msg/MaxContactTorque.
// @details Exact identity UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMaxContactTorque_Codec_Identity :: "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da"
// @brief Original ROS type name for flexiv_msgs/msg/MaxContactTorque.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMaxContactTorque_Native_Type :: "flexiv_msgs/msg/MaxContactTorque"
// @brief Selected original native identity for flexiv_msgs/msg/MaxContactTorque.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMaxContactTorque_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/MaxContactTorque.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgMaxContactTorque :: proc() -> Ros2Flexiv_msgsMsgMaxContactTorque {
 v: Ros2Flexiv_msgsMsgMaxContactTorque
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_joint_names = nil
 v.field_max_contact_torques = nil
 v.field_tau_max = nil
 v.field_in_effect = false
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/MaxContactTorque.
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
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgMaxContactTorque :: proc(v: ^Ros2Flexiv_msgsMsgMaxContactTorque, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_max_contact_torques)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_max_contact_torques)),4) { return false }
 for e in v.field_max_contact_torques {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tau_max)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tau_max)),4) { return false }
 for e in v.field_tau_max {
 if !put_float64(w,e) { return false }
 }
 if !put_bool(w,v.field_in_effect) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/MaxContactTorque.
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
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgMaxContactTorque :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsMsgMaxContactTorque,bool) {
 v:=init_Ros2Flexiv_msgsMsgMaxContactTorque()
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
 if n>32 { r.code=22; return v,false }
 v.field_max_contact_torques=make([]f64,int(n),allocator)
 }
 for &e in v.field_max_contact_torques {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_tau_max=make([]f64,int(n),allocator)
 }
 for &e in v.field_tau_max {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_in_effect=bool(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/MaxContactTorque value.
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
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgMaxContactTorque :: proc(v: ^Ros2Flexiv_msgsMsgMaxContactTorque, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9113}
 if !write_Ros2Flexiv_msgsMsgMaxContactTorque(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9113}
 if !write_Ros2Flexiv_msgsMsgMaxContactTorque(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/MaxContactTorque value.
// @details Require the complete 25..9113-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgMaxContactTorque; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgMaxContactTorque :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsMsgMaxContactTorque,u32) {
 if len(bytes)<25 || len(bytes)>9113 { return Ros2Flexiv_msgsMsgMaxContactTorque{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgMaxContactTorque(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgMaxContactTorque{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/Mode value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode :: struct {
 // @brief flexiv_msgs/msg/Mode.mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
 field_mode: i8,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/Mode in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of flexiv_msgs/msg/Mode.
// @details Exact identity UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Codec_Identity :: "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87"
// @brief Original ROS type name for flexiv_msgs/msg/Mode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Native_Type :: "flexiv_msgs/msg/Mode"
// @brief Selected original native identity for flexiv_msgs/msg/Mode.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_Native_Identity :: ""
// @brief flexiv_msgs/msg/Mode.MODE_UNKNOWN: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_UNKNOWN :: i8(0)
// @brief flexiv_msgs/msg/Mode.MODE_IDLE: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_IDLE :: i8(1)
// @brief flexiv_msgs/msg/Mode.MODE_RT_JOINT_TORQUE: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE :: i8(2)
// @brief flexiv_msgs/msg/Mode.MODE_RT_JOINT_IMPEDANCE: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_IMPEDANCE :: i8(3)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_JOINT_IMPEDANCE: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_IMPEDANCE :: i8(4)
// @brief flexiv_msgs/msg/Mode.MODE_RT_JOINT_POSITION: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION :: i8(5)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_JOINT_POSITION: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION :: i8(6)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_PLAN_EXECUTION: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION :: i8(7)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_PRIMITIVE_EXECUTION: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION :: i8(8)
// @brief flexiv_msgs/msg/Mode.MODE_RT_CARTESIAN_MOTION_FORCE: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE :: i8(9)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_CARTESIAN_MOTION_FORCE: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE :: i8(10)
// @brief flexiv_msgs/msg/Mode.MODE_NRT_SUPER_PRIMITIVE: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgMode_MODE_NRT_SUPER_PRIMITIVE :: i8(11)
// @brief Construct the declared defaults of flexiv_msgs/msg/Mode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgMode :: proc() -> Ros2Flexiv_msgsMsgMode {
 v: Ros2Flexiv_msgsMsgMode
 v.field_mode = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/Mode.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgMode :: proc(v: ^Ros2Flexiv_msgsMsgMode, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/Mode.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgMode,bool) {
 v:=init_Ros2Flexiv_msgsMsgMode()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=i8(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/Mode value.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgMode :: proc(v: ^Ros2Flexiv_msgsMsgMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Flexiv_msgsMsgMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Flexiv_msgsMsgMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/Mode value.
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
// @see Ros2Flexiv_msgsMsgMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgMode,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Flexiv_msgsMsgMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgMode{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/RobotEvent value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 29..1053 bytes and
// is identified by UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent :: struct {
 // @brief flexiv_msgs/msg/RobotEvent.level: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_level: u8,
 // @brief flexiv_msgs/msg/RobotEvent.id: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_id: i32,
 // @brief flexiv_msgs/msg/RobotEvent.description: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_description: string,
 // @brief flexiv_msgs/msg/RobotEvent.consequences: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_consequences: string,
 // @brief flexiv_msgs/msg/RobotEvent.probable_causes: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_probable_causes: string,
 // @brief flexiv_msgs/msg/RobotEvent.recommended_actions: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_recommended_actions: string,
 // @brief flexiv_msgs/msg/RobotEvent.timestamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
 field_timestamp: Ros2Builtin_interfacesMsgTime,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/RobotEvent in bytes.
// @details The inclusive bound is 1053 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_Maximum_Wire_Bytes :: 1053
// @brief Canonical codec identity of flexiv_msgs/msg/RobotEvent.
// @details Exact identity UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_Codec_Identity :: "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17"
// @brief Original ROS type name for flexiv_msgs/msg/RobotEvent.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_Native_Type :: "flexiv_msgs/msg/RobotEvent"
// @brief Selected original native identity for flexiv_msgs/msg/RobotEvent.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_Native_Identity :: ""
// @brief flexiv_msgs/msg/RobotEvent.LEVEL_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_LEVEL_UNKNOWN :: u8(0)
// @brief flexiv_msgs/msg/RobotEvent.LEVEL_INFO: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_LEVEL_INFO :: u8(1)
// @brief flexiv_msgs/msg/RobotEvent.LEVEL_WARNING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_LEVEL_WARNING :: u8(2)
// @brief flexiv_msgs/msg/RobotEvent.LEVEL_ERROR: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_LEVEL_ERROR :: u8(3)
// @brief flexiv_msgs/msg/RobotEvent.LEVEL_CRITICAL: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotEvent_LEVEL_CRITICAL :: u8(4)
// @brief Construct the declared defaults of flexiv_msgs/msg/RobotEvent.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgRobotEvent :: proc() -> Ros2Flexiv_msgsMsgRobotEvent {
 v: Ros2Flexiv_msgsMsgRobotEvent
 v.field_level = 0
 v.field_id = 0
 v.field_description = ""
 v.field_consequences = ""
 v.field_probable_causes = ""
 v.field_recommended_actions = ""
 v.field_timestamp = Ros2Builtin_interfacesMsgTime{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/RobotEvent.
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
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgRobotEvent :: proc(v: ^Ros2Flexiv_msgsMsgRobotEvent, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_level),1) { return false }
 if !put_integer(w,u64(v.field_id),4) { return false }
 if !put_string(w,v.field_description,256) { return false }
 if !put_string(w,v.field_consequences,256) { return false }
 if !put_string(w,v.field_probable_causes,256) { return false }
 if !put_string(w,v.field_recommended_actions,256) { return false }
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_timestamp,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/RobotEvent.
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
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgRobotEvent :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRobotEvent,bool) {
 v:=init_Ros2Flexiv_msgsMsgRobotEvent()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_level=u8(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_id=i32(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_description=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_consequences=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_probable_causes=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_recommended_actions=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_timestamp=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/RobotEvent value.
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
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgRobotEvent :: proc(v: ^Ros2Flexiv_msgsMsgRobotEvent, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1053}
 if !write_Ros2Flexiv_msgsMsgRobotEvent(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1053}
 if !write_Ros2Flexiv_msgsMsgRobotEvent(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/RobotEvent value.
// @details Require the complete 29..1053-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgRobotEvent; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgRobotEvent :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRobotEvent,u32) {
 if len(bytes)<29 || len(bytes)>1053 { return Ros2Flexiv_msgsMsgRobotEvent{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgRobotEvent(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgRobotEvent{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/OperationalStatus value.
// @details All 14 declared fields are retained in source order. The canonical representation occupies 34..17650 bytes
// and is identified by UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus :: struct {
 // @brief flexiv_msgs/msg/OperationalStatus.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief flexiv_msgs/msg/OperationalStatus.operational_status: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_operational_status: u8,
 // @brief flexiv_msgs/msg/OperationalStatus.operational_status_name: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_operational_status_name: string,
 // @brief flexiv_msgs/msg/OperationalStatus.driver_state: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_driver_state: u8,
 // @brief flexiv_msgs/msg/OperationalStatus.connected: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_connected: bool,
 // @brief flexiv_msgs/msg/OperationalStatus.fault: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_fault: bool,
 // @brief flexiv_msgs/msg/OperationalStatus.operational: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_operational: bool,
 // @brief flexiv_msgs/msg/OperationalStatus.estop_released: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_estop_released: bool,
 // @brief flexiv_msgs/msg/OperationalStatus.reduced: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_reduced: bool,
 // @brief flexiv_msgs/msg/OperationalStatus.recovery_state: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_recovery_state: bool,
 // @brief flexiv_msgs/msg/OperationalStatus.control_mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_control_mode: i8,
 // @brief flexiv_msgs/msg/OperationalStatus.recovery_policy: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_recovery_policy: u8,
 // @brief flexiv_msgs/msg/OperationalStatus.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief flexiv_msgs/msg/OperationalStatus.recent_events: flexiv_msgs/msg/RobotEvent; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
 field_recent_events: []Ros2Flexiv_msgsMsgRobotEvent,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/OperationalStatus in bytes.
// @details The inclusive bound is 17650 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_Maximum_Wire_Bytes :: 17650
// @brief Canonical codec identity of flexiv_msgs/msg/OperationalStatus.
// @details Exact identity UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_Codec_Identity :: "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62"
// @brief Original ROS type name for flexiv_msgs/msg/OperationalStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_Native_Type :: "flexiv_msgs/msg/OperationalStatus"
// @brief Selected original native identity for flexiv_msgs/msg/OperationalStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_Native_Identity :: ""
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_UNKNOWN :: u8(0)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_READY: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_READY :: u8(1)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_BOOTING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_BOOTING :: u8(2)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_ESTOP_NOT_RELEASED: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_ESTOP_NOT_RELEASED :: u8(3)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_NOT_SERVO_ON: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_NOT_SERVO_ON :: u8(4)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_RELEASING_BRAKE: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_RELEASING_BRAKE :: u8(5)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_MINOR_FAULT: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_MINOR_FAULT :: u8(6)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_CRITICAL_FAULT: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_CRITICAL_FAULT :: u8(7)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_IN_REDUCED_STATE: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_REDUCED_STATE :: u8(8)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_IN_RECOVERY_STATE: original uint8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_RECOVERY_STATE :: u8(9)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_IN_MANUAL_MODE: original uint8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_MANUAL_MODE :: u8(10)
// @brief flexiv_msgs/msg/OperationalStatus.STATUS_IN_AUTO_MODE: original uint8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_AUTO_MODE :: u8(11)
// @brief flexiv_msgs/msg/OperationalStatus.DRIVER_UNINITIALIZED: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_UNINITIALIZED :: u8(0)
// @brief flexiv_msgs/msg/OperationalStatus.DRIVER_READY: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_READY :: u8(1)
// @brief flexiv_msgs/msg/OperationalStatus.DRIVER_FAULT: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_FAULT :: u8(2)
// @brief flexiv_msgs/msg/OperationalStatus.DRIVER_RECOVERING: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_RECOVERING :: u8(3)
// @brief flexiv_msgs/msg/OperationalStatus.DRIVER_LOCKOUT: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_LOCKOUT :: u8(4)
// @brief flexiv_msgs/msg/OperationalStatus.DRIVER_DISCONNECTED: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_DISCONNECTED :: u8(5)
// @brief Construct the declared defaults of flexiv_msgs/msg/OperationalStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgOperationalStatus :: proc() -> Ros2Flexiv_msgsMsgOperationalStatus {
 v: Ros2Flexiv_msgsMsgOperationalStatus
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_operational_status = 0
 v.field_operational_status_name = ""
 v.field_driver_state = 0
 v.field_connected = false
 v.field_fault = false
 v.field_operational = false
 v.field_estop_released = false
 v.field_reduced = false
 v.field_recovery_state = false
 v.field_control_mode = 0
 v.field_recovery_policy = 0
 v.field_message = ""
 v.field_recent_events = nil
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/OperationalStatus.
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
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgOperationalStatus :: proc(v: ^Ros2Flexiv_msgsMsgOperationalStatus, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_operational_status),1) { return false }
 if !put_string(w,v.field_operational_status_name,256) { return false }
 if !put_integer(w,u64(v.field_driver_state),1) { return false }
 if !put_bool(w,v.field_connected) { return false }
 if !put_bool(w,v.field_fault) { return false }
 if !put_bool(w,v.field_operational) { return false }
 if !put_bool(w,v.field_estop_released) { return false }
 if !put_bool(w,v.field_reduced) { return false }
 if !put_bool(w,v.field_recovery_state) { return false }
 if !put_integer(w,u64(v.field_control_mode),1) { return false }
 if !put_integer(w,u64(v.field_recovery_policy),1) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if len(v.field_recent_events)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_recent_events)),4) { return false }
 for e in v.field_recent_events {
 item:=e
 if !write_Ros2Flexiv_msgsMsgRobotEvent(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/OperationalStatus.
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
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgOperationalStatus :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsMsgOperationalStatus,bool) {
 v:=init_Ros2Flexiv_msgsMsgOperationalStatus()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_operational_status=u8(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_operational_status_name=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_driver_state=u8(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_connected=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_fault=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_operational=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_estop_released=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_reduced=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_recovery_state=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_control_mode=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_recovery_policy=u8(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_recent_events=make([]Ros2Flexiv_msgsMsgRobotEvent,int(n),allocator)
 }
 for &e in v.field_recent_events {
 {
 b,ok:=read_Ros2Flexiv_msgsMsgRobotEvent(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/OperationalStatus value.
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
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgOperationalStatus :: proc(v: ^Ros2Flexiv_msgsMsgOperationalStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17650}
 if !write_Ros2Flexiv_msgsMsgOperationalStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17650}
 if !write_Ros2Flexiv_msgsMsgOperationalStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/OperationalStatus value.
// @details Require the complete 34..17650-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgOperationalStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgOperationalStatus :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsMsgOperationalStatus,u32) {
 if len(bytes)<34 || len(bytes)>17650 { return Ros2Flexiv_msgsMsgOperationalStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgOperationalStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgOperationalStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/RecoveryPolicy value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy :: struct {
 // @brief flexiv_msgs/msg/RecoveryPolicy.recovery_policy: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
 field_recovery_policy: u8,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/RecoveryPolicy in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of flexiv_msgs/msg/RecoveryPolicy.
// @details Exact identity UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_Codec_Identity :: "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf"
// @brief Original ROS type name for flexiv_msgs/msg/RecoveryPolicy.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_Native_Type :: "flexiv_msgs/msg/RecoveryPolicy"
// @brief Selected original native identity for flexiv_msgs/msg/RecoveryPolicy.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_Native_Identity :: ""
// @brief flexiv_msgs/msg/RecoveryPolicy.NONE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_NONE :: u8(0)
// @brief flexiv_msgs/msg/RecoveryPolicy.TRANSIENT: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_TRANSIENT :: u8(1)
// @brief flexiv_msgs/msg/RecoveryPolicy.AUTO_RECOVERABLE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_AUTO_RECOVERABLE :: u8(2)
// @brief flexiv_msgs/msg/RecoveryPolicy.WAIT_OPERATOR: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_WAIT_OPERATOR :: u8(3)
// @brief flexiv_msgs/msg/RecoveryPolicy.SAFETY_LOCKOUT: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_SAFETY_LOCKOUT :: u8(4)
// @brief flexiv_msgs/msg/RecoveryPolicy.CONNECTION_LOST: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRecoveryPolicy_CONNECTION_LOST :: u8(5)
// @brief Construct the declared defaults of flexiv_msgs/msg/RecoveryPolicy.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgRecoveryPolicy :: proc() -> Ros2Flexiv_msgsMsgRecoveryPolicy {
 v: Ros2Flexiv_msgsMsgRecoveryPolicy
 v.field_recovery_policy = 0
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/RecoveryPolicy.
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
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgRecoveryPolicy :: proc(v: ^Ros2Flexiv_msgsMsgRecoveryPolicy, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_recovery_policy),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/RecoveryPolicy.
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
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgRecoveryPolicy :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRecoveryPolicy,bool) {
 v:=init_Ros2Flexiv_msgsMsgRecoveryPolicy()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_recovery_policy=u8(b)
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/RecoveryPolicy value.
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
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgRecoveryPolicy :: proc(v: ^Ros2Flexiv_msgsMsgRecoveryPolicy, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Flexiv_msgsMsgRecoveryPolicy(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Flexiv_msgsMsgRecoveryPolicy(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/RecoveryPolicy value.
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
// @see Ros2Flexiv_msgsMsgRecoveryPolicy; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgRecoveryPolicy :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRecoveryPolicy,u32)
        {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Flexiv_msgsMsgRecoveryPolicy{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgRecoveryPolicy(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgRecoveryPolicy{},reader.code }
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
// @brief Complete ROS 2 geometry_msgs/msg/PoseStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 68..324 bytes and
// is identified by UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped :: struct {
 // @brief geometry_msgs/msg/PoseStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/PoseStamped.pose: geometry_msgs/msg/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
 field_pose: Ros2Geometry_msgsMsgPose,
}
// @brief Maximum canonical extent of geometry_msgs/msg/PoseStamped in bytes.
// @details The inclusive bound is 324 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped_Maximum_Wire_Bytes :: 324
// @brief Canonical codec identity of geometry_msgs/msg/PoseStamped.
// @details Exact identity UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped_Codec_Identity :: "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad"
// @brief Original ROS type name for geometry_msgs/msg/PoseStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped_Native_Type :: "geometry_msgs/msg/PoseStamped"
// @brief Selected original native identity for geometry_msgs/msg/PoseStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/PoseStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgPoseStamped :: proc() -> Ros2Geometry_msgsMsgPoseStamped {
 v: Ros2Geometry_msgsMsgPoseStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_pose = Ros2Geometry_msgsMsgPose{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/PoseStamped.
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
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgPoseStamped :: proc(v: ^Ros2Geometry_msgsMsgPoseStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgPose(&v.field_pose,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/PoseStamped.
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
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgPoseStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoseStamped,bool) {
 v:=init_Ros2Geometry_msgsMsgPoseStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPose(r,allocator); if !ok { return v,false }
 v.field_pose=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/PoseStamped value.
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
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgPoseStamped :: proc(v: ^Ros2Geometry_msgsMsgPoseStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=324}
 if !write_Ros2Geometry_msgsMsgPoseStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=324}
 if !write_Ros2Geometry_msgsMsgPoseStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/PoseStamped value.
// @details Require the complete 68..324-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgPoseStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgPoseStamped,u32) {
 if len(bytes)<68 || len(bytes)>324 { return Ros2Geometry_msgsMsgPoseStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPoseStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPoseStamped{},reader.code }
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
// @brief Complete ROS 2 geometry_msgs/msg/TwistStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..316 bytes and
// is identified by UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped :: struct {
 // @brief geometry_msgs/msg/TwistStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/TwistStamped.twist: geometry_msgs/msg/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
 field_twist: Ros2Geometry_msgsMsgTwist,
}
// @brief Maximum canonical extent of geometry_msgs/msg/TwistStamped in bytes.
// @details The inclusive bound is 316 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped_Maximum_Wire_Bytes :: 316
// @brief Canonical codec identity of geometry_msgs/msg/TwistStamped.
// @details Exact identity UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped_Codec_Identity :: "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308"
// @brief Original ROS type name for geometry_msgs/msg/TwistStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped_Native_Type :: "geometry_msgs/msg/TwistStamped"
// @brief Selected original native identity for geometry_msgs/msg/TwistStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/TwistStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
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
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgTwistStamped :: proc(v: ^Ros2Geometry_msgsMsgTwistStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwist(&v.field_twist,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/TwistStamped.
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
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
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
// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
// no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgTwistStamped :: proc(v: ^Ros2Geometry_msgsMsgTwistStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=316}
 if !write_Ros2Geometry_msgsMsgTwistStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=316}
 if !write_Ros2Geometry_msgsMsgTwistStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/TwistStamped value.
// @details Require the complete 60..316-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgTwistStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwistStamped,u32)
        {
 if len(bytes)<60 || len(bytes)>316 { return Ros2Geometry_msgsMsgTwistStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTwistStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTwistStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Wrench value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench :: struct {
 // @brief geometry_msgs/msg/Wrench.force: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
 field_force: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Wrench.torque: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
 field_torque: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Wrench in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/msg/Wrench.
// @details Exact identity UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Codec_Identity :: "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
// @brief Original ROS type name for geometry_msgs/msg/Wrench.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Native_Type :: "geometry_msgs/msg/Wrench"
// @brief Selected original native identity for geometry_msgs/msg/Wrench.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrench_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Wrench.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgWrench :: proc() -> Ros2Geometry_msgsMsgWrench {
 v: Ros2Geometry_msgsMsgWrench
 v.field_force = Ros2Geometry_msgsMsgVector3{}
 v.field_torque = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Wrench.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgWrench :: proc(v: ^Ros2Geometry_msgsMsgWrench, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_force,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_torque,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Wrench.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgWrench :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgWrench,bool) {
 v:=init_Ros2Geometry_msgsMsgWrench()
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_force=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_torque=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Wrench value.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgWrench :: proc(v: ^Ros2Geometry_msgsMsgWrench, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Geometry_msgsMsgWrench(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Geometry_msgsMsgWrench(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Wrench value.
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
// @see Ros2Geometry_msgsMsgWrench; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgWrench :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgWrench,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Geometry_msgsMsgWrench{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgWrench(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgWrench{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/WrenchStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..316 bytes and
// is identified by UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped :: struct {
 // @brief geometry_msgs/msg/WrenchStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/WrenchStamped.wrench: geometry_msgs/msg/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
 field_wrench: Ros2Geometry_msgsMsgWrench,
}
// @brief Maximum canonical extent of geometry_msgs/msg/WrenchStamped in bytes.
// @details The inclusive bound is 316 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped_Maximum_Wire_Bytes :: 316
// @brief Canonical codec identity of geometry_msgs/msg/WrenchStamped.
// @details Exact identity UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped_Codec_Identity :: "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177"
// @brief Original ROS type name for geometry_msgs/msg/WrenchStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped_Native_Type :: "geometry_msgs/msg/WrenchStamped"
// @brief Selected original native identity for geometry_msgs/msg/WrenchStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/WrenchStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgWrenchStamped :: proc() -> Ros2Geometry_msgsMsgWrenchStamped {
 v: Ros2Geometry_msgsMsgWrenchStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_wrench = Ros2Geometry_msgsMsgWrench{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/WrenchStamped.
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
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgWrenchStamped :: proc(v: ^Ros2Geometry_msgsMsgWrenchStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrench(&v.field_wrench,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/WrenchStamped.
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
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgWrenchStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgWrenchStamped,bool)
        {
 v:=init_Ros2Geometry_msgsMsgWrenchStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrench(r,allocator); if !ok { return v,false }
 v.field_wrench=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/WrenchStamped value.
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
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgWrenchStamped :: proc(v: ^Ros2Geometry_msgsMsgWrenchStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=316}
 if !write_Ros2Geometry_msgsMsgWrenchStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=316}
 if !write_Ros2Geometry_msgsMsgWrenchStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/WrenchStamped value.
// @details Require the complete 60..316-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgWrenchStamped :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Geometry_msgsMsgWrenchStamped,u32) {
 if len(bytes)<60 || len(bytes)>316 { return Ros2Geometry_msgsMsgWrenchStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgWrenchStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/msg/RobotStates value.
// @details All 19 declared fields are retained in source order. The canonical representation occupies 552..5160 bytes
// and is identified by UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates :: struct {
 // @brief flexiv_msgs/msg/RobotStates.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief flexiv_msgs/msg/RobotStates.robot_timestamp: builtin_interfaces/msg/Time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_robot_timestamp: Ros2Builtin_interfacesMsgTime,
 // @brief flexiv_msgs/msg/RobotStates.q: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_q: []f64,
 // @brief flexiv_msgs/msg/RobotStates.theta: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_theta: []f64,
 // @brief flexiv_msgs/msg/RobotStates.dq: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_dq: []f64,
 // @brief flexiv_msgs/msg/RobotStates.dtheta: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_dtheta: []f64,
 // @brief flexiv_msgs/msg/RobotStates.tau: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau: []f64,
 // @brief flexiv_msgs/msg/RobotStates.tau_dot: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_dot: []f64,
 // @brief flexiv_msgs/msg/RobotStates.tau_ext: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_ext: []f64,
 // @brief flexiv_msgs/msg/RobotStates.tau_interact: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tau_interact: []f64,
 // @brief flexiv_msgs/msg/RobotStates.temperature: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_temperature: []f64,
 // @brief flexiv_msgs/msg/RobotStates.tcp_pose: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_pose: Ros2Geometry_msgsMsgPoseStamped,
 // @brief flexiv_msgs/msg/RobotStates.tcp_twist: geometry_msgs/msg/TwistStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_twist: Ros2Geometry_msgsMsgTwistStamped,
 // @brief flexiv_msgs/msg/RobotStates.flange_pose: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_flange_pose: Ros2Geometry_msgsMsgPoseStamped,
 // @brief flexiv_msgs/msg/RobotStates.raw_ft_sensor: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_raw_ft_sensor: Ros2Geometry_msgsMsgWrenchStamped,
 // @brief flexiv_msgs/msg/RobotStates.tcp_wrench_local: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped,
 // @brief flexiv_msgs/msg/RobotStates.tcp_wrench: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped,
 // @brief flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_raw_tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped,
 // @brief flexiv_msgs/msg/RobotStates.raw_tcp_wrench: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
 field_raw_tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped,
}
// @brief Maximum canonical extent of flexiv_msgs/msg/RobotStates in bytes.
// @details The inclusive bound is 5160 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Maximum_Wire_Bytes :: 5160
// @brief Canonical codec identity of flexiv_msgs/msg/RobotStates.
// @details Exact identity UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Codec_Identity :: "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a"
// @brief Original ROS type name for flexiv_msgs/msg/RobotStates.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Native_Type :: "flexiv_msgs/msg/RobotStates"
// @brief Selected original native identity for flexiv_msgs/msg/RobotStates.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsMsgRobotStates_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/msg/RobotStates.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsMsgRobotStates :: proc() -> Ros2Flexiv_msgsMsgRobotStates {
 v: Ros2Flexiv_msgsMsgRobotStates
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_robot_timestamp = Ros2Builtin_interfacesMsgTime{}
 v.field_q = nil
 v.field_theta = nil
 v.field_dq = nil
 v.field_dtheta = nil
 v.field_tau = nil
 v.field_tau_dot = nil
 v.field_tau_ext = nil
 v.field_tau_interact = nil
 v.field_temperature = nil
 v.field_tcp_pose = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_tcp_twist = Ros2Geometry_msgsMsgTwistStamped{}
 v.field_flange_pose = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_raw_ft_sensor = Ros2Geometry_msgsMsgWrenchStamped{}
 v.field_tcp_wrench_local = Ros2Geometry_msgsMsgWrenchStamped{}
 v.field_tcp_wrench = Ros2Geometry_msgsMsgWrenchStamped{}
 v.field_raw_tcp_wrench_local = Ros2Geometry_msgsMsgWrenchStamped{}
 v.field_raw_tcp_wrench = Ros2Geometry_msgsMsgWrenchStamped{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/msg/RobotStates.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsMsgRobotStates :: proc(v: ^Ros2Flexiv_msgsMsgRobotStates, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Builtin_interfacesMsgTime(&v.field_robot_timestamp,w) { return false }
 if len(v.field_q)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_q)),4) { return false }
 for e in v.field_q {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_theta)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_theta)),4) { return false }
 for e in v.field_theta {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_dq)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_dq)),4) { return false }
 for e in v.field_dq {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_dtheta)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_dtheta)),4) { return false }
 for e in v.field_dtheta {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tau)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tau)),4) { return false }
 for e in v.field_tau {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tau_dot)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tau_dot)),4) { return false }
 for e in v.field_tau_dot {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tau_ext)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tau_ext)),4) { return false }
 for e in v.field_tau_ext {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tau_interact)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tau_interact)),4) { return false }
 for e in v.field_tau_interact {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_temperature)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_temperature)),4) { return false }
 for e in v.field_temperature {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_tcp_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwistStamped(&v.field_tcp_twist,w) { return false }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_flange_pose,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_raw_ft_sensor,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_tcp_wrench_local,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_tcp_wrench,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_raw_tcp_wrench_local,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_raw_tcp_wrench,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/msg/RobotStates.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsMsgRobotStates :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRobotStates,bool) {
 v:=init_Ros2Flexiv_msgsMsgRobotStates()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Builtin_interfacesMsgTime(r,allocator); if !ok { return v,false }
 v.field_robot_timestamp=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_q=make([]f64,int(n),allocator)
 }
 for &e in v.field_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_theta=make([]f64,int(n),allocator)
 }
 for &e in v.field_theta {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_dq=make([]f64,int(n),allocator)
 }
 for &e in v.field_dq {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_dtheta=make([]f64,int(n),allocator)
 }
 for &e in v.field_dtheta {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_tau=make([]f64,int(n),allocator)
 }
 for &e in v.field_tau {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_tau_dot=make([]f64,int(n),allocator)
 }
 for &e in v.field_tau_dot {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_tau_ext=make([]f64,int(n),allocator)
 }
 for &e in v.field_tau_ext {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_tau_interact=make([]f64,int(n),allocator)
 }
 for &e in v.field_tau_interact {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_temperature=make([]f64,int(n),allocator)
 }
 for &e in v.field_temperature {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_tcp_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwistStamped(r,allocator); if !ok { return v,false }
 v.field_tcp_twist=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_flange_pose=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_raw_ft_sensor=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_tcp_wrench_local=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_tcp_wrench=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_raw_tcp_wrench_local=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_raw_tcp_wrench=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/msg/RobotStates value.
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsMsgRobotStates :: proc(v: ^Ros2Flexiv_msgsMsgRobotStates, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=5160}
 if !write_Ros2Flexiv_msgsMsgRobotStates(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=5160}
 if !write_Ros2Flexiv_msgsMsgRobotStates(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/msg/RobotStates value.
// @details Require the complete 552..5160-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsMsgRobotStates; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsMsgRobotStates :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Flexiv_msgsMsgRobotStates,u32) {
 if len(bytes)<552 || len(bytes)>5160 { return Ros2Flexiv_msgsMsgRobotStates{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsMsgRobotStates(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsMsgRobotStates{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/GetOperationalStatus_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Request :: struct {
}
// @brief Maximum canonical extent of flexiv_msgs/srv/GetOperationalStatus_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of flexiv_msgs/srv/GetOperationalStatus_Request.
// @details Exact identity UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Request_Codec_Identity ::
        "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12"
// @brief Original ROS type name for flexiv_msgs/srv/GetOperationalStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Request_Native_Type :: "flexiv_msgs/srv/GetOperationalStatus_Request"
// @brief Selected original native identity for flexiv_msgs/srv/GetOperationalStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/GetOperationalStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvGetOperationalStatus_Request :: proc() -> Ros2Flexiv_msgsSrvGetOperationalStatus_Request {
 v: Ros2Flexiv_msgsSrvGetOperationalStatus_Request
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/GetOperationalStatus_Request.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvGetOperationalStatus_Request :: proc(v: ^Ros2Flexiv_msgsSrvGetOperationalStatus_Request, w: ^Writer) -> bool
        {
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/GetOperationalStatus_Request.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvGetOperationalStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvGetOperationalStatus_Request,bool) {
 v:=init_Ros2Flexiv_msgsSrvGetOperationalStatus_Request()
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/GetOperationalStatus_Request value.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvGetOperationalStatus_Request :: proc(v: ^Ros2Flexiv_msgsSrvGetOperationalStatus_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/GetOperationalStatus_Request value.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvGetOperationalStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvGetOperationalStatus_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Flexiv_msgsSrvGetOperationalStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvGetOperationalStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/GetOperationalStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 34..17650 bytes
// and is identified by UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Response :: struct {
 // @brief flexiv_msgs/srv/GetOperationalStatus_Response.status: flexiv_msgs/msg/OperationalStatus.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: Ros2Flexiv_msgsMsgOperationalStatus,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/GetOperationalStatus_Response in bytes.
// @details The inclusive bound is 17650 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Response_Maximum_Wire_Bytes :: 17650
// @brief Canonical codec identity of flexiv_msgs/srv/GetOperationalStatus_Response.
// @details Exact identity UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Response_Codec_Identity ::
        "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da"
// @brief Original ROS type name for flexiv_msgs/srv/GetOperationalStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Response_Native_Type :: "flexiv_msgs/srv/GetOperationalStatus_Response"
// @brief Selected original native identity for flexiv_msgs/srv/GetOperationalStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvGetOperationalStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/GetOperationalStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvGetOperationalStatus_Response :: proc() -> Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
 v: Ros2Flexiv_msgsSrvGetOperationalStatus_Response
 v.field_status = Ros2Flexiv_msgsMsgOperationalStatus{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/GetOperationalStatus_Response.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvGetOperationalStatus_Response :: proc(v: ^Ros2Flexiv_msgsSrvGetOperationalStatus_Response, w: ^Writer) ->
        bool {
 if !write_Ros2Flexiv_msgsMsgOperationalStatus(&v.field_status,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/GetOperationalStatus_Response.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvGetOperationalStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvGetOperationalStatus_Response,bool) {
 v:=init_Ros2Flexiv_msgsSrvGetOperationalStatus_Response()
 {
 b,ok:=read_Ros2Flexiv_msgsMsgOperationalStatus(r,allocator); if !ok { return v,false }
 v.field_status=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/GetOperationalStatus_Response value.
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvGetOperationalStatus_Response :: proc(v: ^Ros2Flexiv_msgsSrvGetOperationalStatus_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17650}
 if !write_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17650}
 if !write_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/GetOperationalStatus_Response value.
// @details Require the complete 34..17650-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvGetOperationalStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvGetOperationalStatus_Response,u32) {
 if len(bytes)<34 || len(bytes)>17650 { return Ros2Flexiv_msgsSrvGetOperationalStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvGetOperationalStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/SetJointImpedance_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..8844 bytes and
// is identified by UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Request :: struct {
 // @brief flexiv_msgs/srv/SetJointImpedance_Request.joint_names: string; 0..32 elements; each string is 0..256 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief flexiv_msgs/srv/SetJointImpedance_Request.k_q: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
 field_k_q: []f64,
 // @brief flexiv_msgs/srv/SetJointImpedance_Request.z_q: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
 field_z_q: []f64,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/SetJointImpedance_Request in bytes.
// @details The inclusive bound is 8844 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Request_Maximum_Wire_Bytes :: 8844
// @brief Canonical codec identity of flexiv_msgs/srv/SetJointImpedance_Request.
// @details Exact identity UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Request_Codec_Identity ::
        "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08"
// @brief Original ROS type name for flexiv_msgs/srv/SetJointImpedance_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Request_Native_Type :: "flexiv_msgs/srv/SetJointImpedance_Request"
// @brief Selected original native identity for flexiv_msgs/srv/SetJointImpedance_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Request_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/SetJointImpedance_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvSetJointImpedance_Request :: proc() -> Ros2Flexiv_msgsSrvSetJointImpedance_Request {
 v: Ros2Flexiv_msgsSrvSetJointImpedance_Request
 v.field_joint_names = nil
 v.field_k_q = nil
 v.field_z_q = nil
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/SetJointImpedance_Request.
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvSetJointImpedance_Request :: proc(v: ^Ros2Flexiv_msgsSrvSetJointImpedance_Request, w: ^Writer) -> bool {
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_k_q)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_k_q)),4) { return false }
 for e in v.field_k_q {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_z_q)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_z_q)),4) { return false }
 for e in v.field_z_q {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/SetJointImpedance_Request.
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvSetJointImpedance_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointImpedance_Request,bool) {
 v:=init_Ros2Flexiv_msgsSrvSetJointImpedance_Request()
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
 if n>32 { r.code=22; return v,false }
 v.field_k_q=make([]f64,int(n),allocator)
 }
 for &e in v.field_k_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_z_q=make([]f64,int(n),allocator)
 }
 for &e in v.field_z_q {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/SetJointImpedance_Request value.
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvSetJointImpedance_Request :: proc(v: ^Ros2Flexiv_msgsSrvSetJointImpedance_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8844}
 if !write_Ros2Flexiv_msgsSrvSetJointImpedance_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8844}
 if !write_Ros2Flexiv_msgsSrvSetJointImpedance_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/SetJointImpedance_Request value.
// @details Require the complete 12..8844-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvSetJointImpedance_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointImpedance_Request,u32) {
 if len(bytes)<12 || len(bytes)>8844 { return Ros2Flexiv_msgsSrvSetJointImpedance_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvSetJointImpedance_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvSetJointImpedance_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/SetJointImpedance_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 34..9634 bytes and
// is identified by UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Response :: struct {
 // @brief flexiv_msgs/srv/SetJointImpedance_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief flexiv_msgs/srv/SetJointImpedance_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief flexiv_msgs/srv/SetJointImpedance_Response.setting: flexiv_msgs/msg/JointImpedance.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
 field_setting: Ros2Flexiv_msgsMsgJointImpedance,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/SetJointImpedance_Response in bytes.
// @details The inclusive bound is 9634 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Response_Maximum_Wire_Bytes :: 9634
// @brief Canonical codec identity of flexiv_msgs/srv/SetJointImpedance_Response.
// @details Exact identity UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Response_Codec_Identity ::
        "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96"
// @brief Original ROS type name for flexiv_msgs/srv/SetJointImpedance_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Response_Native_Type :: "flexiv_msgs/srv/SetJointImpedance_Response"
// @brief Selected original native identity for flexiv_msgs/srv/SetJointImpedance_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointImpedance_Response_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/SetJointImpedance_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvSetJointImpedance_Response :: proc() -> Ros2Flexiv_msgsSrvSetJointImpedance_Response {
 v: Ros2Flexiv_msgsSrvSetJointImpedance_Response
 v.field_success = false
 v.field_message = ""
 v.field_setting = Ros2Flexiv_msgsMsgJointImpedance{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/SetJointImpedance_Response.
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvSetJointImpedance_Response :: proc(v: ^Ros2Flexiv_msgsSrvSetJointImpedance_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if !write_Ros2Flexiv_msgsMsgJointImpedance(&v.field_setting,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/SetJointImpedance_Response.
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvSetJointImpedance_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointImpedance_Response,bool) {
 v:=init_Ros2Flexiv_msgsSrvSetJointImpedance_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=read_Ros2Flexiv_msgsMsgJointImpedance(r,allocator); if !ok { return v,false }
 v.field_setting=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/SetJointImpedance_Response value.
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvSetJointImpedance_Response :: proc(v: ^Ros2Flexiv_msgsSrvSetJointImpedance_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9634}
 if !write_Ros2Flexiv_msgsSrvSetJointImpedance_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9634}
 if !write_Ros2Flexiv_msgsSrvSetJointImpedance_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/SetJointImpedance_Response value.
// @details Require the complete 34..9634-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvSetJointImpedance_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvSetJointImpedance_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointImpedance_Response,u32) {
 if len(bytes)<34 || len(bytes)>9634 { return Ros2Flexiv_msgsSrvSetJointImpedance_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvSetJointImpedance_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvSetJointImpedance_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/SetJointInertiaScale_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8584 bytes and
// is identified by UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Request :: struct {
 // @brief flexiv_msgs/srv/SetJointInertiaScale_Request.joint_names: string; 0..32 elements; each string is 0..256
 // bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
 field_inertia_scales: []f64,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/SetJointInertiaScale_Request in bytes.
// @details The inclusive bound is 8584 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_Maximum_Wire_Bytes :: 8584
// @brief Canonical codec identity of flexiv_msgs/srv/SetJointInertiaScale_Request.
// @details Exact identity UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_Codec_Identity ::
        "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625"
// @brief Original ROS type name for flexiv_msgs/srv/SetJointInertiaScale_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_Native_Type :: "flexiv_msgs/srv/SetJointInertiaScale_Request"
// @brief Selected original native identity for flexiv_msgs/srv/SetJointInertiaScale_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Request_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/SetJointInertiaScale_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request :: proc() -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
 v: Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
 v.field_joint_names = nil
 v.field_inertia_scales = nil
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/SetJointInertiaScale_Request.
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request :: proc(v: ^Ros2Flexiv_msgsSrvSetJointInertiaScale_Request, w: ^Writer) -> bool
        {
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_inertia_scales)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_inertia_scales)),4) { return false }
 for e in v.field_inertia_scales {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/SetJointInertiaScale_Request.
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointInertiaScale_Request,bool) {
 v:=init_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request()
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
 if n>32 { r.code=22; return v,false }
 v.field_inertia_scales=make([]f64,int(n),allocator)
 }
 for &e in v.field_inertia_scales {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/SetJointInertiaScale_Request value.
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request :: proc(v: ^Ros2Flexiv_msgsSrvSetJointInertiaScale_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8584}
 if !write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8584}
 if !write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/SetJointInertiaScale_Request value.
// @details Require the complete 8..8584-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointInertiaScale_Request,u32) {
 if len(bytes)<8 || len(bytes)>8584 { return Ros2Flexiv_msgsSrvSetJointInertiaScale_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvSetJointInertiaScale_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/SetJointInertiaScale_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 26..9114 bytes and
// is identified by UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Response :: struct {
 // @brief flexiv_msgs/srv/SetJointInertiaScale_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief flexiv_msgs/srv/SetJointInertiaScale_Response.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief flexiv_msgs/srv/SetJointInertiaScale_Response.setting: flexiv_msgs/msg/JointInertiaScale.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
 field_setting: Ros2Flexiv_msgsMsgJointInertiaScale,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/SetJointInertiaScale_Response in bytes.
// @details The inclusive bound is 9114 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_Maximum_Wire_Bytes :: 9114
// @brief Canonical codec identity of flexiv_msgs/srv/SetJointInertiaScale_Response.
// @details Exact identity UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_Codec_Identity ::
        "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931"
// @brief Original ROS type name for flexiv_msgs/srv/SetJointInertiaScale_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_Native_Type :: "flexiv_msgs/srv/SetJointInertiaScale_Response"
// @brief Selected original native identity for flexiv_msgs/srv/SetJointInertiaScale_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetJointInertiaScale_Response_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/SetJointInertiaScale_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response :: proc() -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
 v: Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
 v.field_success = false
 v.field_message = ""
 v.field_setting = Ros2Flexiv_msgsMsgJointInertiaScale{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/SetJointInertiaScale_Response.
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response :: proc(v: ^Ros2Flexiv_msgsSrvSetJointInertiaScale_Response, w: ^Writer) ->
        bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if !write_Ros2Flexiv_msgsMsgJointInertiaScale(&v.field_setting,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/SetJointInertiaScale_Response.
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointInertiaScale_Response,bool) {
 v:=init_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=read_Ros2Flexiv_msgsMsgJointInertiaScale(r,allocator); if !ok { return v,false }
 v.field_setting=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/SetJointInertiaScale_Response value.
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response :: proc(v: ^Ros2Flexiv_msgsSrvSetJointInertiaScale_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9114}
 if !write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9114}
 if !write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/SetJointInertiaScale_Response value.
// @details Require the complete 26..9114-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetJointInertiaScale_Response,u32) {
 if len(bytes)<26 || len(bytes)>9114 { return Ros2Flexiv_msgsSrvSetJointInertiaScale_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvSetJointInertiaScale_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/SetMaxContactTorque_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8584 bytes and
// is identified by UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Request :: struct {
 // @brief flexiv_msgs/srv/SetMaxContactTorque_Request.joint_names: string; 0..32 elements; each string is 0..256 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques: float64; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
 field_max_contact_torques: []f64,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/SetMaxContactTorque_Request in bytes.
// @details The inclusive bound is 8584 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_Maximum_Wire_Bytes :: 8584
// @brief Canonical codec identity of flexiv_msgs/srv/SetMaxContactTorque_Request.
// @details Exact identity UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_Codec_Identity ::
        "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e"
// @brief Original ROS type name for flexiv_msgs/srv/SetMaxContactTorque_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_Native_Type :: "flexiv_msgs/srv/SetMaxContactTorque_Request"
// @brief Selected original native identity for flexiv_msgs/srv/SetMaxContactTorque_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Request_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/SetMaxContactTorque_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request :: proc() -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
 v: Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
 v.field_joint_names = nil
 v.field_max_contact_torques = nil
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/SetMaxContactTorque_Request.
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request :: proc(v: ^Ros2Flexiv_msgsSrvSetMaxContactTorque_Request, w: ^Writer) -> bool {
 if len(v.field_joint_names)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_max_contact_torques)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_max_contact_torques)),4) { return false }
 for e in v.field_max_contact_torques {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/SetMaxContactTorque_Request.
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetMaxContactTorque_Request,bool) {
 v:=init_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request()
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
 if n>32 { r.code=22; return v,false }
 v.field_max_contact_torques=make([]f64,int(n),allocator)
 }
 for &e in v.field_max_contact_torques {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/SetMaxContactTorque_Request value.
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request :: proc(v: ^Ros2Flexiv_msgsSrvSetMaxContactTorque_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8584}
 if !write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8584}
 if !write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/SetMaxContactTorque_Request value.
// @details Require the complete 8..8584-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetMaxContactTorque_Request,u32) {
 if len(bytes)<8 || len(bytes)>8584 { return Ros2Flexiv_msgsSrvSetMaxContactTorque_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvSetMaxContactTorque_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 flexiv_msgs/srv/SetMaxContactTorque_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 30..9374 bytes and
// is identified by UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Response :: struct {
 // @brief flexiv_msgs/srv/SetMaxContactTorque_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief flexiv_msgs/srv/SetMaxContactTorque_Response.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
 // @brief flexiv_msgs/srv/SetMaxContactTorque_Response.setting: flexiv_msgs/msg/MaxContactTorque.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
 field_setting: Ros2Flexiv_msgsMsgMaxContactTorque,
}
// @brief Maximum canonical extent of flexiv_msgs/srv/SetMaxContactTorque_Response in bytes.
// @details The inclusive bound is 9374 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_Maximum_Wire_Bytes :: 9374
// @brief Canonical codec identity of flexiv_msgs/srv/SetMaxContactTorque_Response.
// @details Exact identity UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_Codec_Identity ::
        "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c"
// @brief Original ROS type name for flexiv_msgs/srv/SetMaxContactTorque_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_Native_Type :: "flexiv_msgs/srv/SetMaxContactTorque_Response"
// @brief Selected original native identity for flexiv_msgs/srv/SetMaxContactTorque_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Flexiv_msgsSrvSetMaxContactTorque_Response_Native_Identity :: ""
// @brief Construct the declared defaults of flexiv_msgs/srv/SetMaxContactTorque_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response :: proc() -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
 v: Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
 v.field_success = false
 v.field_message = ""
 v.field_setting = Ros2Flexiv_msgsMsgMaxContactTorque{}
 return v
}
// @brief Append every canonical field of flexiv_msgs/srv/SetMaxContactTorque_Response.
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response :: proc(v: ^Ros2Flexiv_msgsSrvSetMaxContactTorque_Response, w: ^Writer) -> bool
        {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 if !write_Ros2Flexiv_msgsMsgMaxContactTorque(&v.field_setting,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of flexiv_msgs/srv/SetMaxContactTorque_Response.
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetMaxContactTorque_Response,bool) {
 v:=init_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 {
 b,ok:=read_Ros2Flexiv_msgsMsgMaxContactTorque(r,allocator); if !ok { return v,false }
 v.field_setting=b
 }
 return v,true
}
// @brief Encode one complete flexiv_msgs/srv/SetMaxContactTorque_Response value.
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response :: proc(v: ^Ros2Flexiv_msgsSrvSetMaxContactTorque_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9374}
 if !write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9374}
 if !write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete flexiv_msgs/srv/SetMaxContactTorque_Response value.
// @details Require the complete 30..9374-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Flexiv_msgsSrvSetMaxContactTorque_Response,u32) {
 if len(bytes)<30 || len(bytes)>9374 { return Ros2Flexiv_msgsSrvSetMaxContactTorque_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Flexiv_msgsSrvSetMaxContactTorque_Response{},reader.code }
 return value,0
}
