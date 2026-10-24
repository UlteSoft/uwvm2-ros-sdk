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
// @brief Complete ROS 2 franka_msgs/action/ErrorRecovery_Goal value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Goal :: struct {
}
// @brief Maximum canonical extent of franka_msgs/action/ErrorRecovery_Goal in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Goal_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/action/ErrorRecovery_Goal.
// @details Exact identity UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Goal_Codec_Identity ::
        "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070"
// @brief Original ROS type name for franka_msgs/action/ErrorRecovery_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Goal_Native_Type :: "franka_msgs/action/ErrorRecovery_Goal"
// @brief Selected original native identity for franka_msgs/action/ErrorRecovery_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/ErrorRecovery_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionErrorRecovery_Goal :: proc() -> Ros2Franka_msgsActionErrorRecovery_Goal {
 v: Ros2Franka_msgsActionErrorRecovery_Goal
 return v
}
// @brief Append every canonical field of franka_msgs/action/ErrorRecovery_Goal.
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
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionErrorRecovery_Goal :: proc(v: ^Ros2Franka_msgsActionErrorRecovery_Goal, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/ErrorRecovery_Goal.
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
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionErrorRecovery_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionErrorRecovery_Goal,bool) {
 v:=init_Ros2Franka_msgsActionErrorRecovery_Goal()
 return v,true
}
// @brief Encode one complete franka_msgs/action/ErrorRecovery_Goal value.
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
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionErrorRecovery_Goal :: proc(v: ^Ros2Franka_msgsActionErrorRecovery_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_msgsActionErrorRecovery_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_msgsActionErrorRecovery_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/ErrorRecovery_Goal value.
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
// @see Ros2Franka_msgsActionErrorRecovery_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionErrorRecovery_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionErrorRecovery_Goal,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_msgsActionErrorRecovery_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionErrorRecovery_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionErrorRecovery_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/ErrorRecovery_Result value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Result :: struct {
}
// @brief Maximum canonical extent of franka_msgs/action/ErrorRecovery_Result in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Result_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/action/ErrorRecovery_Result.
// @details Exact identity UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Result_Codec_Identity ::
        "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9"
// @brief Original ROS type name for franka_msgs/action/ErrorRecovery_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Result_Native_Type :: "franka_msgs/action/ErrorRecovery_Result"
// @brief Selected original native identity for franka_msgs/action/ErrorRecovery_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Result_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/ErrorRecovery_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionErrorRecovery_Result :: proc() -> Ros2Franka_msgsActionErrorRecovery_Result {
 v: Ros2Franka_msgsActionErrorRecovery_Result
 return v
}
// @brief Append every canonical field of franka_msgs/action/ErrorRecovery_Result.
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
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionErrorRecovery_Result :: proc(v: ^Ros2Franka_msgsActionErrorRecovery_Result, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/ErrorRecovery_Result.
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
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionErrorRecovery_Result :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionErrorRecovery_Result,bool) {
 v:=init_Ros2Franka_msgsActionErrorRecovery_Result()
 return v,true
}
// @brief Encode one complete franka_msgs/action/ErrorRecovery_Result value.
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
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionErrorRecovery_Result :: proc(v: ^Ros2Franka_msgsActionErrorRecovery_Result, output: []u8) -> ([]u8,u32)
        {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_msgsActionErrorRecovery_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_msgsActionErrorRecovery_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/ErrorRecovery_Result value.
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
// @see Ros2Franka_msgsActionErrorRecovery_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionErrorRecovery_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionErrorRecovery_Result,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_msgsActionErrorRecovery_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionErrorRecovery_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionErrorRecovery_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/ErrorRecovery_Feedback value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Feedback :: struct {
}
// @brief Maximum canonical extent of franka_msgs/action/ErrorRecovery_Feedback in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Feedback_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/action/ErrorRecovery_Feedback.
// @details Exact identity UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Feedback_Codec_Identity ::
        "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f"
// @brief Original ROS type name for franka_msgs/action/ErrorRecovery_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Feedback_Native_Type :: "franka_msgs/action/ErrorRecovery_Feedback"
// @brief Selected original native identity for franka_msgs/action/ErrorRecovery_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionErrorRecovery_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/ErrorRecovery_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionErrorRecovery_Feedback :: proc() -> Ros2Franka_msgsActionErrorRecovery_Feedback {
 v: Ros2Franka_msgsActionErrorRecovery_Feedback
 return v
}
// @brief Append every canonical field of franka_msgs/action/ErrorRecovery_Feedback.
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
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionErrorRecovery_Feedback :: proc(v: ^Ros2Franka_msgsActionErrorRecovery_Feedback, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/ErrorRecovery_Feedback.
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
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionErrorRecovery_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionErrorRecovery_Feedback,bool) {
 v:=init_Ros2Franka_msgsActionErrorRecovery_Feedback()
 return v,true
}
// @brief Encode one complete franka_msgs/action/ErrorRecovery_Feedback value.
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
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionErrorRecovery_Feedback :: proc(v: ^Ros2Franka_msgsActionErrorRecovery_Feedback, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_msgsActionErrorRecovery_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_msgsActionErrorRecovery_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/ErrorRecovery_Feedback value.
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
// @see Ros2Franka_msgsActionErrorRecovery_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionErrorRecovery_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionErrorRecovery_Feedback,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_msgsActionErrorRecovery_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionErrorRecovery_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionErrorRecovery_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/msg/GraspEpsilon value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgGraspEpsilon :: struct {
 // @brief franka_msgs/msg/GraspEpsilon.inner: float64.
 // @details Schema default 0.005. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
 field_inner: f64,
 // @brief franka_msgs/msg/GraspEpsilon.outer: float64.
 // @details Schema default 0.005. Encoding preserves the original field position and signedness; invalid bounds fail
 // instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
 field_outer: f64,
}
// @brief Maximum canonical extent of franka_msgs/msg/GraspEpsilon in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgGraspEpsilon_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of franka_msgs/msg/GraspEpsilon.
// @details Exact identity UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgGraspEpsilon_Codec_Identity :: "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38"
// @brief Original ROS type name for franka_msgs/msg/GraspEpsilon.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgGraspEpsilon_Native_Type :: "franka_msgs/msg/GraspEpsilon"
// @brief Selected original native identity for franka_msgs/msg/GraspEpsilon.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgGraspEpsilon_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/msg/GraspEpsilon.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsMsgGraspEpsilon :: proc() -> Ros2Franka_msgsMsgGraspEpsilon {
 v: Ros2Franka_msgsMsgGraspEpsilon
 v.field_inner = transmute(f64)u64(0x3f747ae147ae147b)
 v.field_outer = transmute(f64)u64(0x3f747ae147ae147b)
 return v
}
// @brief Append every canonical field of franka_msgs/msg/GraspEpsilon.
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
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsMsgGraspEpsilon :: proc(v: ^Ros2Franka_msgsMsgGraspEpsilon, w: ^Writer) -> bool {
 if !put_float64(w,v.field_inner) { return false }
 if !put_float64(w,v.field_outer) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/msg/GraspEpsilon.
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
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsMsgGraspEpsilon :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgGraspEpsilon,bool) {
 v:=init_Ros2Franka_msgsMsgGraspEpsilon()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_inner=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_outer=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/msg/GraspEpsilon value.
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
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsMsgGraspEpsilon :: proc(v: ^Ros2Franka_msgsMsgGraspEpsilon, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Franka_msgsMsgGraspEpsilon(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Franka_msgsMsgGraspEpsilon(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/msg/GraspEpsilon value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsMsgGraspEpsilon; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsMsgGraspEpsilon :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgGraspEpsilon,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Franka_msgsMsgGraspEpsilon{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsMsgGraspEpsilon(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsMsgGraspEpsilon{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Grasp_Goal value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes and
// is identified by UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Goal :: struct {
 // @brief franka_msgs/action/Grasp_Goal.width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_width: f64,
 // @brief franka_msgs/action/Grasp_Goal.epsilon: franka_msgs/msg/GraspEpsilon.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_epsilon: Ros2Franka_msgsMsgGraspEpsilon,
 // @brief franka_msgs/action/Grasp_Goal.speed: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_speed: f64,
 // @brief franka_msgs/action/Grasp_Goal.force: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_force: f64,
}
// @brief Maximum canonical extent of franka_msgs/action/Grasp_Goal in bytes.
// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Goal_Maximum_Wire_Bytes :: 40
// @brief Canonical codec identity of franka_msgs/action/Grasp_Goal.
// @details Exact identity UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Goal_Codec_Identity :: "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f"
// @brief Original ROS type name for franka_msgs/action/Grasp_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Goal_Native_Type :: "franka_msgs/action/Grasp_Goal"
// @brief Selected original native identity for franka_msgs/action/Grasp_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Grasp_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionGrasp_Goal :: proc() -> Ros2Franka_msgsActionGrasp_Goal {
 v: Ros2Franka_msgsActionGrasp_Goal
 v.field_width = 0
 v.field_epsilon = Ros2Franka_msgsMsgGraspEpsilon{}
 v.field_speed = 0
 v.field_force = 0
 return v
}
// @brief Append every canonical field of franka_msgs/action/Grasp_Goal.
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
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionGrasp_Goal :: proc(v: ^Ros2Franka_msgsActionGrasp_Goal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_width) { return false }
 if !write_Ros2Franka_msgsMsgGraspEpsilon(&v.field_epsilon,w) { return false }
 if !put_float64(w,v.field_speed) { return false }
 if !put_float64(w,v.field_force) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Grasp_Goal.
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
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionGrasp_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionGrasp_Goal,bool) {
 v:=init_Ros2Franka_msgsActionGrasp_Goal()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_width=f64(b)
 }
 {
 b,ok:=read_Ros2Franka_msgsMsgGraspEpsilon(r,allocator); if !ok { return v,false }
 v.field_epsilon=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_speed=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_force=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/Grasp_Goal value.
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
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionGrasp_Goal :: proc(v: ^Ros2Franka_msgsActionGrasp_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=40}
 if !write_Ros2Franka_msgsActionGrasp_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=40}
 if !write_Ros2Franka_msgsActionGrasp_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Grasp_Goal value.
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
// @see Ros2Franka_msgsActionGrasp_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionGrasp_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionGrasp_Goal,u32) {
 if len(bytes)<40 || len(bytes)>40 { return Ros2Franka_msgsActionGrasp_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionGrasp_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionGrasp_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Grasp_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Result :: struct {
 // @brief franka_msgs/action/Grasp_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/action/Grasp_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/action/Grasp_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/action/Grasp_Result.
// @details Exact identity UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Result_Codec_Identity :: "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733"
// @brief Original ROS type name for franka_msgs/action/Grasp_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Result_Native_Type :: "franka_msgs/action/Grasp_Result"
// @brief Selected original native identity for franka_msgs/action/Grasp_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Result_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Grasp_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionGrasp_Result :: proc() -> Ros2Franka_msgsActionGrasp_Result {
 v: Ros2Franka_msgsActionGrasp_Result
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/action/Grasp_Result.
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
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionGrasp_Result :: proc(v: ^Ros2Franka_msgsActionGrasp_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Grasp_Result.
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
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionGrasp_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionGrasp_Result,bool)
        {
 v:=init_Ros2Franka_msgsActionGrasp_Result()
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
// @brief Encode one complete franka_msgs/action/Grasp_Result value.
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
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionGrasp_Result :: proc(v: ^Ros2Franka_msgsActionGrasp_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsActionGrasp_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsActionGrasp_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Grasp_Result value.
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
// @see Ros2Franka_msgsActionGrasp_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionGrasp_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionGrasp_Result,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsActionGrasp_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionGrasp_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionGrasp_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Grasp_Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Feedback :: struct {
 // @brief franka_msgs/action/Grasp_Feedback.current_width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_width: f64,
}
// @brief Maximum canonical extent of franka_msgs/action/Grasp_Feedback in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Feedback_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of franka_msgs/action/Grasp_Feedback.
// @details Exact identity UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Feedback_Codec_Identity :: "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe"
// @brief Original ROS type name for franka_msgs/action/Grasp_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Feedback_Native_Type :: "franka_msgs/action/Grasp_Feedback"
// @brief Selected original native identity for franka_msgs/action/Grasp_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionGrasp_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Grasp_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionGrasp_Feedback :: proc() -> Ros2Franka_msgsActionGrasp_Feedback {
 v: Ros2Franka_msgsActionGrasp_Feedback
 v.field_current_width = 0
 return v
}
// @brief Append every canonical field of franka_msgs/action/Grasp_Feedback.
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
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionGrasp_Feedback :: proc(v: ^Ros2Franka_msgsActionGrasp_Feedback, w: ^Writer) -> bool {
 if !put_float64(w,v.field_current_width) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Grasp_Feedback.
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
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionGrasp_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionGrasp_Feedback,bool) {
 v:=init_Ros2Franka_msgsActionGrasp_Feedback()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_width=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/Grasp_Feedback value.
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
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionGrasp_Feedback :: proc(v: ^Ros2Franka_msgsActionGrasp_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Franka_msgsActionGrasp_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Franka_msgsActionGrasp_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Grasp_Feedback value.
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
// @see Ros2Franka_msgsActionGrasp_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionGrasp_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionGrasp_Feedback,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Franka_msgsActionGrasp_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionGrasp_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionGrasp_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Homing_Goal value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Goal :: struct {
}
// @brief Maximum canonical extent of franka_msgs/action/Homing_Goal in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Goal_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_msgs/action/Homing_Goal.
// @details Exact identity UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Goal_Codec_Identity :: "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d"
// @brief Original ROS type name for franka_msgs/action/Homing_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Goal_Native_Type :: "franka_msgs/action/Homing_Goal"
// @brief Selected original native identity for franka_msgs/action/Homing_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Homing_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionHoming_Goal :: proc() -> Ros2Franka_msgsActionHoming_Goal {
 v: Ros2Franka_msgsActionHoming_Goal
 return v
}
// @brief Append every canonical field of franka_msgs/action/Homing_Goal.
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
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionHoming_Goal :: proc(v: ^Ros2Franka_msgsActionHoming_Goal, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Homing_Goal.
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
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionHoming_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionHoming_Goal,bool) {
 v:=init_Ros2Franka_msgsActionHoming_Goal()
 return v,true
}
// @brief Encode one complete franka_msgs/action/Homing_Goal value.
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
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionHoming_Goal :: proc(v: ^Ros2Franka_msgsActionHoming_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_msgsActionHoming_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_msgsActionHoming_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Homing_Goal value.
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
// @see Ros2Franka_msgsActionHoming_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionHoming_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionHoming_Goal,u32)
        {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_msgsActionHoming_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionHoming_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionHoming_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Homing_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Result :: struct {
 // @brief franka_msgs/action/Homing_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/action/Homing_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/action/Homing_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/action/Homing_Result.
// @details Exact identity UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Result_Codec_Identity :: "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c"
// @brief Original ROS type name for franka_msgs/action/Homing_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Result_Native_Type :: "franka_msgs/action/Homing_Result"
// @brief Selected original native identity for franka_msgs/action/Homing_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Result_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Homing_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionHoming_Result :: proc() -> Ros2Franka_msgsActionHoming_Result {
 v: Ros2Franka_msgsActionHoming_Result
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/action/Homing_Result.
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
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionHoming_Result :: proc(v: ^Ros2Franka_msgsActionHoming_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Homing_Result.
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
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionHoming_Result :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionHoming_Result,bool) {
 v:=init_Ros2Franka_msgsActionHoming_Result()
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
// @brief Encode one complete franka_msgs/action/Homing_Result value.
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
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionHoming_Result :: proc(v: ^Ros2Franka_msgsActionHoming_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsActionHoming_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsActionHoming_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Homing_Result value.
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
// @see Ros2Franka_msgsActionHoming_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionHoming_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionHoming_Result,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsActionHoming_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionHoming_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionHoming_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Homing_Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Feedback :: struct {
 // @brief franka_msgs/action/Homing_Feedback.current_width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_width: f64,
}
// @brief Maximum canonical extent of franka_msgs/action/Homing_Feedback in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Feedback_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of franka_msgs/action/Homing_Feedback.
// @details Exact identity UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Feedback_Codec_Identity :: "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46"
// @brief Original ROS type name for franka_msgs/action/Homing_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Feedback_Native_Type :: "franka_msgs/action/Homing_Feedback"
// @brief Selected original native identity for franka_msgs/action/Homing_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionHoming_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Homing_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionHoming_Feedback :: proc() -> Ros2Franka_msgsActionHoming_Feedback {
 v: Ros2Franka_msgsActionHoming_Feedback
 v.field_current_width = 0
 return v
}
// @brief Append every canonical field of franka_msgs/action/Homing_Feedback.
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
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionHoming_Feedback :: proc(v: ^Ros2Franka_msgsActionHoming_Feedback, w: ^Writer) -> bool {
 if !put_float64(w,v.field_current_width) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Homing_Feedback.
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
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionHoming_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionHoming_Feedback,bool) {
 v:=init_Ros2Franka_msgsActionHoming_Feedback()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_width=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/Homing_Feedback value.
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
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionHoming_Feedback :: proc(v: ^Ros2Franka_msgsActionHoming_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Franka_msgsActionHoming_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Franka_msgsActionHoming_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Homing_Feedback value.
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
// @see Ros2Franka_msgsActionHoming_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionHoming_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionHoming_Feedback,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Franka_msgsActionHoming_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionHoming_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionHoming_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Move_Goal value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Goal :: struct {
 // @brief franka_msgs/action/Move_Goal.width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_width: f64,
 // @brief franka_msgs/action/Move_Goal.speed: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_speed: f64,
}
// @brief Maximum canonical extent of franka_msgs/action/Move_Goal in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Goal_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of franka_msgs/action/Move_Goal.
// @details Exact identity UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Goal_Codec_Identity :: "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f"
// @brief Original ROS type name for franka_msgs/action/Move_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Goal_Native_Type :: "franka_msgs/action/Move_Goal"
// @brief Selected original native identity for franka_msgs/action/Move_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Move_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionMove_Goal :: proc() -> Ros2Franka_msgsActionMove_Goal {
 v: Ros2Franka_msgsActionMove_Goal
 v.field_width = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of franka_msgs/action/Move_Goal.
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
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionMove_Goal :: proc(v: ^Ros2Franka_msgsActionMove_Goal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_width) { return false }
 if !put_float64(w,v.field_speed) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Move_Goal.
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
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionMove_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionMove_Goal,bool) {
 v:=init_Ros2Franka_msgsActionMove_Goal()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_width=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_speed=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/Move_Goal value.
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
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionMove_Goal :: proc(v: ^Ros2Franka_msgsActionMove_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Franka_msgsActionMove_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Franka_msgsActionMove_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Move_Goal value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsActionMove_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionMove_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionMove_Goal,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Franka_msgsActionMove_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionMove_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionMove_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Move_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Result :: struct {
 // @brief franka_msgs/action/Move_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/action/Move_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/action/Move_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/action/Move_Result.
// @details Exact identity UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Result_Codec_Identity :: "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266"
// @brief Original ROS type name for franka_msgs/action/Move_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Result_Native_Type :: "franka_msgs/action/Move_Result"
// @brief Selected original native identity for franka_msgs/action/Move_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Result_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Move_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionMove_Result :: proc() -> Ros2Franka_msgsActionMove_Result {
 v: Ros2Franka_msgsActionMove_Result
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/action/Move_Result.
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
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionMove_Result :: proc(v: ^Ros2Franka_msgsActionMove_Result, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Move_Result.
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
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionMove_Result :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionMove_Result,bool) {
 v:=init_Ros2Franka_msgsActionMove_Result()
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
// @brief Encode one complete franka_msgs/action/Move_Result value.
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
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionMove_Result :: proc(v: ^Ros2Franka_msgsActionMove_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsActionMove_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsActionMove_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Move_Result value.
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
// @see Ros2Franka_msgsActionMove_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionMove_Result :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsActionMove_Result,u32)
        {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsActionMove_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionMove_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionMove_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/Move_Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Feedback :: struct {
 // @brief franka_msgs/action/Move_Feedback.current_width: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_width: f64,
}
// @brief Maximum canonical extent of franka_msgs/action/Move_Feedback in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Feedback_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of franka_msgs/action/Move_Feedback.
// @details Exact identity UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Feedback_Codec_Identity :: "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596"
// @brief Original ROS type name for franka_msgs/action/Move_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Feedback_Native_Type :: "franka_msgs/action/Move_Feedback"
// @brief Selected original native identity for franka_msgs/action/Move_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionMove_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/Move_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionMove_Feedback :: proc() -> Ros2Franka_msgsActionMove_Feedback {
 v: Ros2Franka_msgsActionMove_Feedback
 v.field_current_width = 0
 return v
}
// @brief Append every canonical field of franka_msgs/action/Move_Feedback.
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
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionMove_Feedback :: proc(v: ^Ros2Franka_msgsActionMove_Feedback, w: ^Writer) -> bool {
 if !put_float64(w,v.field_current_width) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/Move_Feedback.
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
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionMove_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionMove_Feedback,bool) {
 v:=init_Ros2Franka_msgsActionMove_Feedback()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_width=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/Move_Feedback value.
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
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionMove_Feedback :: proc(v: ^Ros2Franka_msgsActionMove_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Franka_msgsActionMove_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Franka_msgsActionMove_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/Move_Feedback value.
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
// @see Ros2Franka_msgsActionMove_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionMove_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionMove_Feedback,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Franka_msgsActionMove_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionMove_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionMove_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/PTPMotion_Goal value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..128 bytes and
// is identified by UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Goal :: struct {
 // @brief franka_msgs/action/PTPMotion_Goal.goal_joint_configuration: float64; 0..7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_goal_joint_configuration: []f64,
 // @brief franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities: float64; 0..7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_maximum_joint_velocities: []f64,
 // @brief franka_msgs/action/PTPMotion_Goal.goal_tolerance: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_goal_tolerance: f64,
}
// @brief Maximum canonical extent of franka_msgs/action/PTPMotion_Goal in bytes.
// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Goal_Maximum_Wire_Bytes :: 128
// @brief Canonical codec identity of franka_msgs/action/PTPMotion_Goal.
// @details Exact identity UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Goal_Codec_Identity :: "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc"
// @brief Original ROS type name for franka_msgs/action/PTPMotion_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Goal_Native_Type :: "franka_msgs/action/PTPMotion_Goal"
// @brief Selected original native identity for franka_msgs/action/PTPMotion_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/PTPMotion_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionPTPMotion_Goal :: proc() -> Ros2Franka_msgsActionPTPMotion_Goal {
 v: Ros2Franka_msgsActionPTPMotion_Goal
 v.field_goal_joint_configuration = nil
 v.field_maximum_joint_velocities = nil
 v.field_goal_tolerance = 0
 return v
}
// @brief Append every canonical field of franka_msgs/action/PTPMotion_Goal.
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
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionPTPMotion_Goal :: proc(v: ^Ros2Franka_msgsActionPTPMotion_Goal, w: ^Writer) -> bool {
 if len(v.field_goal_joint_configuration)>7 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_goal_joint_configuration)),4) { return false }
 for e in v.field_goal_joint_configuration {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_maximum_joint_velocities)>7 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_maximum_joint_velocities)),4) { return false }
 for e in v.field_maximum_joint_velocities {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_goal_tolerance) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/PTPMotion_Goal.
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
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionPTPMotion_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionPTPMotion_Goal,bool) {
 v:=init_Ros2Franka_msgsActionPTPMotion_Goal()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>7 { r.code=22; return v,false }
 v.field_goal_joint_configuration=make([]f64,int(n),allocator)
 }
 for &e in v.field_goal_joint_configuration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>7 { r.code=22; return v,false }
 v.field_maximum_joint_velocities=make([]f64,int(n),allocator)
 }
 for &e in v.field_maximum_joint_velocities {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_goal_tolerance=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/PTPMotion_Goal value.
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
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionPTPMotion_Goal :: proc(v: ^Ros2Franka_msgsActionPTPMotion_Goal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=128}
 if !write_Ros2Franka_msgsActionPTPMotion_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=128}
 if !write_Ros2Franka_msgsActionPTPMotion_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/PTPMotion_Goal value.
// @details Require the complete 16..128-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsActionPTPMotion_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionPTPMotion_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionPTPMotion_Goal,u32) {
 if len(bytes)<16 || len(bytes)>128 { return Ros2Franka_msgsActionPTPMotion_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionPTPMotion_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionPTPMotion_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/msg/TargetStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus :: struct {
 // @brief franka_msgs/msg/TargetStatus.status: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: u8,
}
// @brief Maximum canonical extent of franka_msgs/msg/TargetStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of franka_msgs/msg/TargetStatus.
// @details Exact identity UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_Codec_Identity :: "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585"
// @brief Original ROS type name for franka_msgs/msg/TargetStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_Native_Type :: "franka_msgs/msg/TargetStatus"
// @brief Selected original native identity for franka_msgs/msg/TargetStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_Native_Identity :: ""
// @brief franka_msgs/msg/TargetStatus.IDLE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_IDLE :: u8(0)
// @brief franka_msgs/msg/TargetStatus.EXECUTING: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_EXECUTING :: u8(1)
// @brief franka_msgs/msg/TargetStatus.TARGET_REACHED: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_TARGET_REACHED :: u8(2)
// @brief franka_msgs/msg/TargetStatus.ABORTED: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgTargetStatus_ABORTED :: u8(3)
// @brief Construct the declared defaults of franka_msgs/msg/TargetStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsMsgTargetStatus :: proc() -> Ros2Franka_msgsMsgTargetStatus {
 v: Ros2Franka_msgsMsgTargetStatus
 v.field_status = 0
 return v
}
// @brief Append every canonical field of franka_msgs/msg/TargetStatus.
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
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsMsgTargetStatus :: proc(v: ^Ros2Franka_msgsMsgTargetStatus, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/msg/TargetStatus.
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
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsMsgTargetStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgTargetStatus,bool) {
 v:=init_Ros2Franka_msgsMsgTargetStatus()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_status=u8(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/msg/TargetStatus value.
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
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsMsgTargetStatus :: proc(v: ^Ros2Franka_msgsMsgTargetStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Franka_msgsMsgTargetStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Franka_msgsMsgTargetStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/msg/TargetStatus value.
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
// @see Ros2Franka_msgsMsgTargetStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsMsgTargetStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgTargetStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Franka_msgsMsgTargetStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsMsgTargetStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsMsgTargetStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/PTPMotion_Result value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Result :: struct {
 // @brief franka_msgs/action/PTPMotion_Result.target_status: franka_msgs/msg/TargetStatus.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
 field_target_status: Ros2Franka_msgsMsgTargetStatus,
 // @brief franka_msgs/action/PTPMotion_Result.error_message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error_message: string,
}
// @brief Maximum canonical extent of franka_msgs/action/PTPMotion_Result in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Result_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/action/PTPMotion_Result.
// @details Exact identity UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Result_Codec_Identity :: "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1"
// @brief Original ROS type name for franka_msgs/action/PTPMotion_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Result_Native_Type :: "franka_msgs/action/PTPMotion_Result"
// @brief Selected original native identity for franka_msgs/action/PTPMotion_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Result_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/PTPMotion_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionPTPMotion_Result :: proc() -> Ros2Franka_msgsActionPTPMotion_Result {
 v: Ros2Franka_msgsActionPTPMotion_Result
 v.field_target_status = Ros2Franka_msgsMsgTargetStatus{}
 v.field_error_message = ""
 return v
}
// @brief Append every canonical field of franka_msgs/action/PTPMotion_Result.
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
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionPTPMotion_Result :: proc(v: ^Ros2Franka_msgsActionPTPMotion_Result, w: ^Writer) -> bool {
 if !write_Ros2Franka_msgsMsgTargetStatus(&v.field_target_status,w) { return false }
 if !put_string(w,v.field_error_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/PTPMotion_Result.
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
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionPTPMotion_Result :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionPTPMotion_Result,bool) {
 v:=init_Ros2Franka_msgsActionPTPMotion_Result()
 {
 b,ok:=read_Ros2Franka_msgsMsgTargetStatus(r,allocator); if !ok { return v,false }
 v.field_target_status=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error_message=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/PTPMotion_Result value.
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
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionPTPMotion_Result :: proc(v: ^Ros2Franka_msgsActionPTPMotion_Result, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsActionPTPMotion_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsActionPTPMotion_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/PTPMotion_Result value.
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
// @see Ros2Franka_msgsActionPTPMotion_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionPTPMotion_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionPTPMotion_Result,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsActionPTPMotion_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionPTPMotion_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionPTPMotion_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/action/PTPMotion_Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Feedback :: struct {
 // @brief franka_msgs/action/PTPMotion_Feedback.target_status: franka_msgs/msg/TargetStatus.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_target_status: Ros2Franka_msgsMsgTargetStatus,
}
// @brief Maximum canonical extent of franka_msgs/action/PTPMotion_Feedback in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Feedback_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of franka_msgs/action/PTPMotion_Feedback.
// @details Exact identity UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Feedback_Codec_Identity ::
        "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300"
// @brief Original ROS type name for franka_msgs/action/PTPMotion_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Feedback_Native_Type :: "franka_msgs/action/PTPMotion_Feedback"
// @brief Selected original native identity for franka_msgs/action/PTPMotion_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsActionPTPMotion_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/action/PTPMotion_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsActionPTPMotion_Feedback :: proc() -> Ros2Franka_msgsActionPTPMotion_Feedback {
 v: Ros2Franka_msgsActionPTPMotion_Feedback
 v.field_target_status = Ros2Franka_msgsMsgTargetStatus{}
 return v
}
// @brief Append every canonical field of franka_msgs/action/PTPMotion_Feedback.
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
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsActionPTPMotion_Feedback :: proc(v: ^Ros2Franka_msgsActionPTPMotion_Feedback, w: ^Writer) -> bool {
 if !write_Ros2Franka_msgsMsgTargetStatus(&v.field_target_status,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/action/PTPMotion_Feedback.
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
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsActionPTPMotion_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionPTPMotion_Feedback,bool) {
 v:=init_Ros2Franka_msgsActionPTPMotion_Feedback()
 {
 b,ok:=read_Ros2Franka_msgsMsgTargetStatus(r,allocator); if !ok { return v,false }
 v.field_target_status=b
 }
 return v,true
}
// @brief Encode one complete franka_msgs/action/PTPMotion_Feedback value.
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
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsActionPTPMotion_Feedback :: proc(v: ^Ros2Franka_msgsActionPTPMotion_Feedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Franka_msgsActionPTPMotion_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Franka_msgsActionPTPMotion_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/action/PTPMotion_Feedback value.
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
// @see Ros2Franka_msgsActionPTPMotion_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsActionPTPMotion_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsActionPTPMotion_Feedback,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Franka_msgsActionPTPMotion_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsActionPTPMotion_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsActionPTPMotion_Feedback{},reader.code }
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
// @brief Complete ROS 2 franka_msgs/msg/CollisionIndicators value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 208..208 bytes and
// is identified by UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgCollisionIndicators :: struct {
 // @brief franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
 field_is_cartesian_linear_collision: Ros2Geometry_msgsMsgVector3,
 // @brief franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
 field_is_cartesian_angular_collision: Ros2Geometry_msgsMsgVector3,
 // @brief franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
 field_is_cartesian_linear_contact: Ros2Geometry_msgsMsgVector3,
 // @brief franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
 field_is_cartesian_angular_contact: Ros2Geometry_msgsMsgVector3,
 // @brief franka_msgs/msg/CollisionIndicators.is_joint_collision: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
 field_is_joint_collision: [7]f64,
 // @brief franka_msgs/msg/CollisionIndicators.is_joint_contact: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
 field_is_joint_contact: [7]f64,
}
// @brief Maximum canonical extent of franka_msgs/msg/CollisionIndicators in bytes.
// @details The inclusive bound is 208 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgCollisionIndicators_Maximum_Wire_Bytes :: 208
// @brief Canonical codec identity of franka_msgs/msg/CollisionIndicators.
// @details Exact identity UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgCollisionIndicators_Codec_Identity :: "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1"
// @brief Original ROS type name for franka_msgs/msg/CollisionIndicators.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgCollisionIndicators_Native_Type :: "franka_msgs/msg/CollisionIndicators"
// @brief Selected original native identity for franka_msgs/msg/CollisionIndicators.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgCollisionIndicators_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/msg/CollisionIndicators.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsMsgCollisionIndicators :: proc() -> Ros2Franka_msgsMsgCollisionIndicators {
 v: Ros2Franka_msgsMsgCollisionIndicators
 v.field_is_cartesian_linear_collision = Ros2Geometry_msgsMsgVector3{}
 v.field_is_cartesian_angular_collision = Ros2Geometry_msgsMsgVector3{}
 v.field_is_cartesian_linear_contact = Ros2Geometry_msgsMsgVector3{}
 v.field_is_cartesian_angular_contact = Ros2Geometry_msgsMsgVector3{}
 v.field_is_joint_collision = [7]f64{0,0,0,0,0,0,0}
 v.field_is_joint_contact = [7]f64{0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/msg/CollisionIndicators.
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
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsMsgCollisionIndicators :: proc(v: ^Ros2Franka_msgsMsgCollisionIndicators, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_is_cartesian_linear_collision,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_is_cartesian_angular_collision,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_is_cartesian_linear_contact,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_is_cartesian_angular_contact,w) { return false }
 for e in v.field_is_joint_collision {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_is_joint_contact {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/msg/CollisionIndicators.
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
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsMsgCollisionIndicators :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsMsgCollisionIndicators,bool) {
 v:=init_Ros2Franka_msgsMsgCollisionIndicators()
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_is_cartesian_linear_collision=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_is_cartesian_angular_collision=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_is_cartesian_linear_contact=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_is_cartesian_angular_contact=b
 }
 for &e in v.field_is_joint_collision {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_is_joint_contact {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/msg/CollisionIndicators value.
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
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsMsgCollisionIndicators :: proc(v: ^Ros2Franka_msgsMsgCollisionIndicators, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=208}
 if !write_Ros2Franka_msgsMsgCollisionIndicators(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=208}
 if !write_Ros2Franka_msgsMsgCollisionIndicators(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/msg/CollisionIndicators value.
// @details Require the complete 208..208-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsMsgCollisionIndicators; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsMsgCollisionIndicators :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsMsgCollisionIndicators,u32) {
 if len(bytes)<208 || len(bytes)>208 { return Ros2Franka_msgsMsgCollisionIndicators{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsMsgCollisionIndicators(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsMsgCollisionIndicators{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/msg/Elbow value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 80..80 bytes and
// is identified by UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgElbow :: struct {
 // @brief franka_msgs/msg/Elbow.position: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
 field_position: [2]f64,
 // @brief franka_msgs/msg/Elbow.desired_position: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
 field_desired_position: [2]f64,
 // @brief franka_msgs/msg/Elbow.commanded_position: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
 field_commanded_position: [2]f64,
 // @brief franka_msgs/msg/Elbow.commanded_velocity: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
 field_commanded_velocity: [2]f64,
 // @brief franka_msgs/msg/Elbow.commanded_acceleration: float64; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
 field_commanded_acceleration: [2]f64,
}
// @brief Maximum canonical extent of franka_msgs/msg/Elbow in bytes.
// @details The inclusive bound is 80 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgElbow_Maximum_Wire_Bytes :: 80
// @brief Canonical codec identity of franka_msgs/msg/Elbow.
// @details Exact identity UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgElbow_Codec_Identity :: "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6"
// @brief Original ROS type name for franka_msgs/msg/Elbow.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgElbow_Native_Type :: "franka_msgs/msg/Elbow"
// @brief Selected original native identity for franka_msgs/msg/Elbow.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgElbow_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/msg/Elbow.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsMsgElbow :: proc() -> Ros2Franka_msgsMsgElbow {
 v: Ros2Franka_msgsMsgElbow
 v.field_position = [2]f64{0,0}
 v.field_desired_position = [2]f64{0,0}
 v.field_commanded_position = [2]f64{0,0}
 v.field_commanded_velocity = [2]f64{0,0}
 v.field_commanded_acceleration = [2]f64{0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/msg/Elbow.
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
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsMsgElbow :: proc(v: ^Ros2Franka_msgsMsgElbow, w: ^Writer) -> bool {
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_desired_position {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_commanded_position {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_commanded_velocity {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_commanded_acceleration {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/msg/Elbow.
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
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsMsgElbow :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgElbow,bool) {
 v:=init_Ros2Franka_msgsMsgElbow()
 for &e in v.field_position {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_desired_position {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_commanded_position {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_commanded_velocity {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_commanded_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/msg/Elbow value.
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
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsMsgElbow :: proc(v: ^Ros2Franka_msgsMsgElbow, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=80}
 if !write_Ros2Franka_msgsMsgElbow(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=80}
 if !write_Ros2Franka_msgsMsgElbow(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/msg/Elbow value.
// @details Require the complete 80..80-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsMsgElbow; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsMsgElbow :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgElbow,u32) {
 if len(bytes)<80 || len(bytes)>80 { return Ros2Franka_msgsMsgElbow{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsMsgElbow(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsMsgElbow{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/msg/Errors value.
// @details All 36 declared fields are retained in source order. The canonical representation occupies 36..36 bytes and
// is identified by UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgErrors :: struct {
 // @brief franka_msgs/msg/Errors.joint_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_position_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_position_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.self_collision_avoidance_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_self_collision_avoidance_violation: bool,
 // @brief franka_msgs/msg/Errors.joint_velocity_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_velocity_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_velocity_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_velocity_violation: bool,
 // @brief franka_msgs/msg/Errors.force_control_safety_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_force_control_safety_violation: bool,
 // @brief franka_msgs/msg/Errors.joint_reflex: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_reflex: bool,
 // @brief franka_msgs/msg/Errors.cartesian_reflex: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_reflex: bool,
 // @brief franka_msgs/msg/Errors.max_goal_pose_deviation_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_max_goal_pose_deviation_violation: bool,
 // @brief franka_msgs/msg/Errors.max_path_pose_deviation_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_max_path_pose_deviation_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_velocity_profile_safety_violation: bool,
 // @brief franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_position_motion_generator_start_pose_invalid: bool,
 // @brief franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_position_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_velocity_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_velocity_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_motion_generator_acceleration_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_position_motion_generator_start_pose_invalid: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_elbow_limit_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_velocity_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_velocity_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_acceleration_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_elbow_sign_inconsistent: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_start_elbow_invalid: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_position_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_velocity_limits_violation: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_velocity_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_motion_generator_joint_acceleration_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_position_motion_generator_invalid_frame: bool,
 // @brief franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_force_controller_desired_force_tolerance_violation: bool,
 // @brief franka_msgs/msg/Errors.controller_torque_discontinuity: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_controller_torque_discontinuity: bool,
 // @brief franka_msgs/msg/Errors.start_elbow_sign_inconsistent: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_start_elbow_sign_inconsistent: bool,
 // @brief franka_msgs/msg/Errors.communication_constraints_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_communication_constraints_violation: bool,
 // @brief franka_msgs/msg/Errors.power_limit_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_power_limit_violation: bool,
 // @brief franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_joint_p2p_insufficient_torque_for_planning: bool,
 // @brief franka_msgs/msg/Errors.tau_j_range_violation: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_tau_j_range_violation: bool,
 // @brief franka_msgs/msg/Errors.instability_detected: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
 field_instability_detected: bool,
}
// @brief Maximum canonical extent of franka_msgs/msg/Errors in bytes.
// @details The inclusive bound is 36 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgErrors_Maximum_Wire_Bytes :: 36
// @brief Canonical codec identity of franka_msgs/msg/Errors.
// @details Exact identity UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgErrors_Codec_Identity :: "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c"
// @brief Original ROS type name for franka_msgs/msg/Errors.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgErrors_Native_Type :: "franka_msgs/msg/Errors"
// @brief Selected original native identity for franka_msgs/msg/Errors.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgErrors_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/msg/Errors.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsMsgErrors :: proc() -> Ros2Franka_msgsMsgErrors {
 v: Ros2Franka_msgsMsgErrors
 v.field_joint_position_limits_violation = false
 v.field_cartesian_position_limits_violation = false
 v.field_self_collision_avoidance_violation = false
 v.field_joint_velocity_violation = false
 v.field_cartesian_velocity_violation = false
 v.field_force_control_safety_violation = false
 v.field_joint_reflex = false
 v.field_cartesian_reflex = false
 v.field_max_goal_pose_deviation_violation = false
 v.field_max_path_pose_deviation_violation = false
 v.field_cartesian_velocity_profile_safety_violation = false
 v.field_joint_position_motion_generator_start_pose_invalid = false
 v.field_joint_motion_generator_position_limits_violation = false
 v.field_joint_motion_generator_velocity_limits_violation = false
 v.field_joint_motion_generator_velocity_discontinuity = false
 v.field_joint_motion_generator_acceleration_discontinuity = false
 v.field_cartesian_position_motion_generator_start_pose_invalid = false
 v.field_cartesian_motion_generator_elbow_limit_violation = false
 v.field_cartesian_motion_generator_velocity_limits_violation = false
 v.field_cartesian_motion_generator_velocity_discontinuity = false
 v.field_cartesian_motion_generator_acceleration_discontinuity = false
 v.field_cartesian_motion_generator_elbow_sign_inconsistent = false
 v.field_cartesian_motion_generator_start_elbow_invalid = false
 v.field_cartesian_motion_generator_joint_position_limits_violation = false
 v.field_cartesian_motion_generator_joint_velocity_limits_violation = false
 v.field_cartesian_motion_generator_joint_velocity_discontinuity = false
 v.field_cartesian_motion_generator_joint_acceleration_discontinuity = false
 v.field_cartesian_position_motion_generator_invalid_frame = false
 v.field_force_controller_desired_force_tolerance_violation = false
 v.field_controller_torque_discontinuity = false
 v.field_start_elbow_sign_inconsistent = false
 v.field_communication_constraints_violation = false
 v.field_power_limit_violation = false
 v.field_joint_p2p_insufficient_torque_for_planning = false
 v.field_tau_j_range_violation = false
 v.field_instability_detected = false
 return v
}
// @brief Append every canonical field of franka_msgs/msg/Errors.
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
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsMsgErrors :: proc(v: ^Ros2Franka_msgsMsgErrors, w: ^Writer) -> bool {
 if !put_bool(w,v.field_joint_position_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_position_limits_violation) { return false }
 if !put_bool(w,v.field_self_collision_avoidance_violation) { return false }
 if !put_bool(w,v.field_joint_velocity_violation) { return false }
 if !put_bool(w,v.field_cartesian_velocity_violation) { return false }
 if !put_bool(w,v.field_force_control_safety_violation) { return false }
 if !put_bool(w,v.field_joint_reflex) { return false }
 if !put_bool(w,v.field_cartesian_reflex) { return false }
 if !put_bool(w,v.field_max_goal_pose_deviation_violation) { return false }
 if !put_bool(w,v.field_max_path_pose_deviation_violation) { return false }
 if !put_bool(w,v.field_cartesian_velocity_profile_safety_violation) { return false }
 if !put_bool(w,v.field_joint_position_motion_generator_start_pose_invalid) { return false }
 if !put_bool(w,v.field_joint_motion_generator_position_limits_violation) { return false }
 if !put_bool(w,v.field_joint_motion_generator_velocity_limits_violation) { return false }
 if !put_bool(w,v.field_joint_motion_generator_velocity_discontinuity) { return false }
 if !put_bool(w,v.field_joint_motion_generator_acceleration_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_position_motion_generator_start_pose_invalid) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_elbow_limit_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_velocity_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_velocity_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_acceleration_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_elbow_sign_inconsistent) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_start_elbow_invalid) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_position_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_velocity_limits_violation) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_velocity_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_motion_generator_joint_acceleration_discontinuity) { return false }
 if !put_bool(w,v.field_cartesian_position_motion_generator_invalid_frame) { return false }
 if !put_bool(w,v.field_force_controller_desired_force_tolerance_violation) { return false }
 if !put_bool(w,v.field_controller_torque_discontinuity) { return false }
 if !put_bool(w,v.field_start_elbow_sign_inconsistent) { return false }
 if !put_bool(w,v.field_communication_constraints_violation) { return false }
 if !put_bool(w,v.field_power_limit_violation) { return false }
 if !put_bool(w,v.field_joint_p2p_insufficient_torque_for_planning) { return false }
 if !put_bool(w,v.field_tau_j_range_violation) { return false }
 if !put_bool(w,v.field_instability_detected) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/msg/Errors.
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
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsMsgErrors :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgErrors,bool) {
 v:=init_Ros2Franka_msgsMsgErrors()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_self_collision_avoidance_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_velocity_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_velocity_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_force_control_safety_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_reflex=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_reflex=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_max_goal_pose_deviation_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_max_path_pose_deviation_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_velocity_profile_safety_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_position_motion_generator_start_pose_invalid=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_velocity_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_velocity_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_motion_generator_acceleration_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_position_motion_generator_start_pose_invalid=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_elbow_limit_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_velocity_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_velocity_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_acceleration_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_elbow_sign_inconsistent=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_start_elbow_invalid=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_position_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_velocity_limits_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_velocity_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_motion_generator_joint_acceleration_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_cartesian_position_motion_generator_invalid_frame=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_force_controller_desired_force_tolerance_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_controller_torque_discontinuity=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_start_elbow_sign_inconsistent=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_communication_constraints_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_power_limit_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_joint_p2p_insufficient_torque_for_planning=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_tau_j_range_violation=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_instability_detected=bool(b)
 }
 return v,true
}
// @brief Encode one complete franka_msgs/msg/Errors value.
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
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsMsgErrors :: proc(v: ^Ros2Franka_msgsMsgErrors, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=36}
 if !write_Ros2Franka_msgsMsgErrors(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=36}
 if !write_Ros2Franka_msgsMsgErrors(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/msg/Errors value.
// @details Require the complete 36..36-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsMsgErrors; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsMsgErrors :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Franka_msgsMsgErrors,u32) {
 if len(bytes)<36 || len(bytes)>36 { return Ros2Franka_msgsMsgErrors{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsMsgErrors(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsMsgErrors{},reader.code }
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
// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..1248 bytes and
// is identified by UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3.
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
 // @brief sensor_msgs/msg/JointState.name: string; 0..7 elements; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_name: []string,
 // @brief sensor_msgs/msg/JointState.position: float64; 0..7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief sensor_msgs/msg/JointState.velocity: float64; 0..7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief sensor_msgs/msg/JointState.effort: float64; 0..7 elements.
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
// @details The inclusive bound is 1248 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Maximum_Wire_Bytes :: 1248
// @brief Canonical codec identity of sensor_msgs/msg/JointState.
// @details Exact identity UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Sensor_msgsMsgJointState_Codec_Identity :: "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3"
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
 if len(v.field_name)>7 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,128) { return false }
 }
 if len(v.field_position)>7 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>7 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>7 { w.code=22; return false }
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
 if n>7 { r.code=22; return v,false }
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
 if n>7 { r.code=22; return v,false }
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
 if n>7 { r.code=22; return v,false }
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
 if n>7 { r.code=22; return v,false }
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
 measure:=Writer{measuring=true,limit=1248}
 if !write_Ros2Sensor_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1248}
 if !write_Ros2Sensor_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
// @details Require the complete 28..1248-byte canonical representation. Reject truncation, invalid fields and trailing
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
 if len(bytes)<28 || len(bytes)>1248 { return Ros2Sensor_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Sensor_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Sensor_msgsMsgJointState{},reader.code }
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
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
// is identified by UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66.
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
// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped_Maximum_Wire_Bytes :: 188
// @brief Canonical codec identity of geometry_msgs/msg/WrenchStamped.
// @details Exact identity UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgWrenchStamped_Codec_Identity :: "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66"
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
 measure:=Writer{measuring=true,limit=188}
 if !write_Ros2Geometry_msgsMsgWrenchStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=188}
 if !write_Ros2Geometry_msgsMsgWrenchStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/WrenchStamped value.
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
// @see Ros2Geometry_msgsMsgWrenchStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgWrenchStamped :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Geometry_msgsMsgWrenchStamped,u32) {
 if len(bytes)<60 || len(bytes)>188 { return Ros2Geometry_msgsMsgWrenchStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgWrenchStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Inertia value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 80..80 bytes and
// is identified by UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertia :: struct {
 // @brief geometry_msgs/msg/Inertia.m: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_m: f64,
 // @brief geometry_msgs/msg/Inertia.com: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_com: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Inertia.ixx: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_ixx: f64,
 // @brief geometry_msgs/msg/Inertia.ixy: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_ixy: f64,
 // @brief geometry_msgs/msg/Inertia.ixz: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_ixz: f64,
 // @brief geometry_msgs/msg/Inertia.iyy: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_iyy: f64,
 // @brief geometry_msgs/msg/Inertia.iyz: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_iyz: f64,
 // @brief geometry_msgs/msg/Inertia.izz: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
 field_izz: f64,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Inertia in bytes.
// @details The inclusive bound is 80 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertia_Maximum_Wire_Bytes :: 80
// @brief Canonical codec identity of geometry_msgs/msg/Inertia.
// @details Exact identity UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertia_Codec_Identity :: "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a"
// @brief Original ROS type name for geometry_msgs/msg/Inertia.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertia_Native_Type :: "geometry_msgs/msg/Inertia"
// @brief Selected original native identity for geometry_msgs/msg/Inertia.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertia_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Inertia.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgInertia :: proc() -> Ros2Geometry_msgsMsgInertia {
 v: Ros2Geometry_msgsMsgInertia
 v.field_m = 0
 v.field_com = Ros2Geometry_msgsMsgVector3{}
 v.field_ixx = 0
 v.field_ixy = 0
 v.field_ixz = 0
 v.field_iyy = 0
 v.field_iyz = 0
 v.field_izz = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Inertia.
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
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgInertia :: proc(v: ^Ros2Geometry_msgsMsgInertia, w: ^Writer) -> bool {
 if !put_float64(w,v.field_m) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_com,w) { return false }
 if !put_float64(w,v.field_ixx) { return false }
 if !put_float64(w,v.field_ixy) { return false }
 if !put_float64(w,v.field_ixz) { return false }
 if !put_float64(w,v.field_iyy) { return false }
 if !put_float64(w,v.field_iyz) { return false }
 if !put_float64(w,v.field_izz) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Inertia.
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
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgInertia :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgInertia,bool) {
 v:=init_Ros2Geometry_msgsMsgInertia()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_m=f64(b)
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_com=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_ixx=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_ixy=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_ixz=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_iyy=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_iyz=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_izz=f64(b)
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Inertia value.
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
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgInertia :: proc(v: ^Ros2Geometry_msgsMsgInertia, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=80}
 if !write_Ros2Geometry_msgsMsgInertia(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=80}
 if !write_Ros2Geometry_msgsMsgInertia(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Inertia value.
// @details Require the complete 80..80-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Geometry_msgsMsgInertia; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgInertia :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgInertia,u32) {
 if len(bytes)<80 || len(bytes)>80 { return Ros2Geometry_msgsMsgInertia{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgInertia(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgInertia{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/InertiaStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 92..220 bytes and
// is identified by UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertiaStamped :: struct {
 // @brief geometry_msgs/msg/InertiaStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/InertiaStamped.inertia: geometry_msgs/msg/Inertia.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
 field_inertia: Ros2Geometry_msgsMsgInertia,
}
// @brief Maximum canonical extent of geometry_msgs/msg/InertiaStamped in bytes.
// @details The inclusive bound is 220 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertiaStamped_Maximum_Wire_Bytes :: 220
// @brief Canonical codec identity of geometry_msgs/msg/InertiaStamped.
// @details Exact identity UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertiaStamped_Codec_Identity :: "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576"
// @brief Original ROS type name for geometry_msgs/msg/InertiaStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertiaStamped_Native_Type :: "geometry_msgs/msg/InertiaStamped"
// @brief Selected original native identity for geometry_msgs/msg/InertiaStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgInertiaStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/InertiaStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgInertiaStamped :: proc() -> Ros2Geometry_msgsMsgInertiaStamped {
 v: Ros2Geometry_msgsMsgInertiaStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_inertia = Ros2Geometry_msgsMsgInertia{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/InertiaStamped.
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
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgInertiaStamped :: proc(v: ^Ros2Geometry_msgsMsgInertiaStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgInertia(&v.field_inertia,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/InertiaStamped.
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
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgInertiaStamped :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Geometry_msgsMsgInertiaStamped,bool) {
 v:=init_Ros2Geometry_msgsMsgInertiaStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgInertia(r,allocator); if !ok { return v,false }
 v.field_inertia=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/InertiaStamped value.
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
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgInertiaStamped :: proc(v: ^Ros2Geometry_msgsMsgInertiaStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=220}
 if !write_Ros2Geometry_msgsMsgInertiaStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=220}
 if !write_Ros2Geometry_msgsMsgInertiaStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/InertiaStamped value.
// @details Require the complete 92..220-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Geometry_msgsMsgInertiaStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgInertiaStamped :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Geometry_msgsMsgInertiaStamped,u32) {
 if len(bytes)<92 || len(bytes)>220 { return Ros2Geometry_msgsMsgInertiaStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgInertiaStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgInertiaStamped{},reader.code }
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
// @details All 2 declared fields are retained in source order. The canonical representation occupies 68..196 bytes and
// is identified by UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2.
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
// @details The inclusive bound is 196 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped_Maximum_Wire_Bytes :: 196
// @brief Canonical codec identity of geometry_msgs/msg/PoseStamped.
// @details Exact identity UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgPoseStamped_Codec_Identity :: "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"
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
 measure:=Writer{measuring=true,limit=196}
 if !write_Ros2Geometry_msgsMsgPoseStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=196}
 if !write_Ros2Geometry_msgsMsgPoseStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/PoseStamped value.
// @details Require the complete 68..196-byte canonical representation. Reject truncation, invalid fields and trailing
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
 if len(bytes)<68 || len(bytes)>196 { return Ros2Geometry_msgsMsgPoseStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgPoseStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgPoseStamped{},reader.code }
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
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
// is identified by UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573.
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
// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped_Maximum_Wire_Bytes :: 188
// @brief Canonical codec identity of geometry_msgs/msg/TwistStamped.
// @details Exact identity UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgTwistStamped_Codec_Identity :: "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
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
 measure:=Writer{measuring=true,limit=188}
 if !write_Ros2Geometry_msgsMsgTwistStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=188}
 if !write_Ros2Geometry_msgsMsgTwistStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/TwistStamped value.
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
// @see Ros2Geometry_msgsMsgTwistStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgTwistStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgTwistStamped,u32)
        {
 if len(bytes)<60 || len(bytes)>188 { return Ros2Geometry_msgsMsgTwistStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgTwistStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgTwistStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Accel value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel :: struct {
 // @brief geometry_msgs/msg/Accel.linear: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
 field_linear: Ros2Geometry_msgsMsgVector3,
 // @brief geometry_msgs/msg/Accel.angular: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
 field_angular: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Accel in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/msg/Accel.
// @details Exact identity UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Codec_Identity :: "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde"
// @brief Original ROS type name for geometry_msgs/msg/Accel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Native_Type :: "geometry_msgs/msg/Accel"
// @brief Selected original native identity for geometry_msgs/msg/Accel.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccel_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Accel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgAccel :: proc() -> Ros2Geometry_msgsMsgAccel {
 v: Ros2Geometry_msgsMsgAccel
 v.field_linear = Ros2Geometry_msgsMsgVector3{}
 v.field_angular = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Accel.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgAccel :: proc(v: ^Ros2Geometry_msgsMsgAccel, w: ^Writer) -> bool {
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_linear,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Accel.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgAccel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgAccel,bool) {
 v:=init_Ros2Geometry_msgsMsgAccel()
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
// @brief Encode one complete geometry_msgs/msg/Accel value.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgAccel :: proc(v: ^Ros2Geometry_msgsMsgAccel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Geometry_msgsMsgAccel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Geometry_msgsMsgAccel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Accel value.
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
// @see Ros2Geometry_msgsMsgAccel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgAccel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgAccel,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Geometry_msgsMsgAccel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgAccel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgAccel{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/AccelStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes and
// is identified by UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccelStamped :: struct {
 // @brief geometry_msgs/msg/AccelStamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/AccelStamped.accel: geometry_msgs/msg/Accel.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
 field_accel: Ros2Geometry_msgsMsgAccel,
}
// @brief Maximum canonical extent of geometry_msgs/msg/AccelStamped in bytes.
// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccelStamped_Maximum_Wire_Bytes :: 188
// @brief Canonical codec identity of geometry_msgs/msg/AccelStamped.
// @details Exact identity UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccelStamped_Codec_Identity :: "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899"
// @brief Original ROS type name for geometry_msgs/msg/AccelStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccelStamped_Native_Type :: "geometry_msgs/msg/AccelStamped"
// @brief Selected original native identity for geometry_msgs/msg/AccelStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgAccelStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/AccelStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgAccelStamped :: proc() -> Ros2Geometry_msgsMsgAccelStamped {
 v: Ros2Geometry_msgsMsgAccelStamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_accel = Ros2Geometry_msgsMsgAccel{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/AccelStamped.
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
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgAccelStamped :: proc(v: ^Ros2Geometry_msgsMsgAccelStamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgAccel(&v.field_accel,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/AccelStamped.
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
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgAccelStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgAccelStamped,bool) {
 v:=init_Ros2Geometry_msgsMsgAccelStamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgAccel(r,allocator); if !ok { return v,false }
 v.field_accel=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/AccelStamped value.
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
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgAccelStamped :: proc(v: ^Ros2Geometry_msgsMsgAccelStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=188}
 if !write_Ros2Geometry_msgsMsgAccelStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=188}
 if !write_Ros2Geometry_msgsMsgAccelStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/AccelStamped value.
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
// @see Ros2Geometry_msgsMsgAccelStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgAccelStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Geometry_msgsMsgAccelStamped,u32)
        {
 if len(bytes)<60 || len(bytes)>188 { return Ros2Geometry_msgsMsgAccelStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgAccelStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgAccelStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 geometry_msgs/msg/Vector3Stamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 36..164 bytes and
// is identified by UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3Stamped :: struct {
 // @brief geometry_msgs/msg/Vector3Stamped.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief geometry_msgs/msg/Vector3Stamped.vector: geometry_msgs/msg/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
 field_vector: Ros2Geometry_msgsMsgVector3,
}
// @brief Maximum canonical extent of geometry_msgs/msg/Vector3Stamped in bytes.
// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3Stamped_Maximum_Wire_Bytes :: 164
// @brief Canonical codec identity of geometry_msgs/msg/Vector3Stamped.
// @details Exact identity UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3Stamped_Codec_Identity :: "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"
// @brief Original ROS type name for geometry_msgs/msg/Vector3Stamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3Stamped_Native_Type :: "geometry_msgs/msg/Vector3Stamped"
// @brief Selected original native identity for geometry_msgs/msg/Vector3Stamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
Ros2Geometry_msgsMsgVector3Stamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/msg/Vector3Stamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Geometry_msgsMsgVector3Stamped :: proc() -> Ros2Geometry_msgsMsgVector3Stamped {
 v: Ros2Geometry_msgsMsgVector3Stamped
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_vector = Ros2Geometry_msgsMsgVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/msg/Vector3Stamped.
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
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Geometry_msgsMsgVector3Stamped :: proc(v: ^Ros2Geometry_msgsMsgVector3Stamped, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Geometry_msgsMsgVector3(&v.field_vector,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3Stamped.
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
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Geometry_msgsMsgVector3Stamped :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Geometry_msgsMsgVector3Stamped,bool) {
 v:=init_Ros2Geometry_msgsMsgVector3Stamped()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3(r,allocator); if !ok { return v,false }
 v.field_vector=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/msg/Vector3Stamped value.
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
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Geometry_msgsMsgVector3Stamped :: proc(v: ^Ros2Geometry_msgsMsgVector3Stamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=164}
 if !write_Ros2Geometry_msgsMsgVector3Stamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=164}
 if !write_Ros2Geometry_msgsMsgVector3Stamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/msg/Vector3Stamped value.
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
// @see Ros2Geometry_msgsMsgVector3Stamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Geometry_msgsMsgVector3Stamped :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Geometry_msgsMsgVector3Stamped,u32) {
 if len(bytes)<36 || len(bytes)>164 { return Ros2Geometry_msgsMsgVector3Stamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Geometry_msgsMsgVector3Stamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Geometry_msgsMsgVector3Stamped{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/msg/FrankaRobotState value.
// @details All 29 declared fields are retained in source order. The canonical representation occupies 1961..10169 bytes
// and is identified by UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState :: struct {
 // @brief franka_msgs/msg/FrankaRobotState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief franka_msgs/msg/FrankaRobotState.collision_indicators: franka_msgs/msg/CollisionIndicators.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_collision_indicators: Ros2Franka_msgsMsgCollisionIndicators,
 // @brief franka_msgs/msg/FrankaRobotState.measured_joint_state: sensor_msgs/msg/JointState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_measured_joint_state: Ros2Sensor_msgsMsgJointState,
 // @brief franka_msgs/msg/FrankaRobotState.desired_joint_state: sensor_msgs/msg/JointState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_desired_joint_state: Ros2Sensor_msgsMsgJointState,
 // @brief franka_msgs/msg/FrankaRobotState.measured_joint_motor_state: sensor_msgs/msg/JointState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_measured_joint_motor_state: Ros2Sensor_msgsMsgJointState,
 // @brief franka_msgs/msg/FrankaRobotState.ddq_d: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_ddq_d: [7]f64,
 // @brief franka_msgs/msg/FrankaRobotState.dtau_j: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_dtau_j: [7]f64,
 // @brief franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered: sensor_msgs/msg/JointState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_tau_ext_hat_filtered: Ros2Sensor_msgsMsgJointState,
 // @brief franka_msgs/msg/FrankaRobotState.elbow: franka_msgs/msg/Elbow.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_elbow: Ros2Franka_msgsMsgElbow,
 // @brief franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_k_f_ext_hat_k: Ros2Geometry_msgsMsgWrenchStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k: geometry_msgs/msg/WrenchStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_f_ext_hat_k: Ros2Geometry_msgsMsgWrenchStamped,
 // @brief franka_msgs/msg/FrankaRobotState.inertia_ee: geometry_msgs/msg/InertiaStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_inertia_ee: Ros2Geometry_msgsMsgInertiaStamped,
 // @brief franka_msgs/msg/FrankaRobotState.inertia_load: geometry_msgs/msg/InertiaStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_inertia_load: Ros2Geometry_msgsMsgInertiaStamped,
 // @brief franka_msgs/msg/FrankaRobotState.inertia_total: geometry_msgs/msg/InertiaStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_inertia_total: Ros2Geometry_msgsMsgInertiaStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_t_ee: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_t_ee: Ros2Geometry_msgsMsgPoseStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_t_ee_d: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_t_ee_d: Ros2Geometry_msgsMsgPoseStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_t_ee_c: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_t_ee_c: Ros2Geometry_msgsMsgPoseStamped,
 // @brief franka_msgs/msg/FrankaRobotState.f_t_ee: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_f_t_ee: Ros2Geometry_msgsMsgPoseStamped,
 // @brief franka_msgs/msg/FrankaRobotState.ee_t_k: geometry_msgs/msg/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_ee_t_k: Ros2Geometry_msgsMsgPoseStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_dp_ee_d: geometry_msgs/msg/TwistStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_dp_ee_d: Ros2Geometry_msgsMsgTwistStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_dp_ee_c: geometry_msgs/msg/TwistStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_dp_ee_c: Ros2Geometry_msgsMsgTwistStamped,
 // @brief franka_msgs/msg/FrankaRobotState.o_ddp_ee_c: geometry_msgs/msg/AccelStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_o_ddp_ee_c: Ros2Geometry_msgsMsgAccelStamped,
 // @brief franka_msgs/msg/FrankaRobotState.time: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_time: f64,
 // @brief franka_msgs/msg/FrankaRobotState.control_command_success_rate: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_control_command_success_rate: f64,
 // @brief franka_msgs/msg/FrankaRobotState.robot_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_robot_mode: u8,
 // @brief franka_msgs/msg/FrankaRobotState.current_errors: franka_msgs/msg/Errors.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_current_errors: Ros2Franka_msgsMsgErrors,
 // @brief franka_msgs/msg/FrankaRobotState.last_motion_errors: franka_msgs/msg/Errors.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_last_motion_errors: Ros2Franka_msgsMsgErrors,
 // @brief franka_msgs/msg/FrankaRobotState.accelerometer_top: geometry_msgs/msg/Vector3Stamped; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_accelerometer_top: [6]Ros2Geometry_msgsMsgVector3Stamped,
 // @brief franka_msgs/msg/FrankaRobotState.accelerometer_bottom: geometry_msgs/msg/Vector3Stamped; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
 field_accelerometer_bottom: [6]Ros2Geometry_msgsMsgVector3Stamped,
}
// @brief Maximum canonical extent of franka_msgs/msg/FrankaRobotState in bytes.
// @details The inclusive bound is 10169 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_Maximum_Wire_Bytes :: 10169
// @brief Canonical codec identity of franka_msgs/msg/FrankaRobotState.
// @details Exact identity UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_Codec_Identity :: "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282"
// @brief Original ROS type name for franka_msgs/msg/FrankaRobotState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_Native_Type :: "franka_msgs/msg/FrankaRobotState"
// @brief Selected original native identity for franka_msgs/msg/FrankaRobotState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_Native_Identity :: ""
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_OTHER: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_OTHER :: u8(0)
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_IDLE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_IDLE :: u8(1)
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_MOVE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_MOVE :: u8(2)
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_GUIDING: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_GUIDING :: u8(3)
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_REFLEX: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_REFLEX :: u8(4)
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_USER_STOPPED: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_USER_STOPPED :: u8(5)
// @brief franka_msgs/msg/FrankaRobotState.ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY :: u8(6)
// @brief Construct the declared defaults of franka_msgs/msg/FrankaRobotState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsMsgFrankaRobotState :: proc() -> Ros2Franka_msgsMsgFrankaRobotState {
 v: Ros2Franka_msgsMsgFrankaRobotState
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_collision_indicators = Ros2Franka_msgsMsgCollisionIndicators{}
 v.field_measured_joint_state = Ros2Sensor_msgsMsgJointState{}
 v.field_desired_joint_state = Ros2Sensor_msgsMsgJointState{}
 v.field_measured_joint_motor_state = Ros2Sensor_msgsMsgJointState{}
 v.field_ddq_d = [7]f64{0,0,0,0,0,0,0}
 v.field_dtau_j = [7]f64{0,0,0,0,0,0,0}
 v.field_tau_ext_hat_filtered = Ros2Sensor_msgsMsgJointState{}
 v.field_elbow = Ros2Franka_msgsMsgElbow{}
 v.field_k_f_ext_hat_k = Ros2Geometry_msgsMsgWrenchStamped{}
 v.field_o_f_ext_hat_k = Ros2Geometry_msgsMsgWrenchStamped{}
 v.field_inertia_ee = Ros2Geometry_msgsMsgInertiaStamped{}
 v.field_inertia_load = Ros2Geometry_msgsMsgInertiaStamped{}
 v.field_inertia_total = Ros2Geometry_msgsMsgInertiaStamped{}
 v.field_o_t_ee = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_o_t_ee_d = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_o_t_ee_c = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_f_t_ee = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_ee_t_k = Ros2Geometry_msgsMsgPoseStamped{}
 v.field_o_dp_ee_d = Ros2Geometry_msgsMsgTwistStamped{}
 v.field_o_dp_ee_c = Ros2Geometry_msgsMsgTwistStamped{}
 v.field_o_ddp_ee_c = Ros2Geometry_msgsMsgAccelStamped{}
 v.field_time = 0
 v.field_control_command_success_rate = 0
 v.field_robot_mode = 0
 v.field_current_errors = Ros2Franka_msgsMsgErrors{}
 v.field_last_motion_errors = Ros2Franka_msgsMsgErrors{}
 v.field_accelerometer_top =
         [6]Ros2Geometry_msgsMsgVector3Stamped{Ros2Geometry_msgsMsgVector3Stamped{},Ros2Geometry_msgsMsgVector3Stamped{},
                 Ros2Geometry_msgsMsgVector3Stamped{},Ros2Geometry_msgsMsgVector3Stamped{},Ros2Geometry_msgsMsgVector3Stamped{},
                 Ros2Geometry_msgsMsgVector3Stamped{}}
 v.field_accelerometer_bottom =
         [6]Ros2Geometry_msgsMsgVector3Stamped{Ros2Geometry_msgsMsgVector3Stamped{},Ros2Geometry_msgsMsgVector3Stamped{},
                 Ros2Geometry_msgsMsgVector3Stamped{},Ros2Geometry_msgsMsgVector3Stamped{},Ros2Geometry_msgsMsgVector3Stamped{},
                 Ros2Geometry_msgsMsgVector3Stamped{}}
 return v
}
// @brief Append every canonical field of franka_msgs/msg/FrankaRobotState.
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
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsMsgFrankaRobotState :: proc(v: ^Ros2Franka_msgsMsgFrankaRobotState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !write_Ros2Franka_msgsMsgCollisionIndicators(&v.field_collision_indicators,w) { return false }
 if !write_Ros2Sensor_msgsMsgJointState(&v.field_measured_joint_state,w) { return false }
 if !write_Ros2Sensor_msgsMsgJointState(&v.field_desired_joint_state,w) { return false }
 if !write_Ros2Sensor_msgsMsgJointState(&v.field_measured_joint_motor_state,w) { return false }
 for e in v.field_ddq_d {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_dtau_j {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros2Sensor_msgsMsgJointState(&v.field_tau_ext_hat_filtered,w) { return false }
 if !write_Ros2Franka_msgsMsgElbow(&v.field_elbow,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_k_f_ext_hat_k,w) { return false }
 if !write_Ros2Geometry_msgsMsgWrenchStamped(&v.field_o_f_ext_hat_k,w) { return false }
 if !write_Ros2Geometry_msgsMsgInertiaStamped(&v.field_inertia_ee,w) { return false }
 if !write_Ros2Geometry_msgsMsgInertiaStamped(&v.field_inertia_load,w) { return false }
 if !write_Ros2Geometry_msgsMsgInertiaStamped(&v.field_inertia_total,w) { return false }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_o_t_ee,w) { return false }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_o_t_ee_d,w) { return false }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_o_t_ee_c,w) { return false }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_f_t_ee,w) { return false }
 if !write_Ros2Geometry_msgsMsgPoseStamped(&v.field_ee_t_k,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwistStamped(&v.field_o_dp_ee_d,w) { return false }
 if !write_Ros2Geometry_msgsMsgTwistStamped(&v.field_o_dp_ee_c,w) { return false }
 if !write_Ros2Geometry_msgsMsgAccelStamped(&v.field_o_ddp_ee_c,w) { return false }
 if !put_float64(w,v.field_time) { return false }
 if !put_float64(w,v.field_control_command_success_rate) { return false }
 if !put_integer(w,u64(v.field_robot_mode),1) { return false }
 if !write_Ros2Franka_msgsMsgErrors(&v.field_current_errors,w) { return false }
 if !write_Ros2Franka_msgsMsgErrors(&v.field_last_motion_errors,w) { return false }
 for e in v.field_accelerometer_top {
 item:=e
 if !write_Ros2Geometry_msgsMsgVector3Stamped(&item,w) { return false }
 }
 for e in v.field_accelerometer_bottom {
 item:=e
 if !write_Ros2Geometry_msgsMsgVector3Stamped(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/msg/FrankaRobotState.
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
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsMsgFrankaRobotState :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsMsgFrankaRobotState,bool) {
 v:=init_Ros2Franka_msgsMsgFrankaRobotState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Franka_msgsMsgCollisionIndicators(r,allocator); if !ok { return v,false }
 v.field_collision_indicators=b
 }
 {
 b,ok:=read_Ros2Sensor_msgsMsgJointState(r,allocator); if !ok { return v,false }
 v.field_measured_joint_state=b
 }
 {
 b,ok:=read_Ros2Sensor_msgsMsgJointState(r,allocator); if !ok { return v,false }
 v.field_desired_joint_state=b
 }
 {
 b,ok:=read_Ros2Sensor_msgsMsgJointState(r,allocator); if !ok { return v,false }
 v.field_measured_joint_motor_state=b
 }
 for &e in v.field_ddq_d {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_dtau_j {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros2Sensor_msgsMsgJointState(r,allocator); if !ok { return v,false }
 v.field_tau_ext_hat_filtered=b
 }
 {
 b,ok:=read_Ros2Franka_msgsMsgElbow(r,allocator); if !ok { return v,false }
 v.field_elbow=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_k_f_ext_hat_k=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgWrenchStamped(r,allocator); if !ok { return v,false }
 v.field_o_f_ext_hat_k=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgInertiaStamped(r,allocator); if !ok { return v,false }
 v.field_inertia_ee=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgInertiaStamped(r,allocator); if !ok { return v,false }
 v.field_inertia_load=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgInertiaStamped(r,allocator); if !ok { return v,false }
 v.field_inertia_total=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_o_t_ee=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_o_t_ee_d=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_o_t_ee_c=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_f_t_ee=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgPoseStamped(r,allocator); if !ok { return v,false }
 v.field_ee_t_k=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwistStamped(r,allocator); if !ok { return v,false }
 v.field_o_dp_ee_d=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgTwistStamped(r,allocator); if !ok { return v,false }
 v.field_o_dp_ee_c=b
 }
 {
 b,ok:=read_Ros2Geometry_msgsMsgAccelStamped(r,allocator); if !ok { return v,false }
 v.field_o_ddp_ee_c=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_time=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_control_command_success_rate=f64(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_robot_mode=u8(b)
 }
 {
 b,ok:=read_Ros2Franka_msgsMsgErrors(r,allocator); if !ok { return v,false }
 v.field_current_errors=b
 }
 {
 b,ok:=read_Ros2Franka_msgsMsgErrors(r,allocator); if !ok { return v,false }
 v.field_last_motion_errors=b
 }
 for &e in v.field_accelerometer_top {
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3Stamped(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 for &e in v.field_accelerometer_bottom {
 {
 b,ok:=read_Ros2Geometry_msgsMsgVector3Stamped(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/msg/FrankaRobotState value.
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
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsMsgFrankaRobotState :: proc(v: ^Ros2Franka_msgsMsgFrankaRobotState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10169}
 if !write_Ros2Franka_msgsMsgFrankaRobotState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10169}
 if !write_Ros2Franka_msgsMsgFrankaRobotState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/msg/FrankaRobotState value.
// @details Require the complete 1961..10169-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
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
// @see Ros2Franka_msgsMsgFrankaRobotState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsMsgFrankaRobotState :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsMsgFrankaRobotState,u32) {
 if len(bytes)<1961 || len(bytes)>10169 { return Ros2Franka_msgsMsgFrankaRobotState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsMsgFrankaRobotState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsMsgFrankaRobotState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetCartesianStiffness_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Request :: struct {
 // @brief franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
 field_cartesian_stiffness: [6]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetCartesianStiffness_Request in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Request_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of franka_msgs/srv/SetCartesianStiffness_Request.
// @details Exact identity UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Request_Codec_Identity ::
        "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260"
// @brief Original ROS type name for franka_msgs/srv/SetCartesianStiffness_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Request_Native_Type :: "franka_msgs/srv/SetCartesianStiffness_Request"
// @brief Selected original native identity for franka_msgs/srv/SetCartesianStiffness_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetCartesianStiffness_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetCartesianStiffness_Request :: proc() -> Ros2Franka_msgsSrvSetCartesianStiffness_Request {
 v: Ros2Franka_msgsSrvSetCartesianStiffness_Request
 v.field_cartesian_stiffness = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetCartesianStiffness_Request.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetCartesianStiffness_Request :: proc(v: ^Ros2Franka_msgsSrvSetCartesianStiffness_Request, w: ^Writer) ->
        bool {
 for e in v.field_cartesian_stiffness {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetCartesianStiffness_Request.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetCartesianStiffness_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetCartesianStiffness_Request,bool) {
 v:=init_Ros2Franka_msgsSrvSetCartesianStiffness_Request()
 for &e in v.field_cartesian_stiffness {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetCartesianStiffness_Request value.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetCartesianStiffness_Request :: proc(v: ^Ros2Franka_msgsSrvSetCartesianStiffness_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros2Franka_msgsSrvSetCartesianStiffness_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros2Franka_msgsSrvSetCartesianStiffness_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetCartesianStiffness_Request value.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetCartesianStiffness_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetCartesianStiffness_Request,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros2Franka_msgsSrvSetCartesianStiffness_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetCartesianStiffness_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetCartesianStiffness_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetCartesianStiffness_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Response :: struct {
 // @brief franka_msgs/srv/SetCartesianStiffness_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetCartesianStiffness_Response.error: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetCartesianStiffness_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetCartesianStiffness_Response.
// @details Exact identity UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Response_Codec_Identity ::
        "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa"
// @brief Original ROS type name for franka_msgs/srv/SetCartesianStiffness_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Response_Native_Type :: "franka_msgs/srv/SetCartesianStiffness_Response"
// @brief Selected original native identity for franka_msgs/srv/SetCartesianStiffness_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetCartesianStiffness_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetCartesianStiffness_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetCartesianStiffness_Response :: proc() -> Ros2Franka_msgsSrvSetCartesianStiffness_Response {
 v: Ros2Franka_msgsSrvSetCartesianStiffness_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetCartesianStiffness_Response.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetCartesianStiffness_Response :: proc(v: ^Ros2Franka_msgsSrvSetCartesianStiffness_Response, w: ^Writer) ->
        bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetCartesianStiffness_Response.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetCartesianStiffness_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetCartesianStiffness_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetCartesianStiffness_Response()
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
// @brief Encode one complete franka_msgs/srv/SetCartesianStiffness_Response value.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetCartesianStiffness_Response :: proc(v: ^Ros2Franka_msgsSrvSetCartesianStiffness_Response, output: []u8)
        -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetCartesianStiffness_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetCartesianStiffness_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetCartesianStiffness_Response value.
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
// @see Ros2Franka_msgsSrvSetCartesianStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetCartesianStiffness_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetCartesianStiffness_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetCartesianStiffness_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetCartesianStiffness_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetCartesianStiffness_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 208..208 bytes and
// is identified by UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: struct {
 // @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_lower_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_upper_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal: float64; exactly 6
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_lower_force_thresholds_nominal: [6]f64,
 // @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal: float64; exactly 6
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_upper_force_thresholds_nominal: [6]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request in bytes.
// @details The inclusive bound is 208 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_Maximum_Wire_Bytes :: 208
// @brief Canonical codec identity of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
// @details Exact identity UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_Codec_Identity ::
        "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c"
// @brief Original ROS type name for franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_Native_Type :: "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request"
// @brief Selected original native identity for franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: proc() ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request {
 v: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
 v.field_lower_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_upper_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_lower_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 v.field_upper_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: proc(v:
        ^Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request, w: ^Writer) -> bool {
 for e in v.field_lower_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request,bool) {
 v:=init_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request()
 for &e in v.field_lower_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: proc(v:
        ^Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=208}
 if !write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=208}
 if !write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value.
// @details Require the complete 208..208-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request,u32) {
 if len(bytes)<208 || len(bytes)>208 { return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: struct {
 // @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error: string; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
// @details Exact identity UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_Codec_Identity ::
        "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a"
// @brief Original ROS type name for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_Native_Type :: "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response"
// @brief Selected original native identity for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: proc() ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response {
 v: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: proc(v:
        ^Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response()
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
// @brief Encode one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: proc(v:
        ^Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value.
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
// @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetFullCollisionBehavior_Request value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 416..416 bytes and
// is identified by UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Request :: struct {
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_lower_torque_thresholds_acceleration: [7]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_upper_torque_thresholds_acceleration: [7]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_lower_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal: float64; exactly 7
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_upper_torque_thresholds_nominal: [7]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration: float64; exactly 6
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_lower_force_thresholds_acceleration: [6]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration: float64; exactly 6
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_upper_force_thresholds_acceleration: [6]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_lower_force_thresholds_nominal: [6]f64,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal: float64; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
 field_upper_force_thresholds_nominal: [6]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetFullCollisionBehavior_Request in bytes.
// @details The inclusive bound is 416 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_Maximum_Wire_Bytes :: 416
// @brief Canonical codec identity of franka_msgs/srv/SetFullCollisionBehavior_Request.
// @details Exact identity UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_Codec_Identity ::
        "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824"
// @brief Original ROS type name for franka_msgs/srv/SetFullCollisionBehavior_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_Native_Type :: "franka_msgs/srv/SetFullCollisionBehavior_Request"
// @brief Selected original native identity for franka_msgs/srv/SetFullCollisionBehavior_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetFullCollisionBehavior_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request :: proc() -> Ros2Franka_msgsSrvSetFullCollisionBehavior_Request {
 v: Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
 v.field_lower_torque_thresholds_acceleration = [7]f64{0,0,0,0,0,0,0}
 v.field_upper_torque_thresholds_acceleration = [7]f64{0,0,0,0,0,0,0}
 v.field_lower_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_upper_torque_thresholds_nominal = [7]f64{0,0,0,0,0,0,0}
 v.field_lower_force_thresholds_acceleration = [6]f64{0,0,0,0,0,0}
 v.field_upper_force_thresholds_acceleration = [6]f64{0,0,0,0,0,0}
 v.field_lower_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 v.field_upper_force_thresholds_nominal = [6]f64{0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetFullCollisionBehavior_Request.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request :: proc(v: ^Ros2Franka_msgsSrvSetFullCollisionBehavior_Request, w: ^Writer)
        -> bool {
 for e in v.field_lower_torque_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_torque_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_torque_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_force_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_force_thresholds_acceleration {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_lower_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_upper_force_thresholds_nominal {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetFullCollisionBehavior_Request.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetFullCollisionBehavior_Request,bool) {
 v:=init_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request()
 for &e in v.field_lower_torque_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_torque_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_torque_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_force_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_force_thresholds_acceleration {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_lower_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_upper_force_thresholds_nominal {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetFullCollisionBehavior_Request value.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request :: proc(v: ^Ros2Franka_msgsSrvSetFullCollisionBehavior_Request, output:
        []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=416}
 if !write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=416}
 if !write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetFullCollisionBehavior_Request value.
// @details Require the complete 416..416-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetFullCollisionBehavior_Request,u32) {
 if len(bytes)<416 || len(bytes)>416 { return Ros2Franka_msgsSrvSetFullCollisionBehavior_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetFullCollisionBehavior_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetFullCollisionBehavior_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Response :: struct {
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetFullCollisionBehavior_Response.error: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetFullCollisionBehavior_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetFullCollisionBehavior_Response.
// @details Exact identity UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_Codec_Identity ::
        "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300"
// @brief Original ROS type name for franka_msgs/srv/SetFullCollisionBehavior_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_Native_Type :: "franka_msgs/srv/SetFullCollisionBehavior_Response"
// @brief Selected original native identity for franka_msgs/srv/SetFullCollisionBehavior_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetFullCollisionBehavior_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetFullCollisionBehavior_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response :: proc() -> Ros2Franka_msgsSrvSetFullCollisionBehavior_Response {
 v: Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetFullCollisionBehavior_Response.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response :: proc(v: ^Ros2Franka_msgsSrvSetFullCollisionBehavior_Response, w:
        ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetFullCollisionBehavior_Response.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetFullCollisionBehavior_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response()
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
// @brief Encode one complete franka_msgs/srv/SetFullCollisionBehavior_Response value.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response :: proc(v: ^Ros2Franka_msgsSrvSetFullCollisionBehavior_Response, output:
        []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetFullCollisionBehavior_Response value.
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
// @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetFullCollisionBehavior_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetFullCollisionBehavior_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetFullCollisionBehavior_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetJointStiffness_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
// is identified by UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Request :: struct {
 // @brief franka_msgs/srv/SetJointStiffness_Request.joint_stiffness: float64; exactly 7 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_stiffness: [7]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetJointStiffness_Request in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Request_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of franka_msgs/srv/SetJointStiffness_Request.
// @details Exact identity UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Request_Codec_Identity ::
        "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c"
// @brief Original ROS type name for franka_msgs/srv/SetJointStiffness_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Request_Native_Type :: "franka_msgs/srv/SetJointStiffness_Request"
// @brief Selected original native identity for franka_msgs/srv/SetJointStiffness_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetJointStiffness_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetJointStiffness_Request :: proc() -> Ros2Franka_msgsSrvSetJointStiffness_Request {
 v: Ros2Franka_msgsSrvSetJointStiffness_Request
 v.field_joint_stiffness = [7]f64{0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetJointStiffness_Request.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetJointStiffness_Request :: proc(v: ^Ros2Franka_msgsSrvSetJointStiffness_Request, w: ^Writer) -> bool {
 for e in v.field_joint_stiffness {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetJointStiffness_Request.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetJointStiffness_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetJointStiffness_Request,bool) {
 v:=init_Ros2Franka_msgsSrvSetJointStiffness_Request()
 for &e in v.field_joint_stiffness {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetJointStiffness_Request value.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetJointStiffness_Request :: proc(v: ^Ros2Franka_msgsSrvSetJointStiffness_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros2Franka_msgsSrvSetJointStiffness_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros2Franka_msgsSrvSetJointStiffness_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetJointStiffness_Request value.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetJointStiffness_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetJointStiffness_Request,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros2Franka_msgsSrvSetJointStiffness_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetJointStiffness_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetJointStiffness_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetJointStiffness_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Response :: struct {
 // @brief franka_msgs/srv/SetJointStiffness_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetJointStiffness_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetJointStiffness_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetJointStiffness_Response.
// @details Exact identity UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Response_Codec_Identity ::
        "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d"
// @brief Original ROS type name for franka_msgs/srv/SetJointStiffness_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Response_Native_Type :: "franka_msgs/srv/SetJointStiffness_Response"
// @brief Selected original native identity for franka_msgs/srv/SetJointStiffness_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetJointStiffness_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetJointStiffness_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetJointStiffness_Response :: proc() -> Ros2Franka_msgsSrvSetJointStiffness_Response {
 v: Ros2Franka_msgsSrvSetJointStiffness_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetJointStiffness_Response.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetJointStiffness_Response :: proc(v: ^Ros2Franka_msgsSrvSetJointStiffness_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetJointStiffness_Response.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetJointStiffness_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetJointStiffness_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetJointStiffness_Response()
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
// @brief Encode one complete franka_msgs/srv/SetJointStiffness_Response value.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetJointStiffness_Response :: proc(v: ^Ros2Franka_msgsSrvSetJointStiffness_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetJointStiffness_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetJointStiffness_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetJointStiffness_Response value.
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
// @see Ros2Franka_msgsSrvSetJointStiffness_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetJointStiffness_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetJointStiffness_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetJointStiffness_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetJointStiffness_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetJointStiffness_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetLoad_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 104..104 bytes and
// is identified by UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Request :: struct {
 // @brief franka_msgs/srv/SetLoad_Request.mass: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
 field_mass: f64,
 // @brief franka_msgs/srv/SetLoad_Request.center_of_mass: float64; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
 field_center_of_mass: [3]f64,
 // @brief franka_msgs/srv/SetLoad_Request.load_inertia: float64; exactly 9 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
 field_load_inertia: [9]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetLoad_Request in bytes.
// @details The inclusive bound is 104 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Request_Maximum_Wire_Bytes :: 104
// @brief Canonical codec identity of franka_msgs/srv/SetLoad_Request.
// @details Exact identity UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Request_Codec_Identity :: "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8"
// @brief Original ROS type name for franka_msgs/srv/SetLoad_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Request_Native_Type :: "franka_msgs/srv/SetLoad_Request"
// @brief Selected original native identity for franka_msgs/srv/SetLoad_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetLoad_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetLoad_Request :: proc() -> Ros2Franka_msgsSrvSetLoad_Request {
 v: Ros2Franka_msgsSrvSetLoad_Request
 v.field_mass = 0
 v.field_center_of_mass = [3]f64{0,0,0}
 v.field_load_inertia = [9]f64{0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetLoad_Request.
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
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetLoad_Request :: proc(v: ^Ros2Franka_msgsSrvSetLoad_Request, w: ^Writer) -> bool {
 if !put_float64(w,v.field_mass) { return false }
 for e in v.field_center_of_mass {
 if !put_float64(w,e) { return false }
 }
 for e in v.field_load_inertia {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetLoad_Request.
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
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetLoad_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Franka_msgsSrvSetLoad_Request,bool)
        {
 v:=init_Ros2Franka_msgsSrvSetLoad_Request()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_mass=f64(b)
 }
 for &e in v.field_center_of_mass {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 for &e in v.field_load_inertia {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetLoad_Request value.
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
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetLoad_Request :: proc(v: ^Ros2Franka_msgsSrvSetLoad_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=104}
 if !write_Ros2Franka_msgsSrvSetLoad_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=104}
 if !write_Ros2Franka_msgsSrvSetLoad_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetLoad_Request value.
// @details Require the complete 104..104-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsSrvSetLoad_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetLoad_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetLoad_Request,u32) {
 if len(bytes)<104 || len(bytes)>104 { return Ros2Franka_msgsSrvSetLoad_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetLoad_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetLoad_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetLoad_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Response :: struct {
 // @brief franka_msgs/srv/SetLoad_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetLoad_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetLoad_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetLoad_Response.
// @details Exact identity UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Response_Codec_Identity :: "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf"
// @brief Original ROS type name for franka_msgs/srv/SetLoad_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Response_Native_Type :: "franka_msgs/srv/SetLoad_Response"
// @brief Selected original native identity for franka_msgs/srv/SetLoad_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetLoad_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetLoad_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetLoad_Response :: proc() -> Ros2Franka_msgsSrvSetLoad_Response {
 v: Ros2Franka_msgsSrvSetLoad_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetLoad_Response.
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
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetLoad_Response :: proc(v: ^Ros2Franka_msgsSrvSetLoad_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetLoad_Response.
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
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetLoad_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetLoad_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetLoad_Response()
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
// @brief Encode one complete franka_msgs/srv/SetLoad_Response value.
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
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetLoad_Response :: proc(v: ^Ros2Franka_msgsSrvSetLoad_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetLoad_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetLoad_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetLoad_Response value.
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
// @see Ros2Franka_msgsSrvSetLoad_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetLoad_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetLoad_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetLoad_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetLoad_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetLoad_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetStiffnessFrame_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes and
// is identified by UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Request :: struct {
 // @brief franka_msgs/srv/SetStiffnessFrame_Request.transformation: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
 field_transformation: [16]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetStiffnessFrame_Request in bytes.
// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Request_Maximum_Wire_Bytes :: 128
// @brief Canonical codec identity of franka_msgs/srv/SetStiffnessFrame_Request.
// @details Exact identity UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Request_Codec_Identity ::
        "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402"
// @brief Original ROS type name for franka_msgs/srv/SetStiffnessFrame_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Request_Native_Type :: "franka_msgs/srv/SetStiffnessFrame_Request"
// @brief Selected original native identity for franka_msgs/srv/SetStiffnessFrame_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetStiffnessFrame_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetStiffnessFrame_Request :: proc() -> Ros2Franka_msgsSrvSetStiffnessFrame_Request {
 v: Ros2Franka_msgsSrvSetStiffnessFrame_Request
 v.field_transformation = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetStiffnessFrame_Request.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetStiffnessFrame_Request :: proc(v: ^Ros2Franka_msgsSrvSetStiffnessFrame_Request, w: ^Writer) -> bool {
 for e in v.field_transformation {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetStiffnessFrame_Request.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetStiffnessFrame_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetStiffnessFrame_Request,bool) {
 v:=init_Ros2Franka_msgsSrvSetStiffnessFrame_Request()
 for &e in v.field_transformation {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetStiffnessFrame_Request value.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetStiffnessFrame_Request :: proc(v: ^Ros2Franka_msgsSrvSetStiffnessFrame_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=128}
 if !write_Ros2Franka_msgsSrvSetStiffnessFrame_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=128}
 if !write_Ros2Franka_msgsSrvSetStiffnessFrame_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetStiffnessFrame_Request value.
// @details Require the complete 128..128-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetStiffnessFrame_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetStiffnessFrame_Request,u32) {
 if len(bytes)<128 || len(bytes)>128 { return Ros2Franka_msgsSrvSetStiffnessFrame_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetStiffnessFrame_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetStiffnessFrame_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetStiffnessFrame_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Response :: struct {
 // @brief franka_msgs/srv/SetStiffnessFrame_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetStiffnessFrame_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetStiffnessFrame_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetStiffnessFrame_Response.
// @details Exact identity UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Response_Codec_Identity ::
        "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744"
// @brief Original ROS type name for franka_msgs/srv/SetStiffnessFrame_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Response_Native_Type :: "franka_msgs/srv/SetStiffnessFrame_Response"
// @brief Selected original native identity for franka_msgs/srv/SetStiffnessFrame_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetStiffnessFrame_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetStiffnessFrame_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetStiffnessFrame_Response :: proc() -> Ros2Franka_msgsSrvSetStiffnessFrame_Response {
 v: Ros2Franka_msgsSrvSetStiffnessFrame_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetStiffnessFrame_Response.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetStiffnessFrame_Response :: proc(v: ^Ros2Franka_msgsSrvSetStiffnessFrame_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetStiffnessFrame_Response.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetStiffnessFrame_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetStiffnessFrame_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetStiffnessFrame_Response()
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
// @brief Encode one complete franka_msgs/srv/SetStiffnessFrame_Response value.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetStiffnessFrame_Response :: proc(v: ^Ros2Franka_msgsSrvSetStiffnessFrame_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetStiffnessFrame_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetStiffnessFrame_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetStiffnessFrame_Response value.
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
// @see Ros2Franka_msgsSrvSetStiffnessFrame_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetStiffnessFrame_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetStiffnessFrame_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetStiffnessFrame_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetStiffnessFrame_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetStiffnessFrame_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetTCPFrame_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 128..128 bytes and
// is identified by UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Request :: struct {
 // @brief franka_msgs/srv/SetTCPFrame_Request.transformation: float64; exactly 16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
 field_transformation: [16]f64,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetTCPFrame_Request in bytes.
// @details The inclusive bound is 128 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Request_Maximum_Wire_Bytes :: 128
// @brief Canonical codec identity of franka_msgs/srv/SetTCPFrame_Request.
// @details Exact identity UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Request_Codec_Identity :: "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f"
// @brief Original ROS type name for franka_msgs/srv/SetTCPFrame_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Request_Native_Type :: "franka_msgs/srv/SetTCPFrame_Request"
// @brief Selected original native identity for franka_msgs/srv/SetTCPFrame_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetTCPFrame_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetTCPFrame_Request :: proc() -> Ros2Franka_msgsSrvSetTCPFrame_Request {
 v: Ros2Franka_msgsSrvSetTCPFrame_Request
 v.field_transformation = [16]f64{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetTCPFrame_Request.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetTCPFrame_Request :: proc(v: ^Ros2Franka_msgsSrvSetTCPFrame_Request, w: ^Writer) -> bool {
 for e in v.field_transformation {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetTCPFrame_Request.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetTCPFrame_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetTCPFrame_Request,bool) {
 v:=init_Ros2Franka_msgsSrvSetTCPFrame_Request()
 for &e in v.field_transformation {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete franka_msgs/srv/SetTCPFrame_Request value.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetTCPFrame_Request :: proc(v: ^Ros2Franka_msgsSrvSetTCPFrame_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=128}
 if !write_Ros2Franka_msgsSrvSetTCPFrame_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=128}
 if !write_Ros2Franka_msgsSrvSetTCPFrame_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetTCPFrame_Request value.
// @details Require the complete 128..128-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetTCPFrame_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetTCPFrame_Request,u32) {
 if len(bytes)<128 || len(bytes)>128 { return Ros2Franka_msgsSrvSetTCPFrame_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetTCPFrame_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetTCPFrame_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_msgs/srv/SetTCPFrame_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Response :: struct {
 // @brief franka_msgs/srv/SetTCPFrame_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_msgs/srv/SetTCPFrame_Response.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_msgs/srv/SetTCPFrame_Response in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Response_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of franka_msgs/srv/SetTCPFrame_Response.
// @details Exact identity UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Response_Codec_Identity :: "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38"
// @brief Original ROS type name for franka_msgs/srv/SetTCPFrame_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Response_Native_Type :: "franka_msgs/srv/SetTCPFrame_Response"
// @brief Selected original native identity for franka_msgs/srv/SetTCPFrame_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_msgsSrvSetTCPFrame_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_msgs/srv/SetTCPFrame_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_msgsSrvSetTCPFrame_Response :: proc() -> Ros2Franka_msgsSrvSetTCPFrame_Response {
 v: Ros2Franka_msgsSrvSetTCPFrame_Response
 v.field_success = false
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_msgs/srv/SetTCPFrame_Response.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_msgsSrvSetTCPFrame_Response :: proc(v: ^Ros2Franka_msgsSrvSetTCPFrame_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_msgs/srv/SetTCPFrame_Response.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_msgsSrvSetTCPFrame_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetTCPFrame_Response,bool) {
 v:=init_Ros2Franka_msgsSrvSetTCPFrame_Response()
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
// @brief Encode one complete franka_msgs/srv/SetTCPFrame_Response value.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_msgsSrvSetTCPFrame_Response :: proc(v: ^Ros2Franka_msgsSrvSetTCPFrame_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros2Franka_msgsSrvSetTCPFrame_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros2Franka_msgsSrvSetTCPFrame_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_msgs/srv/SetTCPFrame_Response value.
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
// @see Ros2Franka_msgsSrvSetTCPFrame_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_msgsSrvSetTCPFrame_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_msgsSrvSetTCPFrame_Response,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros2Franka_msgsSrvSetTCPFrame_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_msgsSrvSetTCPFrame_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_msgsSrvSetTCPFrame_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/action/MoveAbsolute_Goal value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
// is identified by UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Goal :: struct {
 // @brief franka_spine_msgs/action/MoveAbsolute_Goal.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief franka_spine_msgs/action/MoveAbsolute_Goal.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief franka_spine_msgs/action/MoveAbsolute_Goal.acceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_acceleration: f64,
 // @brief franka_spine_msgs/action/MoveAbsolute_Goal.deceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
 field_deceleration: f64,
}
// @brief Maximum canonical extent of franka_spine_msgs/action/MoveAbsolute_Goal in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Goal_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of franka_spine_msgs/action/MoveAbsolute_Goal.
// @details Exact identity UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Goal_Codec_Identity ::
        "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13"
// @brief Original ROS type name for franka_spine_msgs/action/MoveAbsolute_Goal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Goal_Native_Type :: "franka_spine_msgs/action/MoveAbsolute_Goal"
// @brief Selected original native identity for franka_spine_msgs/action/MoveAbsolute_Goal.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Goal_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/action/MoveAbsolute_Goal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsActionMoveAbsolute_Goal :: proc() -> Ros2Franka_spine_msgsActionMoveAbsolute_Goal {
 v: Ros2Franka_spine_msgsActionMoveAbsolute_Goal
 v.field_position = 0
 v.field_velocity = 0
 v.field_acceleration = 0
 v.field_deceleration = 0
 return v
}
// @brief Append every canonical field of franka_spine_msgs/action/MoveAbsolute_Goal.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsActionMoveAbsolute_Goal :: proc(v: ^Ros2Franka_spine_msgsActionMoveAbsolute_Goal, w: ^Writer) -> bool {
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_acceleration) { return false }
 if !put_float64(w,v.field_deceleration) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/action/MoveAbsolute_Goal.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsActionMoveAbsolute_Goal :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsActionMoveAbsolute_Goal,bool) {
 v:=init_Ros2Franka_spine_msgsActionMoveAbsolute_Goal()
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
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_deceleration=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/action/MoveAbsolute_Goal value.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsActionMoveAbsolute_Goal :: proc(v: ^Ros2Franka_spine_msgsActionMoveAbsolute_Goal, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/action/MoveAbsolute_Goal value.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsActionMoveAbsolute_Goal :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsActionMoveAbsolute_Goal,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros2Franka_spine_msgsActionMoveAbsolute_Goal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsActionMoveAbsolute_Goal{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/action/MoveAbsolute_Result value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
// is identified by UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Result :: struct {
 // @brief franka_spine_msgs/action/MoveAbsolute_Result.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_spine_msgs/action/MoveAbsolute_Result.stop_by: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
 field_stop_by: string,
 // @brief franka_spine_msgs/action/MoveAbsolute_Result.error: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
 field_error: string,
}
// @brief Maximum canonical extent of franka_spine_msgs/action/MoveAbsolute_Result in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Result_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of franka_spine_msgs/action/MoveAbsolute_Result.
// @details Exact identity UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Result_Codec_Identity ::
        "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5"
// @brief Original ROS type name for franka_spine_msgs/action/MoveAbsolute_Result.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Result_Native_Type :: "franka_spine_msgs/action/MoveAbsolute_Result"
// @brief Selected original native identity for franka_spine_msgs/action/MoveAbsolute_Result.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Result_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/action/MoveAbsolute_Result.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsActionMoveAbsolute_Result :: proc() -> Ros2Franka_spine_msgsActionMoveAbsolute_Result {
 v: Ros2Franka_spine_msgsActionMoveAbsolute_Result
 v.field_success = false
 v.field_stop_by = ""
 v.field_error = ""
 return v
}
// @brief Append every canonical field of franka_spine_msgs/action/MoveAbsolute_Result.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsActionMoveAbsolute_Result :: proc(v: ^Ros2Franka_spine_msgsActionMoveAbsolute_Result, w: ^Writer) -> bool
        {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_stop_by,256) { return false }
 if !put_string(w,v.field_error,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/action/MoveAbsolute_Result.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsActionMoveAbsolute_Result :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsActionMoveAbsolute_Result,bool) {
 v:=init_Ros2Franka_spine_msgsActionMoveAbsolute_Result()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_stop_by=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/action/MoveAbsolute_Result value.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsActionMoveAbsolute_Result :: proc(v: ^Ros2Franka_spine_msgsActionMoveAbsolute_Result, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros2Franka_spine_msgsActionMoveAbsolute_Result(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros2Franka_spine_msgsActionMoveAbsolute_Result(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/action/MoveAbsolute_Result value.
// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Result; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsActionMoveAbsolute_Result :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsActionMoveAbsolute_Result,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros2Franka_spine_msgsActionMoveAbsolute_Result{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsActionMoveAbsolute_Result(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsActionMoveAbsolute_Result{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/action/MoveAbsolute_Feedback value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Feedback :: struct {
 // @brief franka_spine_msgs/action/MoveAbsolute_Feedback.current_position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_position: f64,
}
// @brief Maximum canonical extent of franka_spine_msgs/action/MoveAbsolute_Feedback in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of franka_spine_msgs/action/MoveAbsolute_Feedback.
// @details Exact identity UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_Codec_Identity ::
        "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929"
// @brief Original ROS type name for franka_spine_msgs/action/MoveAbsolute_Feedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_Native_Type :: "franka_spine_msgs/action/MoveAbsolute_Feedback"
// @brief Selected original native identity for franka_spine_msgs/action/MoveAbsolute_Feedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsActionMoveAbsolute_Feedback_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/action/MoveAbsolute_Feedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback :: proc() -> Ros2Franka_spine_msgsActionMoveAbsolute_Feedback {
 v: Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
 v.field_current_position = 0
 return v
}
// @brief Append every canonical field of franka_spine_msgs/action/MoveAbsolute_Feedback.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback :: proc(v: ^Ros2Franka_spine_msgsActionMoveAbsolute_Feedback, w: ^Writer) ->
        bool {
 if !put_float64(w,v.field_current_position) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/action/MoveAbsolute_Feedback.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsActionMoveAbsolute_Feedback,bool) {
 v:=init_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_current_position=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/action/MoveAbsolute_Feedback value.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback :: proc(v: ^Ros2Franka_spine_msgsActionMoveAbsolute_Feedback, output: []u8)
        -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/action/MoveAbsolute_Feedback value.
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
// @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsActionMoveAbsolute_Feedback,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Franka_spine_msgsActionMoveAbsolute_Feedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsActionMoveAbsolute_Feedback{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/msg/UserLimits value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgUserLimits :: struct {
 // @brief franka_spine_msgs/msg/UserLimits.lower_limit: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
 field_lower_limit: f64,
 // @brief franka_spine_msgs/msg/UserLimits.upper_limit: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
 field_upper_limit: f64,
}
// @brief Maximum canonical extent of franka_spine_msgs/msg/UserLimits in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgUserLimits_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of franka_spine_msgs/msg/UserLimits.
// @details Exact identity UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgUserLimits_Codec_Identity :: "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368"
// @brief Original ROS type name for franka_spine_msgs/msg/UserLimits.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgUserLimits_Native_Type :: "franka_spine_msgs/msg/UserLimits"
// @brief Selected original native identity for franka_spine_msgs/msg/UserLimits.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgUserLimits_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/msg/UserLimits.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsMsgUserLimits :: proc() -> Ros2Franka_spine_msgsMsgUserLimits {
 v: Ros2Franka_spine_msgsMsgUserLimits
 v.field_lower_limit = 0
 v.field_upper_limit = 0
 return v
}
// @brief Append every canonical field of franka_spine_msgs/msg/UserLimits.
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
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsMsgUserLimits :: proc(v: ^Ros2Franka_spine_msgsMsgUserLimits, w: ^Writer) -> bool {
 if !put_float64(w,v.field_lower_limit) { return false }
 if !put_float64(w,v.field_upper_limit) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/msg/UserLimits.
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
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsMsgUserLimits :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgUserLimits,bool) {
 v:=init_Ros2Franka_spine_msgsMsgUserLimits()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_lower_limit=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_upper_limit=f64(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/msg/UserLimits value.
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
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsMsgUserLimits :: proc(v: ^Ros2Franka_spine_msgsMsgUserLimits, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Franka_spine_msgsMsgUserLimits(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Franka_spine_msgsMsgUserLimits(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/msg/UserLimits value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsMsgUserLimits; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsMsgUserLimits :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgUserLimits,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Franka_spine_msgsMsgUserLimits{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsMsgUserLimits(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsMsgUserLimits{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/msg/SpineParameters value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineParameters :: struct {
 // @brief franka_spine_msgs/msg/SpineParameters.user_limits: franka_spine_msgs/msg/UserLimits.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
 field_user_limits: Ros2Franka_spine_msgsMsgUserLimits,
}
// @brief Maximum canonical extent of franka_spine_msgs/msg/SpineParameters in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineParameters_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of franka_spine_msgs/msg/SpineParameters.
// @details Exact identity UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineParameters_Codec_Identity ::
        "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223"
// @brief Original ROS type name for franka_spine_msgs/msg/SpineParameters.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineParameters_Native_Type :: "franka_spine_msgs/msg/SpineParameters"
// @brief Selected original native identity for franka_spine_msgs/msg/SpineParameters.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineParameters_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/msg/SpineParameters.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsMsgSpineParameters :: proc() -> Ros2Franka_spine_msgsMsgSpineParameters {
 v: Ros2Franka_spine_msgsMsgSpineParameters
 v.field_user_limits = Ros2Franka_spine_msgsMsgUserLimits{}
 return v
}
// @brief Append every canonical field of franka_spine_msgs/msg/SpineParameters.
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
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsMsgSpineParameters :: proc(v: ^Ros2Franka_spine_msgsMsgSpineParameters, w: ^Writer) -> bool {
 if !write_Ros2Franka_spine_msgsMsgUserLimits(&v.field_user_limits,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/msg/SpineParameters.
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
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsMsgSpineParameters :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgSpineParameters,bool) {
 v:=init_Ros2Franka_spine_msgsMsgSpineParameters()
 {
 b,ok:=read_Ros2Franka_spine_msgsMsgUserLimits(r,allocator); if !ok { return v,false }
 v.field_user_limits=b
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/msg/SpineParameters value.
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
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsMsgSpineParameters :: proc(v: ^Ros2Franka_spine_msgsMsgSpineParameters, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Franka_spine_msgsMsgSpineParameters(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Franka_spine_msgsMsgSpineParameters(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/msg/SpineParameters value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsMsgSpineParameters; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsMsgSpineParameters :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgSpineParameters,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Franka_spine_msgsMsgSpineParameters{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsMsgSpineParameters(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsMsgSpineParameters{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/msg/SpinePosition value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 21..149 bytes and
// is identified by UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpinePosition :: struct {
 // @brief franka_spine_msgs/msg/SpinePosition.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief franka_spine_msgs/msg/SpinePosition.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief franka_spine_msgs/msg/SpinePosition.valid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
 field_valid: bool,
}
// @brief Maximum canonical extent of franka_spine_msgs/msg/SpinePosition in bytes.
// @details The inclusive bound is 149 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpinePosition_Maximum_Wire_Bytes :: 149
// @brief Canonical codec identity of franka_spine_msgs/msg/SpinePosition.
// @details Exact identity UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpinePosition_Codec_Identity :: "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775"
// @brief Original ROS type name for franka_spine_msgs/msg/SpinePosition.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpinePosition_Native_Type :: "franka_spine_msgs/msg/SpinePosition"
// @brief Selected original native identity for franka_spine_msgs/msg/SpinePosition.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpinePosition_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/msg/SpinePosition.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsMsgSpinePosition :: proc() -> Ros2Franka_spine_msgsMsgSpinePosition {
 v: Ros2Franka_spine_msgsMsgSpinePosition
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_position = 0
 v.field_valid = false
 return v
}
// @brief Append every canonical field of franka_spine_msgs/msg/SpinePosition.
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
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsMsgSpinePosition :: proc(v: ^Ros2Franka_spine_msgsMsgSpinePosition, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_bool(w,v.field_valid) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/msg/SpinePosition.
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
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsMsgSpinePosition :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgSpinePosition,bool) {
 v:=init_Ros2Franka_spine_msgsMsgSpinePosition()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_position=f64(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_valid=bool(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/msg/SpinePosition value.
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
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsMsgSpinePosition :: proc(v: ^Ros2Franka_spine_msgsMsgSpinePosition, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=149}
 if !write_Ros2Franka_spine_msgsMsgSpinePosition(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=149}
 if !write_Ros2Franka_spine_msgsMsgSpinePosition(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/msg/SpinePosition value.
// @details Require the complete 21..149-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsMsgSpinePosition; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsMsgSpinePosition :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgSpinePosition,u32) {
 if len(bytes)<21 || len(bytes)>149 { return Ros2Franka_spine_msgsMsgSpinePosition{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsMsgSpinePosition(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsMsgSpinePosition{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/msg/SpineState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 25..921 bytes and
// is identified by UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineState :: struct {
 // @brief franka_spine_msgs/msg/SpineState.header: std_msgs/msg/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Std_msgsMsgHeader,
 // @brief franka_spine_msgs/msg/SpineState.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
 // @brief franka_spine_msgs/msg/SpineState.error_code: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
 field_error_code: string,
 // @brief franka_spine_msgs/msg/SpineState.error_description: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
 field_error_description: string,
 // @brief franka_spine_msgs/msg/SpineState.valid: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
 field_valid: bool,
}
// @brief Maximum canonical extent of franka_spine_msgs/msg/SpineState in bytes.
// @details The inclusive bound is 921 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineState_Maximum_Wire_Bytes :: 921
// @brief Canonical codec identity of franka_spine_msgs/msg/SpineState.
// @details Exact identity UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineState_Codec_Identity :: "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441"
// @brief Original ROS type name for franka_spine_msgs/msg/SpineState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineState_Native_Type :: "franka_spine_msgs/msg/SpineState"
// @brief Selected original native identity for franka_spine_msgs/msg/SpineState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsMsgSpineState_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/msg/SpineState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsMsgSpineState :: proc() -> Ros2Franka_spine_msgsMsgSpineState {
 v: Ros2Franka_spine_msgsMsgSpineState
 v.field_header = Ros2Std_msgsMsgHeader{}
 v.field_state = ""
 v.field_error_code = ""
 v.field_error_description = ""
 v.field_valid = false
 return v
}
// @brief Append every canonical field of franka_spine_msgs/msg/SpineState.
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
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsMsgSpineState :: proc(v: ^Ros2Franka_spine_msgsMsgSpineState, w: ^Writer) -> bool {
 if !write_Ros2Std_msgsMsgHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_state,256) { return false }
 if !put_string(w,v.field_error_code,256) { return false }
 if !put_string(w,v.field_error_description,256) { return false }
 if !put_bool(w,v.field_valid) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/msg/SpineState.
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
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsMsgSpineState :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgSpineState,bool) {
 v:=init_Ros2Franka_spine_msgsMsgSpineState()
 {
 b,ok:=read_Ros2Std_msgsMsgHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error_code=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error_description=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_valid=bool(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/msg/SpineState value.
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
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsMsgSpineState :: proc(v: ^Ros2Franka_spine_msgsMsgSpineState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=921}
 if !write_Ros2Franka_spine_msgsMsgSpineState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=921}
 if !write_Ros2Franka_spine_msgsMsgSpineState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/msg/SpineState value.
// @details Require the complete 25..921-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsMsgSpineState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsMsgSpineState :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsMsgSpineState,u32) {
 if len(bytes)<25 || len(bytes)>921 { return Ros2Franka_spine_msgsMsgSpineState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsMsgSpineState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsMsgSpineState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/FaultReset_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/FaultReset_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/FaultReset_Request.
// @details Exact identity UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Request_Codec_Identity ::
        "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33"
// @brief Original ROS type name for franka_spine_msgs/srv/FaultReset_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Request_Native_Type :: "franka_spine_msgs/srv/FaultReset_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/FaultReset_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/FaultReset_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvFaultReset_Request :: proc() -> Ros2Franka_spine_msgsSrvFaultReset_Request {
 v: Ros2Franka_spine_msgsSrvFaultReset_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/FaultReset_Request.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvFaultReset_Request :: proc(v: ^Ros2Franka_spine_msgsSrvFaultReset_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/FaultReset_Request.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvFaultReset_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvFaultReset_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvFaultReset_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/FaultReset_Request value.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvFaultReset_Request :: proc(v: ^Ros2Franka_spine_msgsSrvFaultReset_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvFaultReset_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvFaultReset_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/FaultReset_Request value.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvFaultReset_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvFaultReset_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvFaultReset_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvFaultReset_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvFaultReset_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/FaultReset_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
// is identified by UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Response :: struct {
 // @brief franka_spine_msgs/srv/FaultReset_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
 // @brief franka_spine_msgs/srv/FaultReset_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_spine_msgs/srv/FaultReset_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/FaultReset_Response in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Response_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of franka_spine_msgs/srv/FaultReset_Response.
// @details Exact identity UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Response_Codec_Identity ::
        "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c"
// @brief Original ROS type name for franka_spine_msgs/srv/FaultReset_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Response_Native_Type :: "franka_spine_msgs/srv/FaultReset_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/FaultReset_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvFaultReset_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/FaultReset_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvFaultReset_Response :: proc() -> Ros2Franka_spine_msgsSrvFaultReset_Response {
 v: Ros2Franka_spine_msgsSrvFaultReset_Response
 v.field_state = ""
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/FaultReset_Response.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvFaultReset_Response :: proc(v: ^Ros2Franka_spine_msgsSrvFaultReset_Response, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/FaultReset_Response.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvFaultReset_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvFaultReset_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvFaultReset_Response()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
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
// @brief Encode one complete franka_spine_msgs/srv/FaultReset_Response value.
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvFaultReset_Response :: proc(v: ^Ros2Franka_spine_msgsSrvFaultReset_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros2Franka_spine_msgsSrvFaultReset_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros2Franka_spine_msgsSrvFaultReset_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/FaultReset_Response value.
// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsSrvFaultReset_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvFaultReset_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvFaultReset_Response,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros2Franka_spine_msgsSrvFaultReset_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvFaultReset_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvFaultReset_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/GetParameters_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/GetParameters_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/GetParameters_Request.
// @details Exact identity UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Request_Codec_Identity ::
        "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14"
// @brief Original ROS type name for franka_spine_msgs/srv/GetParameters_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Request_Native_Type :: "franka_spine_msgs/srv/GetParameters_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/GetParameters_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/GetParameters_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvGetParameters_Request :: proc() -> Ros2Franka_spine_msgsSrvGetParameters_Request {
 v: Ros2Franka_spine_msgsSrvGetParameters_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/GetParameters_Request.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvGetParameters_Request :: proc(v: ^Ros2Franka_spine_msgsSrvGetParameters_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetParameters_Request.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvGetParameters_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetParameters_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvGetParameters_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/GetParameters_Request value.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvGetParameters_Request :: proc(v: ^Ros2Franka_spine_msgsSrvGetParameters_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvGetParameters_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvGetParameters_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/GetParameters_Request value.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvGetParameters_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetParameters_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvGetParameters_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvGetParameters_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvGetParameters_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/GetParameters_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 21..277 bytes and
// is identified by UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Response :: struct {
 // @brief franka_spine_msgs/srv/GetParameters_Response.parameters: franka_spine_msgs/msg/SpineParameters.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
 field_parameters: Ros2Franka_spine_msgsMsgSpineParameters,
 // @brief franka_spine_msgs/srv/GetParameters_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_spine_msgs/srv/GetParameters_Response.message: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/GetParameters_Response in bytes.
// @details The inclusive bound is 277 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Response_Maximum_Wire_Bytes :: 277
// @brief Canonical codec identity of franka_spine_msgs/srv/GetParameters_Response.
// @details Exact identity UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Response_Codec_Identity ::
        "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed"
// @brief Original ROS type name for franka_spine_msgs/srv/GetParameters_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Response_Native_Type :: "franka_spine_msgs/srv/GetParameters_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/GetParameters_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetParameters_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/GetParameters_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvGetParameters_Response :: proc() -> Ros2Franka_spine_msgsSrvGetParameters_Response {
 v: Ros2Franka_spine_msgsSrvGetParameters_Response
 v.field_parameters = Ros2Franka_spine_msgsMsgSpineParameters{}
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/GetParameters_Response.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvGetParameters_Response :: proc(v: ^Ros2Franka_spine_msgsSrvGetParameters_Response, w: ^Writer) -> bool
        {
 if !write_Ros2Franka_spine_msgsMsgSpineParameters(&v.field_parameters,w) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetParameters_Response.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvGetParameters_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetParameters_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvGetParameters_Response()
 {
 b,ok:=read_Ros2Franka_spine_msgsMsgSpineParameters(r,allocator); if !ok { return v,false }
 v.field_parameters=b
 }
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
// @brief Encode one complete franka_spine_msgs/srv/GetParameters_Response value.
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvGetParameters_Response :: proc(v: ^Ros2Franka_spine_msgsSrvGetParameters_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=277}
 if !write_Ros2Franka_spine_msgsSrvGetParameters_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=277}
 if !write_Ros2Franka_spine_msgsSrvGetParameters_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/GetParameters_Response value.
// @details Require the complete 21..277-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsSrvGetParameters_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvGetParameters_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetParameters_Response,u32) {
 if len(bytes)<21 || len(bytes)>277 { return Ros2Franka_spine_msgsSrvGetParameters_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvGetParameters_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvGetParameters_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/GetPosition_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/GetPosition_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/GetPosition_Request.
// @details Exact identity UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Request_Codec_Identity ::
        "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2"
// @brief Original ROS type name for franka_spine_msgs/srv/GetPosition_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Request_Native_Type :: "franka_spine_msgs/srv/GetPosition_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/GetPosition_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/GetPosition_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvGetPosition_Request :: proc() -> Ros2Franka_spine_msgsSrvGetPosition_Request {
 v: Ros2Franka_spine_msgsSrvGetPosition_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/GetPosition_Request.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvGetPosition_Request :: proc(v: ^Ros2Franka_spine_msgsSrvGetPosition_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetPosition_Request.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvGetPosition_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetPosition_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvGetPosition_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/GetPosition_Request value.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvGetPosition_Request :: proc(v: ^Ros2Franka_spine_msgsSrvGetPosition_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvGetPosition_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvGetPosition_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/GetPosition_Request value.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvGetPosition_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetPosition_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvGetPosition_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvGetPosition_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvGetPosition_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/GetPosition_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and is
// identified by UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Response :: struct {
 // @brief franka_spine_msgs/srv/GetPosition_Response.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief franka_spine_msgs/srv/GetPosition_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/GetPosition_Response in bytes.
// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Response_Maximum_Wire_Bytes :: 9
// @brief Canonical codec identity of franka_spine_msgs/srv/GetPosition_Response.
// @details Exact identity UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Response_Codec_Identity ::
        "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8"
// @brief Original ROS type name for franka_spine_msgs/srv/GetPosition_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Response_Native_Type :: "franka_spine_msgs/srv/GetPosition_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/GetPosition_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetPosition_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/GetPosition_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvGetPosition_Response :: proc() -> Ros2Franka_spine_msgsSrvGetPosition_Response {
 v: Ros2Franka_spine_msgsSrvGetPosition_Response
 v.field_position = 0
 v.field_success = false
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/GetPosition_Response.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvGetPosition_Response :: proc(v: ^Ros2Franka_spine_msgsSrvGetPosition_Response, w: ^Writer) -> bool {
 if !put_float64(w,v.field_position) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetPosition_Response.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvGetPosition_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetPosition_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvGetPosition_Response()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_position=f64(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/GetPosition_Response value.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvGetPosition_Response :: proc(v: ^Ros2Franka_spine_msgsSrvGetPosition_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9}
 if !write_Ros2Franka_spine_msgsSrvGetPosition_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9}
 if !write_Ros2Franka_spine_msgsSrvGetPosition_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/GetPosition_Response value.
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
// @see Ros2Franka_spine_msgsSrvGetPosition_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvGetPosition_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetPosition_Response,u32) {
 if len(bytes)<9 || len(bytes)>9 { return Ros2Franka_spine_msgsSrvGetPosition_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvGetPosition_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvGetPosition_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/GetSpineState_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/GetSpineState_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/GetSpineState_Request.
// @details Exact identity UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Request_Codec_Identity ::
        "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67"
// @brief Original ROS type name for franka_spine_msgs/srv/GetSpineState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Request_Native_Type :: "franka_spine_msgs/srv/GetSpineState_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/GetSpineState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/GetSpineState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvGetSpineState_Request :: proc() -> Ros2Franka_spine_msgsSrvGetSpineState_Request {
 v: Ros2Franka_spine_msgsSrvGetSpineState_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/GetSpineState_Request.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvGetSpineState_Request :: proc(v: ^Ros2Franka_spine_msgsSrvGetSpineState_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetSpineState_Request.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvGetSpineState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetSpineState_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvGetSpineState_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/GetSpineState_Request value.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvGetSpineState_Request :: proc(v: ^Ros2Franka_spine_msgsSrvGetSpineState_Request, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvGetSpineState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvGetSpineState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/GetSpineState_Request value.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvGetSpineState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetSpineState_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvGetSpineState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvGetSpineState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvGetSpineState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/GetSpineState_Response value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 13..781 bytes and
// is identified by UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Response :: struct {
 // @brief franka_spine_msgs/srv/GetSpineState_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
 // @brief franka_spine_msgs/srv/GetSpineState_Response.error_code: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error_code: string,
 // @brief franka_spine_msgs/srv/GetSpineState_Response.error_description: string; each string is 0..256 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_error_description: string,
 // @brief franka_spine_msgs/srv/GetSpineState_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/GetSpineState_Response in bytes.
// @details The inclusive bound is 781 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Response_Maximum_Wire_Bytes :: 781
// @brief Canonical codec identity of franka_spine_msgs/srv/GetSpineState_Response.
// @details Exact identity UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Response_Codec_Identity ::
        "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1"
// @brief Original ROS type name for franka_spine_msgs/srv/GetSpineState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Response_Native_Type :: "franka_spine_msgs/srv/GetSpineState_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/GetSpineState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvGetSpineState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/GetSpineState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvGetSpineState_Response :: proc() -> Ros2Franka_spine_msgsSrvGetSpineState_Response {
 v: Ros2Franka_spine_msgsSrvGetSpineState_Response
 v.field_state = ""
 v.field_error_code = ""
 v.field_error_description = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/GetSpineState_Response.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvGetSpineState_Response :: proc(v: ^Ros2Franka_spine_msgsSrvGetSpineState_Response, w: ^Writer) -> bool
        {
 if !put_string(w,v.field_state,256) { return false }
 if !put_string(w,v.field_error_code,256) { return false }
 if !put_string(w,v.field_error_description,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/GetSpineState_Response.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvGetSpineState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetSpineState_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvGetSpineState_Response()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error_code=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_error_description=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/GetSpineState_Response value.
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvGetSpineState_Response :: proc(v: ^Ros2Franka_spine_msgsSrvGetSpineState_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=781}
 if !write_Ros2Franka_spine_msgsSrvGetSpineState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=781}
 if !write_Ros2Franka_spine_msgsSrvGetSpineState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/GetSpineState_Response value.
// @details Require the complete 13..781-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsSrvGetSpineState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvGetSpineState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvGetSpineState_Response,u32) {
 if len(bytes)<13 || len(bytes)>781 { return Ros2Franka_spine_msgsSrvGetSpineState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvGetSpineState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvGetSpineState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/Halt_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/Halt_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/Halt_Request.
// @details Exact identity UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Request_Codec_Identity :: "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111"
// @brief Original ROS type name for franka_spine_msgs/srv/Halt_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Request_Native_Type :: "franka_spine_msgs/srv/Halt_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/Halt_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/Halt_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvHalt_Request :: proc() -> Ros2Franka_spine_msgsSrvHalt_Request {
 v: Ros2Franka_spine_msgsSrvHalt_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/Halt_Request.
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
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvHalt_Request :: proc(v: ^Ros2Franka_spine_msgsSrvHalt_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/Halt_Request.
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
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvHalt_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvHalt_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvHalt_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/Halt_Request value.
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
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvHalt_Request :: proc(v: ^Ros2Franka_spine_msgsSrvHalt_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvHalt_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvHalt_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/Halt_Request value.
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
// @see Ros2Franka_spine_msgsSrvHalt_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvHalt_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvHalt_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvHalt_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvHalt_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvHalt_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/Halt_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
// is identified by UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Response :: struct {
 // @brief franka_spine_msgs/srv/Halt_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
 // @brief franka_spine_msgs/srv/Halt_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_spine_msgs/srv/Halt_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/Halt_Response in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Response_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of franka_spine_msgs/srv/Halt_Response.
// @details Exact identity UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Response_Codec_Identity :: "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77"
// @brief Original ROS type name for franka_spine_msgs/srv/Halt_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Response_Native_Type :: "franka_spine_msgs/srv/Halt_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/Halt_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvHalt_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/Halt_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvHalt_Response :: proc() -> Ros2Franka_spine_msgsSrvHalt_Response {
 v: Ros2Franka_spine_msgsSrvHalt_Response
 v.field_state = ""
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/Halt_Response.
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
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvHalt_Response :: proc(v: ^Ros2Franka_spine_msgsSrvHalt_Response, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/Halt_Response.
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
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvHalt_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvHalt_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvHalt_Response()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
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
// @brief Encode one complete franka_spine_msgs/srv/Halt_Response value.
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
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvHalt_Response :: proc(v: ^Ros2Franka_spine_msgsSrvHalt_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros2Franka_spine_msgsSrvHalt_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros2Franka_spine_msgsSrvHalt_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/Halt_Response value.
// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsSrvHalt_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvHalt_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvHalt_Response,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros2Franka_spine_msgsSrvHalt_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvHalt_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvHalt_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOff_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOff_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOff_Request.
// @details Exact identity UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Request_Codec_Identity ::
        "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16"
// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOff_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Request_Native_Type :: "franka_spine_msgs/srv/SwitchOff_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOff_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/SwitchOff_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvSwitchOff_Request :: proc() -> Ros2Franka_spine_msgsSrvSwitchOff_Request {
 v: Ros2Franka_spine_msgsSrvSwitchOff_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOff_Request.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvSwitchOff_Request :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOff_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOff_Request.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvSwitchOff_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOff_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvSwitchOff_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/SwitchOff_Request value.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvSwitchOff_Request :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOff_Request, output: []u8) -> ([]u8,u32)
        {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvSwitchOff_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvSwitchOff_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOff_Request value.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvSwitchOff_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOff_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvSwitchOff_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvSwitchOff_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvSwitchOff_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOff_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
// is identified by UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Response :: struct {
 // @brief franka_spine_msgs/srv/SwitchOff_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
 // @brief franka_spine_msgs/srv/SwitchOff_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_spine_msgs/srv/SwitchOff_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOff_Response in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Response_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOff_Response.
// @details Exact identity UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Response_Codec_Identity ::
        "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad"
// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOff_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Response_Native_Type :: "franka_spine_msgs/srv/SwitchOff_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOff_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOff_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/SwitchOff_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvSwitchOff_Response :: proc() -> Ros2Franka_spine_msgsSrvSwitchOff_Response {
 v: Ros2Franka_spine_msgsSrvSwitchOff_Response
 v.field_state = ""
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOff_Response.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvSwitchOff_Response :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOff_Response, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOff_Response.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvSwitchOff_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOff_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvSwitchOff_Response()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
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
// @brief Encode one complete franka_spine_msgs/srv/SwitchOff_Response value.
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvSwitchOff_Response :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOff_Response, output: []u8) ->
        ([]u8,u32) {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros2Franka_spine_msgsSrvSwitchOff_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros2Franka_spine_msgsSrvSwitchOff_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOff_Response value.
// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsSrvSwitchOff_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvSwitchOff_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOff_Response,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros2Franka_spine_msgsSrvSwitchOff_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvSwitchOff_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvSwitchOff_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOn_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Request :: struct {
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOn_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOn_Request.
// @details Exact identity UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Request_Codec_Identity ::
        "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56"
// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOn_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Request_Native_Type :: "franka_spine_msgs/srv/SwitchOn_Request"
// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOn_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Request_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/SwitchOn_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvSwitchOn_Request :: proc() -> Ros2Franka_spine_msgsSrvSwitchOn_Request {
 v: Ros2Franka_spine_msgsSrvSwitchOn_Request
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOn_Request.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvSwitchOn_Request :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOn_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOn_Request.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvSwitchOn_Request :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOn_Request,bool) {
 v:=init_Ros2Franka_spine_msgsSrvSwitchOn_Request()
 return v,true
}
// @brief Encode one complete franka_spine_msgs/srv/SwitchOn_Request value.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvSwitchOn_Request :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOn_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Franka_spine_msgsSrvSwitchOn_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Franka_spine_msgsSrvSwitchOn_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOn_Request value.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvSwitchOn_Request :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOn_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Franka_spine_msgsSrvSwitchOn_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvSwitchOn_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvSwitchOn_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 franka_spine_msgs/srv/SwitchOn_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
// is identified by UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Response :: struct {
 // @brief franka_spine_msgs/srv/SwitchOn_Response.state: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
 // @brief franka_spine_msgs/srv/SwitchOn_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief franka_spine_msgs/srv/SwitchOn_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of franka_spine_msgs/srv/SwitchOn_Response in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Response_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of franka_spine_msgs/srv/SwitchOn_Response.
// @details Exact identity UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Response_Codec_Identity ::
        "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d"
// @brief Original ROS type name for franka_spine_msgs/srv/SwitchOn_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Response_Native_Type :: "franka_spine_msgs/srv/SwitchOn_Response"
// @brief Selected original native identity for franka_spine_msgs/srv/SwitchOn_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Franka_spine_msgsSrvSwitchOn_Response_Native_Identity :: ""
// @brief Construct the declared defaults of franka_spine_msgs/srv/SwitchOn_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Franka_spine_msgsSrvSwitchOn_Response :: proc() -> Ros2Franka_spine_msgsSrvSwitchOn_Response {
 v: Ros2Franka_spine_msgsSrvSwitchOn_Response
 v.field_state = ""
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of franka_spine_msgs/srv/SwitchOn_Response.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Franka_spine_msgsSrvSwitchOn_Response :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOn_Response, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of franka_spine_msgs/srv/SwitchOn_Response.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Franka_spine_msgsSrvSwitchOn_Response :: proc(r: ^Reader, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOn_Response,bool) {
 v:=init_Ros2Franka_spine_msgsSrvSwitchOn_Response()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
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
// @brief Encode one complete franka_spine_msgs/srv/SwitchOn_Response value.
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Franka_spine_msgsSrvSwitchOn_Response :: proc(v: ^Ros2Franka_spine_msgsSrvSwitchOn_Response, output: []u8) -> ([]u8,u32)
        {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros2Franka_spine_msgsSrvSwitchOn_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros2Franka_spine_msgsSrvSwitchOn_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete franka_spine_msgs/srv/SwitchOn_Response value.
// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Franka_spine_msgsSrvSwitchOn_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Franka_spine_msgsSrvSwitchOn_Response :: proc(bytes: []u8, allocator: runtime.Allocator) ->
        (Ros2Franka_spine_msgsSrvSwitchOn_Response,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros2Franka_spine_msgsSrvSwitchOn_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Franka_spine_msgsSrvSwitchOn_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Franka_spine_msgsSrvSwitchOn_Response{},reader.code }
 return value,0
}
