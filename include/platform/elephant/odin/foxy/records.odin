// @file records.odin
// @brief Preserve the complete original elephant/foxy canonical value domain.
// @details The selected domain contains 71 complete record/components and 238 original fields. Declared
// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
// does not qualify a frontend, target ABI or native ROS transport.
// @see The platform's localized language guide and complete API-CATALOG.md.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 mecharm_interfaces/msg/MecharmAngles value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmAngles :: struct {
 // @brief mecharm_interfaces/msg/MecharmAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mecharm_interfaces/msg/MecharmAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mecharm_interfaces/msg/MecharmAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mecharm_interfaces/msg/MecharmAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mecharm_interfaces/msg/MecharmAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mecharm_interfaces/msg/MecharmAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mecharm_interfaces/msg/MecharmAngles in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmAngles_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mecharm_interfaces/msg/MecharmAngles.
// @details Exact identity UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmAngles_Codec_Identity :: "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331"
// @brief Original ROS type name for mecharm_interfaces/msg/MecharmAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmAngles_Native_Type :: "mecharm_interfaces/msg/MecharmAngles"
// @brief Selected original native identity for mecharm_interfaces/msg/MecharmAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/msg/MecharmAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesMsgMecharmAngles :: proc() -> Ros2Mecharm_interfacesMsgMecharmAngles {
 v: Ros2Mecharm_interfacesMsgMecharmAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/msg/MecharmAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesMsgMecharmAngles :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesMsgMecharmAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmAngles,bool) {
 v:=init_Ros2Mecharm_interfacesMsgMecharmAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/msg/MecharmAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesMsgMecharmAngles :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mecharm_interfacesMsgMecharmAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mecharm_interfacesMsgMecharmAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/msg/MecharmAngles value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesMsgMecharmAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmAngles,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mecharm_interfacesMsgMecharmAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesMsgMecharmAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesMsgMecharmAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/msg/MecharmCoords value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmCoords :: struct {
 // @brief mecharm_interfaces/msg/MecharmCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mecharm_interfaces/msg/MecharmCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mecharm_interfaces/msg/MecharmCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mecharm_interfaces/msg/MecharmCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mecharm_interfaces/msg/MecharmCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mecharm_interfaces/msg/MecharmCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mecharm_interfaces/msg/MecharmCoords in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmCoords_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mecharm_interfaces/msg/MecharmCoords.
// @details Exact identity UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmCoords_Codec_Identity :: "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed"
// @brief Original ROS type name for mecharm_interfaces/msg/MecharmCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmCoords_Native_Type :: "mecharm_interfaces/msg/MecharmCoords"
// @brief Selected original native identity for mecharm_interfaces/msg/MecharmCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/msg/MecharmCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesMsgMecharmCoords :: proc() -> Ros2Mecharm_interfacesMsgMecharmCoords {
 v: Ros2Mecharm_interfacesMsgMecharmCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/msg/MecharmCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesMsgMecharmCoords :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesMsgMecharmCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmCoords,bool) {
 v:=init_Ros2Mecharm_interfacesMsgMecharmCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/msg/MecharmCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesMsgMecharmCoords :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mecharm_interfacesMsgMecharmCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mecharm_interfacesMsgMecharmCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/msg/MecharmCoords value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesMsgMecharmCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmCoords,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mecharm_interfacesMsgMecharmCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesMsgMecharmCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesMsgMecharmCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/msg/MecharmGripperStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmGripperStatus :: struct {
 // @brief mecharm_interfaces/msg/MecharmGripperStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mecharm_interfaces/msg/MecharmGripperStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmGripperStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mecharm_interfaces/msg/MecharmGripperStatus.
// @details Exact identity UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmGripperStatus_Codec_Identity :: "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046"
// @brief Original ROS type name for mecharm_interfaces/msg/MecharmGripperStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmGripperStatus_Native_Type :: "mecharm_interfaces/msg/MecharmGripperStatus"
// @brief Selected original native identity for mecharm_interfaces/msg/MecharmGripperStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmGripperStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/msg/MecharmGripperStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesMsgMecharmGripperStatus :: proc() -> Ros2Mecharm_interfacesMsgMecharmGripperStatus {
 v: Ros2Mecharm_interfacesMsgMecharmGripperStatus
 v.field_status = false
 return v
}
// @brief Append every canonical field of mecharm_interfaces/msg/MecharmGripperStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesMsgMecharmGripperStatus :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmGripperStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmGripperStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesMsgMecharmGripperStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmGripperStatus,bool) {
 v:=init_Ros2Mecharm_interfacesMsgMecharmGripperStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/msg/MecharmGripperStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesMsgMecharmGripperStatus :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmGripperStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mecharm_interfacesMsgMecharmGripperStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mecharm_interfacesMsgMecharmGripperStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/msg/MecharmGripperStatus value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmGripperStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesMsgMecharmGripperStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmGripperStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mecharm_interfacesMsgMecharmGripperStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesMsgMecharmGripperStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesMsgMecharmGripperStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/msg/MecharmPumpStatus value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmPumpStatus :: struct {
 // @brief mecharm_interfaces/msg/MecharmPumpStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
 // @brief mecharm_interfaces/msg/MecharmPumpStatus.pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_pin1: i8,
 // @brief mecharm_interfaces/msg/MecharmPumpStatus.pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_pin2: i8,
}
// @brief Maximum canonical extent of mecharm_interfaces/msg/MecharmPumpStatus in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmPumpStatus_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mecharm_interfaces/msg/MecharmPumpStatus.
// @details Exact identity UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmPumpStatus_Codec_Identity :: "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add"
// @brief Original ROS type name for mecharm_interfaces/msg/MecharmPumpStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmPumpStatus_Native_Type :: "mecharm_interfaces/msg/MecharmPumpStatus"
// @brief Selected original native identity for mecharm_interfaces/msg/MecharmPumpStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmPumpStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/msg/MecharmPumpStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesMsgMecharmPumpStatus :: proc() -> Ros2Mecharm_interfacesMsgMecharmPumpStatus {
 v: Ros2Mecharm_interfacesMsgMecharmPumpStatus
 v.field_status = false
 v.field_pin1 = 0
 v.field_pin2 = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/msg/MecharmPumpStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesMsgMecharmPumpStatus :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmPumpStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 if !put_integer(w,u64(v.field_pin1),1) { return false }
 if !put_integer(w,u64(v.field_pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmPumpStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesMsgMecharmPumpStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmPumpStatus,bool) {
 v:=init_Ros2Mecharm_interfacesMsgMecharmPumpStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/msg/MecharmPumpStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesMsgMecharmPumpStatus :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmPumpStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros2Mecharm_interfacesMsgMecharmPumpStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros2Mecharm_interfacesMsgMecharmPumpStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/msg/MecharmPumpStatus value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmPumpStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesMsgMecharmPumpStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmPumpStatus,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros2Mecharm_interfacesMsgMecharmPumpStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesMsgMecharmPumpStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesMsgMecharmPumpStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/msg/MecharmSetAngles value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetAngles :: struct {
 // @brief mecharm_interfaces/msg/MecharmSetAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mecharm_interfaces/msg/MecharmSetAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mecharm_interfaces/msg/MecharmSetAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mecharm_interfaces/msg/MecharmSetAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mecharm_interfaces/msg/MecharmSetAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mecharm_interfaces/msg/MecharmSetAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mecharm_interfaces/msg/MecharmSetAngles.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mecharm_interfaces/msg/MecharmSetAngles in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetAngles_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mecharm_interfaces/msg/MecharmSetAngles.
// @details Exact identity UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetAngles_Codec_Identity :: "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5"
// @brief Original ROS type name for mecharm_interfaces/msg/MecharmSetAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetAngles_Native_Type :: "mecharm_interfaces/msg/MecharmSetAngles"
// @brief Selected original native identity for mecharm_interfaces/msg/MecharmSetAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/msg/MecharmSetAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesMsgMecharmSetAngles :: proc() -> Ros2Mecharm_interfacesMsgMecharmSetAngles {
 v: Ros2Mecharm_interfacesMsgMecharmSetAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/msg/MecharmSetAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesMsgMecharmSetAngles :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmSetAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmSetAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesMsgMecharmSetAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmSetAngles,bool) {
 v:=init_Ros2Mecharm_interfacesMsgMecharmSetAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/msg/MecharmSetAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesMsgMecharmSetAngles :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmSetAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mecharm_interfacesMsgMecharmSetAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mecharm_interfacesMsgMecharmSetAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/msg/MecharmSetAngles value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesMsgMecharmSetAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmSetAngles,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mecharm_interfacesMsgMecharmSetAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesMsgMecharmSetAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesMsgMecharmSetAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/msg/MecharmSetCoords value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies
// 26..26 bytes and is identified by
// UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetCoords :: struct {
 // @brief mecharm_interfaces/msg/MecharmSetCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mecharm_interfaces/msg/MecharmSetCoords.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mecharm_interfaces/msg/MecharmSetCoords in bytes.
// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetCoords_Maximum_Wire_Bytes :: 26
// @brief Canonical codec identity of mecharm_interfaces/msg/MecharmSetCoords.
// @details Exact identity UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetCoords_Codec_Identity :: "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2"
// @brief Original ROS type name for mecharm_interfaces/msg/MecharmSetCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetCoords_Native_Type :: "mecharm_interfaces/msg/MecharmSetCoords"
// @brief Selected original native identity for mecharm_interfaces/msg/MecharmSetCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesMsgMecharmSetCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/msg/MecharmSetCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesMsgMecharmSetCoords :: proc() -> Ros2Mecharm_interfacesMsgMecharmSetCoords {
 v: Ros2Mecharm_interfacesMsgMecharmSetCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 v.field_speed = 0
 v.field_model = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/msg/MecharmSetCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesMsgMecharmSetCoords :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmSetCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 if !put_integer(w,u64(v.field_model),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/msg/MecharmSetCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesMsgMecharmSetCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmSetCoords,bool) {
 v:=init_Ros2Mecharm_interfacesMsgMecharmSetCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_model=i8(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/msg/MecharmSetCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesMsgMecharmSetCoords :: proc(v: ^Ros2Mecharm_interfacesMsgMecharmSetCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=26}
 if !write_Ros2Mecharm_interfacesMsgMecharmSetCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=26}
 if !write_Ros2Mecharm_interfacesMsgMecharmSetCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/msg/MecharmSetCoords value.
// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesMsgMecharmSetCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesMsgMecharmSetCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesMsgMecharmSetCoords,u32) {
 if len(bytes)<26 || len(bytes)>26 { return Ros2Mecharm_interfacesMsgMecharmSetCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesMsgMecharmSetCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesMsgMecharmSetCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/GetAngles_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Request :: struct {
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/GetAngles_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mecharm_interfaces/srv/GetAngles_Request.
// @details Exact identity UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Request_Codec_Identity :: "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df"
// @brief Original ROS type name for mecharm_interfaces/srv/GetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Request_Native_Type :: "mecharm_interfaces/srv/GetAngles_Request"
// @brief Selected original native identity for mecharm_interfaces/srv/GetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/GetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvGetAngles_Request :: proc() -> Ros2Mecharm_interfacesSrvGetAngles_Request {
 v: Ros2Mecharm_interfacesSrvGetAngles_Request
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/GetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mecharm_interfacesSrvGetAngles_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/GetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvGetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetAngles_Request,bool) {
 v:=init_Ros2Mecharm_interfacesSrvGetAngles_Request()
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/GetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mecharm_interfacesSrvGetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mecharm_interfacesSrvGetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mecharm_interfacesSrvGetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/GetAngles_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvGetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetAngles_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mecharm_interfacesSrvGetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvGetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvGetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/GetAngles_Response value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Response :: struct {
 // @brief mecharm_interfaces/srv/GetAngles_Response.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mecharm_interfaces/srv/GetAngles_Response.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mecharm_interfaces/srv/GetAngles_Response.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mecharm_interfaces/srv/GetAngles_Response.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mecharm_interfaces/srv/GetAngles_Response.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mecharm_interfaces/srv/GetAngles_Response.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/GetAngles_Response in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Response_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mecharm_interfaces/srv/GetAngles_Response.
// @details Exact identity UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Response_Codec_Identity :: "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61"
// @brief Original ROS type name for mecharm_interfaces/srv/GetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Response_Native_Type :: "mecharm_interfaces/srv/GetAngles_Response"
// @brief Selected original native identity for mecharm_interfaces/srv/GetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/GetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvGetAngles_Response :: proc() -> Ros2Mecharm_interfacesSrvGetAngles_Response {
 v: Ros2Mecharm_interfacesSrvGetAngles_Response
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/GetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mecharm_interfacesSrvGetAngles_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/GetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvGetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetAngles_Response,bool) {
 v:=init_Ros2Mecharm_interfacesSrvGetAngles_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/GetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mecharm_interfacesSrvGetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mecharm_interfacesSrvGetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mecharm_interfacesSrvGetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/GetAngles_Response value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvGetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetAngles_Response,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mecharm_interfacesSrvGetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvGetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvGetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/GetCoords_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Request :: struct {
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/GetCoords_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mecharm_interfaces/srv/GetCoords_Request.
// @details Exact identity UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Request_Codec_Identity :: "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1"
// @brief Original ROS type name for mecharm_interfaces/srv/GetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Request_Native_Type :: "mecharm_interfaces/srv/GetCoords_Request"
// @brief Selected original native identity for mecharm_interfaces/srv/GetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/GetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvGetCoords_Request :: proc() -> Ros2Mecharm_interfacesSrvGetCoords_Request {
 v: Ros2Mecharm_interfacesSrvGetCoords_Request
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/GetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mecharm_interfacesSrvGetCoords_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/GetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvGetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetCoords_Request,bool) {
 v:=init_Ros2Mecharm_interfacesSrvGetCoords_Request()
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/GetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mecharm_interfacesSrvGetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mecharm_interfacesSrvGetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mecharm_interfacesSrvGetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/GetCoords_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvGetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetCoords_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mecharm_interfacesSrvGetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvGetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvGetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/GetCoords_Response value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Response :: struct {
 // @brief mecharm_interfaces/srv/GetCoords_Response.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mecharm_interfaces/srv/GetCoords_Response.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mecharm_interfaces/srv/GetCoords_Response.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mecharm_interfaces/srv/GetCoords_Response.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mecharm_interfaces/srv/GetCoords_Response.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mecharm_interfaces/srv/GetCoords_Response.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/GetCoords_Response in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Response_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mecharm_interfaces/srv/GetCoords_Response.
// @details Exact identity UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Response_Codec_Identity :: "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75"
// @brief Original ROS type name for mecharm_interfaces/srv/GetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Response_Native_Type :: "mecharm_interfaces/srv/GetCoords_Response"
// @brief Selected original native identity for mecharm_interfaces/srv/GetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/GetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvGetCoords_Response :: proc() -> Ros2Mecharm_interfacesSrvGetCoords_Response {
 v: Ros2Mecharm_interfacesSrvGetCoords_Response
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/GetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mecharm_interfacesSrvGetCoords_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/GetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvGetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetCoords_Response,bool) {
 v:=init_Ros2Mecharm_interfacesSrvGetCoords_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/GetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mecharm_interfacesSrvGetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mecharm_interfacesSrvGetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mecharm_interfacesSrvGetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/GetCoords_Response value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvGetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGetCoords_Response,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mecharm_interfacesSrvGetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvGetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvGetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/GripperStatus_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Request :: struct {
 // @brief mecharm_interfaces/srv/GripperStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/GripperStatus_Request in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Request_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mecharm_interfaces/srv/GripperStatus_Request.
// @details Exact identity UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Request_Codec_Identity :: "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb"
// @brief Original ROS type name for mecharm_interfaces/srv/GripperStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Request_Native_Type :: "mecharm_interfaces/srv/GripperStatus_Request"
// @brief Selected original native identity for mecharm_interfaces/srv/GripperStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/GripperStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvGripperStatus_Request :: proc() -> Ros2Mecharm_interfacesSrvGripperStatus_Request {
 v: Ros2Mecharm_interfacesSrvGripperStatus_Request
 v.field_status = false
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/GripperStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mecharm_interfacesSrvGripperStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/GripperStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvGripperStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGripperStatus_Request,bool) {
 v:=init_Ros2Mecharm_interfacesSrvGripperStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/GripperStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mecharm_interfacesSrvGripperStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mecharm_interfacesSrvGripperStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mecharm_interfacesSrvGripperStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/GripperStatus_Request value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvGripperStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGripperStatus_Request,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mecharm_interfacesSrvGripperStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvGripperStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvGripperStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/GripperStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Response :: struct {
 // @brief mecharm_interfaces/srv/GripperStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/GripperStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mecharm_interfaces/srv/GripperStatus_Response.
// @details Exact identity UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Response_Codec_Identity :: "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3"
// @brief Original ROS type name for mecharm_interfaces/srv/GripperStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Response_Native_Type :: "mecharm_interfaces/srv/GripperStatus_Response"
// @brief Selected original native identity for mecharm_interfaces/srv/GripperStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvGripperStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/GripperStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvGripperStatus_Response :: proc() -> Ros2Mecharm_interfacesSrvGripperStatus_Response {
 v: Ros2Mecharm_interfacesSrvGripperStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/GripperStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mecharm_interfacesSrvGripperStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/GripperStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvGripperStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGripperStatus_Response,bool) {
 v:=init_Ros2Mecharm_interfacesSrvGripperStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/GripperStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mecharm_interfacesSrvGripperStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mecharm_interfacesSrvGripperStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mecharm_interfacesSrvGripperStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/GripperStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvGripperStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvGripperStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mecharm_interfacesSrvGripperStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvGripperStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvGripperStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/PumpStatus_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Request :: struct {
 // @brief mecharm_interfaces/srv/PumpStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
 // @brief mecharm_interfaces/srv/PumpStatus_Request.pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pin1: i8,
 // @brief mecharm_interfaces/srv/PumpStatus_Request.pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pin2: i8,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/PumpStatus_Request in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Request_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mecharm_interfaces/srv/PumpStatus_Request.
// @details Exact identity UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Request_Codec_Identity :: "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9"
// @brief Original ROS type name for mecharm_interfaces/srv/PumpStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Request_Native_Type :: "mecharm_interfaces/srv/PumpStatus_Request"
// @brief Selected original native identity for mecharm_interfaces/srv/PumpStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/PumpStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvPumpStatus_Request :: proc() -> Ros2Mecharm_interfacesSrvPumpStatus_Request {
 v: Ros2Mecharm_interfacesSrvPumpStatus_Request
 v.field_status = false
 v.field_pin1 = 0
 v.field_pin2 = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/PumpStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvPumpStatus_Request :: proc(v: ^Ros2Mecharm_interfacesSrvPumpStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 if !put_integer(w,u64(v.field_pin1),1) { return false }
 if !put_integer(w,u64(v.field_pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/PumpStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvPumpStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvPumpStatus_Request,bool) {
 v:=init_Ros2Mecharm_interfacesSrvPumpStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/PumpStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvPumpStatus_Request :: proc(v: ^Ros2Mecharm_interfacesSrvPumpStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros2Mecharm_interfacesSrvPumpStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros2Mecharm_interfacesSrvPumpStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/PumpStatus_Request value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvPumpStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvPumpStatus_Request,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros2Mecharm_interfacesSrvPumpStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvPumpStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvPumpStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/PumpStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Response :: struct {
 // @brief mecharm_interfaces/srv/PumpStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/PumpStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mecharm_interfaces/srv/PumpStatus_Response.
// @details Exact identity UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Response_Codec_Identity :: "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b"
// @brief Original ROS type name for mecharm_interfaces/srv/PumpStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Response_Native_Type :: "mecharm_interfaces/srv/PumpStatus_Response"
// @brief Selected original native identity for mecharm_interfaces/srv/PumpStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvPumpStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/PumpStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvPumpStatus_Response :: proc() -> Ros2Mecharm_interfacesSrvPumpStatus_Response {
 v: Ros2Mecharm_interfacesSrvPumpStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/PumpStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvPumpStatus_Response :: proc(v: ^Ros2Mecharm_interfacesSrvPumpStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/PumpStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvPumpStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvPumpStatus_Response,bool) {
 v:=init_Ros2Mecharm_interfacesSrvPumpStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/PumpStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvPumpStatus_Response :: proc(v: ^Ros2Mecharm_interfacesSrvPumpStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mecharm_interfacesSrvPumpStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mecharm_interfacesSrvPumpStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/PumpStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvPumpStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvPumpStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mecharm_interfacesSrvPumpStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvPumpStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvPumpStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/SetAngles_Request value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Request :: struct {
 // @brief mecharm_interfaces/srv/SetAngles_Request.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mecharm_interfaces/srv/SetAngles_Request.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mecharm_interfaces/srv/SetAngles_Request.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mecharm_interfaces/srv/SetAngles_Request.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mecharm_interfaces/srv/SetAngles_Request.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mecharm_interfaces/srv/SetAngles_Request.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mecharm_interfaces/srv/SetAngles_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/SetAngles_Request in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Request_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mecharm_interfaces/srv/SetAngles_Request.
// @details Exact identity UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Request_Codec_Identity :: "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb"
// @brief Original ROS type name for mecharm_interfaces/srv/SetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Request_Native_Type :: "mecharm_interfaces/srv/SetAngles_Request"
// @brief Selected original native identity for mecharm_interfaces/srv/SetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/SetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvSetAngles_Request :: proc() -> Ros2Mecharm_interfacesSrvSetAngles_Request {
 v: Ros2Mecharm_interfacesSrvSetAngles_Request
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/SetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mecharm_interfacesSrvSetAngles_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/SetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvSetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetAngles_Request,bool) {
 v:=init_Ros2Mecharm_interfacesSrvSetAngles_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/SetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mecharm_interfacesSrvSetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mecharm_interfacesSrvSetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mecharm_interfacesSrvSetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/SetAngles_Request value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvSetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetAngles_Request,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mecharm_interfacesSrvSetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvSetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvSetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/SetAngles_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Response :: struct {
 // @brief mecharm_interfaces/srv/SetAngles_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/SetAngles_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mecharm_interfaces/srv/SetAngles_Response.
// @details Exact identity UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Response_Codec_Identity :: "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620"
// @brief Original ROS type name for mecharm_interfaces/srv/SetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Response_Native_Type :: "mecharm_interfaces/srv/SetAngles_Response"
// @brief Selected original native identity for mecharm_interfaces/srv/SetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/SetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvSetAngles_Response :: proc() -> Ros2Mecharm_interfacesSrvSetAngles_Response {
 v: Ros2Mecharm_interfacesSrvSetAngles_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/SetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mecharm_interfacesSrvSetAngles_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/SetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvSetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetAngles_Response,bool) {
 v:=init_Ros2Mecharm_interfacesSrvSetAngles_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/SetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mecharm_interfacesSrvSetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mecharm_interfacesSrvSetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mecharm_interfacesSrvSetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/SetAngles_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvSetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetAngles_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mecharm_interfacesSrvSetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvSetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvSetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/SetCoords_Request value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies
// 26..26 bytes and is identified by
// UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Request :: struct {
 // @brief mecharm_interfaces/srv/SetCoords_Request.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mecharm_interfaces/srv/SetCoords_Request.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mecharm_interfaces/srv/SetCoords_Request.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mecharm_interfaces/srv/SetCoords_Request.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mecharm_interfaces/srv/SetCoords_Request.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mecharm_interfaces/srv/SetCoords_Request.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mecharm_interfaces/srv/SetCoords_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mecharm_interfaces/srv/SetCoords_Request.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/SetCoords_Request in bytes.
// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Request_Maximum_Wire_Bytes :: 26
// @brief Canonical codec identity of mecharm_interfaces/srv/SetCoords_Request.
// @details Exact identity UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Request_Codec_Identity :: "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916"
// @brief Original ROS type name for mecharm_interfaces/srv/SetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Request_Native_Type :: "mecharm_interfaces/srv/SetCoords_Request"
// @brief Selected original native identity for mecharm_interfaces/srv/SetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/SetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvSetCoords_Request :: proc() -> Ros2Mecharm_interfacesSrvSetCoords_Request {
 v: Ros2Mecharm_interfacesSrvSetCoords_Request
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 v.field_speed = 0
 v.field_model = 0
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/SetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mecharm_interfacesSrvSetCoords_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 if !put_integer(w,u64(v.field_model),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/SetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvSetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetCoords_Request,bool) {
 v:=init_Ros2Mecharm_interfacesSrvSetCoords_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_model=i8(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/SetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mecharm_interfacesSrvSetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=26}
 if !write_Ros2Mecharm_interfacesSrvSetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=26}
 if !write_Ros2Mecharm_interfacesSrvSetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/SetCoords_Request value.
// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvSetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetCoords_Request,u32) {
 if len(bytes)<26 || len(bytes)>26 { return Ros2Mecharm_interfacesSrvSetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvSetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvSetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mecharm_interfaces/srv/SetCoords_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Response :: struct {
 // @brief mecharm_interfaces/srv/SetCoords_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mecharm_interfaces/srv/SetCoords_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mecharm_interfaces/srv/SetCoords_Response.
// @details Exact identity UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Response_Codec_Identity :: "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f"
// @brief Original ROS type name for mecharm_interfaces/srv/SetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Response_Native_Type :: "mecharm_interfaces/srv/SetCoords_Response"
// @brief Selected original native identity for mecharm_interfaces/srv/SetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mecharm_interfacesSrvSetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mecharm_interfaces/srv/SetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mecharm_interfacesSrvSetCoords_Response :: proc() -> Ros2Mecharm_interfacesSrvSetCoords_Response {
 v: Ros2Mecharm_interfacesSrvSetCoords_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mecharm_interfaces/srv/SetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mecharm_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mecharm_interfacesSrvSetCoords_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mecharm_interfaces/srv/SetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mecharm_interfacesSrvSetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetCoords_Response,bool) {
 v:=init_Ros2Mecharm_interfacesSrvSetCoords_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mecharm_interfaces/srv/SetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mecharm_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mecharm_interfacesSrvSetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mecharm_interfacesSrvSetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mecharm_interfacesSrvSetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mecharm_interfaces/srv/SetCoords_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mecharm_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mecharm_interfacesSrvSetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mecharm_interfacesSrvSetCoords_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mecharm_interfacesSrvSetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mecharm_interfacesSrvSetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mecharm_interfacesSrvSetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/msg/MycobotAngles value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotAngles :: struct {
 // @brief mycobot_interfaces/msg/MycobotAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_interfaces/msg/MycobotAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_interfaces/msg/MycobotAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_interfaces/msg/MycobotAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_interfaces/msg/MycobotAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_interfaces/msg/MycobotAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mycobot_interfaces/msg/MycobotAngles in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotAngles_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_interfaces/msg/MycobotAngles.
// @details Exact identity UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotAngles_Codec_Identity :: "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82"
// @brief Original ROS type name for mycobot_interfaces/msg/MycobotAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotAngles_Native_Type :: "mycobot_interfaces/msg/MycobotAngles"
// @brief Selected original native identity for mycobot_interfaces/msg/MycobotAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/msg/MycobotAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesMsgMycobotAngles :: proc() -> Ros2Mycobot_interfacesMsgMycobotAngles {
 v: Ros2Mycobot_interfacesMsgMycobotAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/msg/MycobotAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesMsgMycobotAngles :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesMsgMycobotAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotAngles,bool) {
 v:=init_Ros2Mycobot_interfacesMsgMycobotAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/msg/MycobotAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesMsgMycobotAngles :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_interfacesMsgMycobotAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_interfacesMsgMycobotAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/msg/MycobotAngles value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesMsgMycobotAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotAngles,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_interfacesMsgMycobotAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesMsgMycobotAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesMsgMycobotAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/msg/MycobotCoords value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotCoords :: struct {
 // @brief mycobot_interfaces/msg/MycobotCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_interfaces/msg/MycobotCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_interfaces/msg/MycobotCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_interfaces/msg/MycobotCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_interfaces/msg/MycobotCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_interfaces/msg/MycobotCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mycobot_interfaces/msg/MycobotCoords in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotCoords_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_interfaces/msg/MycobotCoords.
// @details Exact identity UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotCoords_Codec_Identity :: "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7"
// @brief Original ROS type name for mycobot_interfaces/msg/MycobotCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotCoords_Native_Type :: "mycobot_interfaces/msg/MycobotCoords"
// @brief Selected original native identity for mycobot_interfaces/msg/MycobotCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/msg/MycobotCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesMsgMycobotCoords :: proc() -> Ros2Mycobot_interfacesMsgMycobotCoords {
 v: Ros2Mycobot_interfacesMsgMycobotCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/msg/MycobotCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesMsgMycobotCoords :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesMsgMycobotCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotCoords,bool) {
 v:=init_Ros2Mycobot_interfacesMsgMycobotCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/msg/MycobotCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesMsgMycobotCoords :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_interfacesMsgMycobotCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_interfacesMsgMycobotCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/msg/MycobotCoords value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesMsgMycobotCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotCoords,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_interfacesMsgMycobotCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesMsgMycobotCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesMsgMycobotCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/msg/MycobotGripperStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotGripperStatus :: struct {
 // @brief mycobot_interfaces/msg/MycobotGripperStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mycobot_interfaces/msg/MycobotGripperStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotGripperStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_interfaces/msg/MycobotGripperStatus.
// @details Exact identity UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotGripperStatus_Codec_Identity :: "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d"
// @brief Original ROS type name for mycobot_interfaces/msg/MycobotGripperStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotGripperStatus_Native_Type :: "mycobot_interfaces/msg/MycobotGripperStatus"
// @brief Selected original native identity for mycobot_interfaces/msg/MycobotGripperStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotGripperStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/msg/MycobotGripperStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesMsgMycobotGripperStatus :: proc() -> Ros2Mycobot_interfacesMsgMycobotGripperStatus {
 v: Ros2Mycobot_interfacesMsgMycobotGripperStatus
 v.field_status = false
 return v
}
// @brief Append every canonical field of mycobot_interfaces/msg/MycobotGripperStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesMsgMycobotGripperStatus :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotGripperStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotGripperStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesMsgMycobotGripperStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotGripperStatus,bool) {
 v:=init_Ros2Mycobot_interfacesMsgMycobotGripperStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/msg/MycobotGripperStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesMsgMycobotGripperStatus :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotGripperStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_interfacesMsgMycobotGripperStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_interfacesMsgMycobotGripperStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/msg/MycobotGripperStatus value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesMsgMycobotGripperStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotGripperStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_interfacesMsgMycobotGripperStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesMsgMycobotGripperStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesMsgMycobotGripperStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/msg/MycobotPumpStatus value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotPumpStatus :: struct {
 // @brief mycobot_interfaces/msg/MycobotPumpStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
 // @brief mycobot_interfaces/msg/MycobotPumpStatus.pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_pin1: i8,
 // @brief mycobot_interfaces/msg/MycobotPumpStatus.pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_pin2: i8,
}
// @brief Maximum canonical extent of mycobot_interfaces/msg/MycobotPumpStatus in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotPumpStatus_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mycobot_interfaces/msg/MycobotPumpStatus.
// @details Exact identity UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotPumpStatus_Codec_Identity :: "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58"
// @brief Original ROS type name for mycobot_interfaces/msg/MycobotPumpStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotPumpStatus_Native_Type :: "mycobot_interfaces/msg/MycobotPumpStatus"
// @brief Selected original native identity for mycobot_interfaces/msg/MycobotPumpStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotPumpStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/msg/MycobotPumpStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesMsgMycobotPumpStatus :: proc() -> Ros2Mycobot_interfacesMsgMycobotPumpStatus {
 v: Ros2Mycobot_interfacesMsgMycobotPumpStatus
 v.field_status = false
 v.field_pin1 = 0
 v.field_pin2 = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/msg/MycobotPumpStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesMsgMycobotPumpStatus :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotPumpStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 if !put_integer(w,u64(v.field_pin1),1) { return false }
 if !put_integer(w,u64(v.field_pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotPumpStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesMsgMycobotPumpStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotPumpStatus,bool) {
 v:=init_Ros2Mycobot_interfacesMsgMycobotPumpStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/msg/MycobotPumpStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesMsgMycobotPumpStatus :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotPumpStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros2Mycobot_interfacesMsgMycobotPumpStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros2Mycobot_interfacesMsgMycobotPumpStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/msg/MycobotPumpStatus value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesMsgMycobotPumpStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotPumpStatus,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros2Mycobot_interfacesMsgMycobotPumpStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesMsgMycobotPumpStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesMsgMycobotPumpStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/msg/MycobotSetAngles value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetAngles :: struct {
 // @brief mycobot_interfaces/msg/MycobotSetAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_interfaces/msg/MycobotSetAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_interfaces/msg/MycobotSetAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_interfaces/msg/MycobotSetAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_interfaces/msg/MycobotSetAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_interfaces/msg/MycobotSetAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mycobot_interfaces/msg/MycobotSetAngles.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_interfaces/msg/MycobotSetAngles in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetAngles_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_interfaces/msg/MycobotSetAngles.
// @details Exact identity UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetAngles_Codec_Identity :: "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e"
// @brief Original ROS type name for mycobot_interfaces/msg/MycobotSetAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetAngles_Native_Type :: "mycobot_interfaces/msg/MycobotSetAngles"
// @brief Selected original native identity for mycobot_interfaces/msg/MycobotSetAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/msg/MycobotSetAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesMsgMycobotSetAngles :: proc() -> Ros2Mycobot_interfacesMsgMycobotSetAngles {
 v: Ros2Mycobot_interfacesMsgMycobotSetAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/msg/MycobotSetAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesMsgMycobotSetAngles :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotSetAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotSetAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesMsgMycobotSetAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotSetAngles,bool) {
 v:=init_Ros2Mycobot_interfacesMsgMycobotSetAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/msg/MycobotSetAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesMsgMycobotSetAngles :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotSetAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mycobot_interfacesMsgMycobotSetAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mycobot_interfacesMsgMycobotSetAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/msg/MycobotSetAngles value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesMsgMycobotSetAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotSetAngles,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mycobot_interfacesMsgMycobotSetAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesMsgMycobotSetAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesMsgMycobotSetAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/msg/MycobotSetCoords value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies
// 26..26 bytes and is identified by
// UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetCoords :: struct {
 // @brief mycobot_interfaces/msg/MycobotSetCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mycobot_interfaces/msg/MycobotSetCoords.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mycobot_interfaces/msg/MycobotSetCoords in bytes.
// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetCoords_Maximum_Wire_Bytes :: 26
// @brief Canonical codec identity of mycobot_interfaces/msg/MycobotSetCoords.
// @details Exact identity UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetCoords_Codec_Identity :: "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49"
// @brief Original ROS type name for mycobot_interfaces/msg/MycobotSetCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetCoords_Native_Type :: "mycobot_interfaces/msg/MycobotSetCoords"
// @brief Selected original native identity for mycobot_interfaces/msg/MycobotSetCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesMsgMycobotSetCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/msg/MycobotSetCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesMsgMycobotSetCoords :: proc() -> Ros2Mycobot_interfacesMsgMycobotSetCoords {
 v: Ros2Mycobot_interfacesMsgMycobotSetCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 v.field_speed = 0
 v.field_model = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/msg/MycobotSetCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesMsgMycobotSetCoords :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotSetCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 if !put_integer(w,u64(v.field_model),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/msg/MycobotSetCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesMsgMycobotSetCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotSetCoords,bool) {
 v:=init_Ros2Mycobot_interfacesMsgMycobotSetCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_model=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/msg/MycobotSetCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesMsgMycobotSetCoords :: proc(v: ^Ros2Mycobot_interfacesMsgMycobotSetCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=26}
 if !write_Ros2Mycobot_interfacesMsgMycobotSetCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=26}
 if !write_Ros2Mycobot_interfacesMsgMycobotSetCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/msg/MycobotSetCoords value.
// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesMsgMycobotSetCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesMsgMycobotSetCoords,u32) {
 if len(bytes)<26 || len(bytes)>26 { return Ros2Mycobot_interfacesMsgMycobotSetCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesMsgMycobotSetCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesMsgMycobotSetCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/GetAngles_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Request :: struct {
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/GetAngles_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_interfaces/srv/GetAngles_Request.
// @details Exact identity UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Request_Codec_Identity :: "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e"
// @brief Original ROS type name for mycobot_interfaces/srv/GetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Request_Native_Type :: "mycobot_interfaces/srv/GetAngles_Request"
// @brief Selected original native identity for mycobot_interfaces/srv/GetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/GetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvGetAngles_Request :: proc() -> Ros2Mycobot_interfacesSrvGetAngles_Request {
 v: Ros2Mycobot_interfacesSrvGetAngles_Request
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/GetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mycobot_interfacesSrvGetAngles_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/GetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvGetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetAngles_Request,bool) {
 v:=init_Ros2Mycobot_interfacesSrvGetAngles_Request()
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/GetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mycobot_interfacesSrvGetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mycobot_interfacesSrvGetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mycobot_interfacesSrvGetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/GetAngles_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvGetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetAngles_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mycobot_interfacesSrvGetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvGetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvGetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/GetAngles_Response value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Response :: struct {
 // @brief mycobot_interfaces/srv/GetAngles_Response.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_interfaces/srv/GetAngles_Response.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_interfaces/srv/GetAngles_Response.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_interfaces/srv/GetAngles_Response.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_interfaces/srv/GetAngles_Response.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_interfaces/srv/GetAngles_Response.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/GetAngles_Response in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Response_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_interfaces/srv/GetAngles_Response.
// @details Exact identity UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Response_Codec_Identity :: "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a"
// @brief Original ROS type name for mycobot_interfaces/srv/GetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Response_Native_Type :: "mycobot_interfaces/srv/GetAngles_Response"
// @brief Selected original native identity for mycobot_interfaces/srv/GetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/GetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvGetAngles_Response :: proc() -> Ros2Mycobot_interfacesSrvGetAngles_Response {
 v: Ros2Mycobot_interfacesSrvGetAngles_Response
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/GetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mycobot_interfacesSrvGetAngles_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/GetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvGetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetAngles_Response,bool) {
 v:=init_Ros2Mycobot_interfacesSrvGetAngles_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/GetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mycobot_interfacesSrvGetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_interfacesSrvGetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_interfacesSrvGetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/GetAngles_Response value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvGetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetAngles_Response,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_interfacesSrvGetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvGetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvGetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/GetCoords_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Request :: struct {
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/GetCoords_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_interfaces/srv/GetCoords_Request.
// @details Exact identity UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Request_Codec_Identity :: "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076"
// @brief Original ROS type name for mycobot_interfaces/srv/GetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Request_Native_Type :: "mycobot_interfaces/srv/GetCoords_Request"
// @brief Selected original native identity for mycobot_interfaces/srv/GetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/GetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvGetCoords_Request :: proc() -> Ros2Mycobot_interfacesSrvGetCoords_Request {
 v: Ros2Mycobot_interfacesSrvGetCoords_Request
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/GetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mycobot_interfacesSrvGetCoords_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/GetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvGetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetCoords_Request,bool) {
 v:=init_Ros2Mycobot_interfacesSrvGetCoords_Request()
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/GetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mycobot_interfacesSrvGetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mycobot_interfacesSrvGetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mycobot_interfacesSrvGetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/GetCoords_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvGetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetCoords_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mycobot_interfacesSrvGetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvGetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvGetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/GetCoords_Response value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Response :: struct {
 // @brief mycobot_interfaces/srv/GetCoords_Response.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_interfaces/srv/GetCoords_Response.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_interfaces/srv/GetCoords_Response.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_interfaces/srv/GetCoords_Response.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_interfaces/srv/GetCoords_Response.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_interfaces/srv/GetCoords_Response.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/GetCoords_Response in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Response_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_interfaces/srv/GetCoords_Response.
// @details Exact identity UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Response_Codec_Identity :: "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787"
// @brief Original ROS type name for mycobot_interfaces/srv/GetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Response_Native_Type :: "mycobot_interfaces/srv/GetCoords_Response"
// @brief Selected original native identity for mycobot_interfaces/srv/GetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/GetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvGetCoords_Response :: proc() -> Ros2Mycobot_interfacesSrvGetCoords_Response {
 v: Ros2Mycobot_interfacesSrvGetCoords_Response
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/GetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mycobot_interfacesSrvGetCoords_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/GetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvGetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetCoords_Response,bool) {
 v:=init_Ros2Mycobot_interfacesSrvGetCoords_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/GetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mycobot_interfacesSrvGetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_interfacesSrvGetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_interfacesSrvGetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/GetCoords_Response value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvGetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGetCoords_Response,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_interfacesSrvGetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvGetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvGetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/GripperStatus_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Request :: struct {
 // @brief mycobot_interfaces/srv/GripperStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/GripperStatus_Request in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Request_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_interfaces/srv/GripperStatus_Request.
// @details Exact identity UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Request_Codec_Identity :: "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5"
// @brief Original ROS type name for mycobot_interfaces/srv/GripperStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Request_Native_Type :: "mycobot_interfaces/srv/GripperStatus_Request"
// @brief Selected original native identity for mycobot_interfaces/srv/GripperStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/GripperStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvGripperStatus_Request :: proc() -> Ros2Mycobot_interfacesSrvGripperStatus_Request {
 v: Ros2Mycobot_interfacesSrvGripperStatus_Request
 v.field_status = false
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/GripperStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mycobot_interfacesSrvGripperStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/GripperStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvGripperStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGripperStatus_Request,bool) {
 v:=init_Ros2Mycobot_interfacesSrvGripperStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/GripperStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mycobot_interfacesSrvGripperStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_interfacesSrvGripperStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_interfacesSrvGripperStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/GripperStatus_Request value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvGripperStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGripperStatus_Request,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_interfacesSrvGripperStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvGripperStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvGripperStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/GripperStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Response :: struct {
 // @brief mycobot_interfaces/srv/GripperStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/GripperStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_interfaces/srv/GripperStatus_Response.
// @details Exact identity UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Response_Codec_Identity :: "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab"
// @brief Original ROS type name for mycobot_interfaces/srv/GripperStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Response_Native_Type :: "mycobot_interfaces/srv/GripperStatus_Response"
// @brief Selected original native identity for mycobot_interfaces/srv/GripperStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvGripperStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/GripperStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvGripperStatus_Response :: proc() -> Ros2Mycobot_interfacesSrvGripperStatus_Response {
 v: Ros2Mycobot_interfacesSrvGripperStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/GripperStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mycobot_interfacesSrvGripperStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/GripperStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvGripperStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGripperStatus_Response,bool) {
 v:=init_Ros2Mycobot_interfacesSrvGripperStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/GripperStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mycobot_interfacesSrvGripperStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_interfacesSrvGripperStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_interfacesSrvGripperStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/GripperStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvGripperStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvGripperStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_interfacesSrvGripperStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvGripperStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvGripperStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/PumpStatus_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Request :: struct {
 // @brief mycobot_interfaces/srv/PumpStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
 // @brief mycobot_interfaces/srv/PumpStatus_Request.pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pin1: i8,
 // @brief mycobot_interfaces/srv/PumpStatus_Request.pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pin2: i8,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/PumpStatus_Request in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Request_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mycobot_interfaces/srv/PumpStatus_Request.
// @details Exact identity UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Request_Codec_Identity :: "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0"
// @brief Original ROS type name for mycobot_interfaces/srv/PumpStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Request_Native_Type :: "mycobot_interfaces/srv/PumpStatus_Request"
// @brief Selected original native identity for mycobot_interfaces/srv/PumpStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/PumpStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvPumpStatus_Request :: proc() -> Ros2Mycobot_interfacesSrvPumpStatus_Request {
 v: Ros2Mycobot_interfacesSrvPumpStatus_Request
 v.field_status = false
 v.field_pin1 = 0
 v.field_pin2 = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/PumpStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvPumpStatus_Request :: proc(v: ^Ros2Mycobot_interfacesSrvPumpStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 if !put_integer(w,u64(v.field_pin1),1) { return false }
 if !put_integer(w,u64(v.field_pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/PumpStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvPumpStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvPumpStatus_Request,bool) {
 v:=init_Ros2Mycobot_interfacesSrvPumpStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/PumpStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvPumpStatus_Request :: proc(v: ^Ros2Mycobot_interfacesSrvPumpStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros2Mycobot_interfacesSrvPumpStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros2Mycobot_interfacesSrvPumpStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/PumpStatus_Request value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvPumpStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvPumpStatus_Request,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros2Mycobot_interfacesSrvPumpStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvPumpStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvPumpStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/PumpStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Response :: struct {
 // @brief mycobot_interfaces/srv/PumpStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/PumpStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_interfaces/srv/PumpStatus_Response.
// @details Exact identity UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Response_Codec_Identity :: "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0"
// @brief Original ROS type name for mycobot_interfaces/srv/PumpStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Response_Native_Type :: "mycobot_interfaces/srv/PumpStatus_Response"
// @brief Selected original native identity for mycobot_interfaces/srv/PumpStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvPumpStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/PumpStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvPumpStatus_Response :: proc() -> Ros2Mycobot_interfacesSrvPumpStatus_Response {
 v: Ros2Mycobot_interfacesSrvPumpStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/PumpStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvPumpStatus_Response :: proc(v: ^Ros2Mycobot_interfacesSrvPumpStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/PumpStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvPumpStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvPumpStatus_Response,bool) {
 v:=init_Ros2Mycobot_interfacesSrvPumpStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/PumpStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvPumpStatus_Response :: proc(v: ^Ros2Mycobot_interfacesSrvPumpStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_interfacesSrvPumpStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_interfacesSrvPumpStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/PumpStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvPumpStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvPumpStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_interfacesSrvPumpStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvPumpStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvPumpStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/SetAngles_Request value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Request :: struct {
 // @brief mycobot_interfaces/srv/SetAngles_Request.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_interfaces/srv/SetAngles_Request.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_interfaces/srv/SetAngles_Request.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_interfaces/srv/SetAngles_Request.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_interfaces/srv/SetAngles_Request.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_interfaces/srv/SetAngles_Request.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mycobot_interfaces/srv/SetAngles_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/SetAngles_Request in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Request_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_interfaces/srv/SetAngles_Request.
// @details Exact identity UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Request_Codec_Identity :: "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310"
// @brief Original ROS type name for mycobot_interfaces/srv/SetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Request_Native_Type :: "mycobot_interfaces/srv/SetAngles_Request"
// @brief Selected original native identity for mycobot_interfaces/srv/SetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/SetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvSetAngles_Request :: proc() -> Ros2Mycobot_interfacesSrvSetAngles_Request {
 v: Ros2Mycobot_interfacesSrvSetAngles_Request
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/SetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mycobot_interfacesSrvSetAngles_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/SetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvSetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetAngles_Request,bool) {
 v:=init_Ros2Mycobot_interfacesSrvSetAngles_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/SetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mycobot_interfacesSrvSetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mycobot_interfacesSrvSetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mycobot_interfacesSrvSetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/SetAngles_Request value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvSetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetAngles_Request,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mycobot_interfacesSrvSetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvSetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvSetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/SetAngles_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Response :: struct {
 // @brief mycobot_interfaces/srv/SetAngles_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/SetAngles_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_interfaces/srv/SetAngles_Response.
// @details Exact identity UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Response_Codec_Identity :: "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665"
// @brief Original ROS type name for mycobot_interfaces/srv/SetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Response_Native_Type :: "mycobot_interfaces/srv/SetAngles_Response"
// @brief Selected original native identity for mycobot_interfaces/srv/SetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/SetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvSetAngles_Response :: proc() -> Ros2Mycobot_interfacesSrvSetAngles_Response {
 v: Ros2Mycobot_interfacesSrvSetAngles_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/SetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mycobot_interfacesSrvSetAngles_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/SetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvSetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetAngles_Response,bool) {
 v:=init_Ros2Mycobot_interfacesSrvSetAngles_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/SetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mycobot_interfacesSrvSetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_interfacesSrvSetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_interfacesSrvSetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/SetAngles_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvSetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetAngles_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_interfacesSrvSetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvSetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvSetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/SetCoords_Request value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies
// 26..26 bytes and is identified by
// UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Request :: struct {
 // @brief mycobot_interfaces/srv/SetCoords_Request.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_interfaces/srv/SetCoords_Request.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_interfaces/srv/SetCoords_Request.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_interfaces/srv/SetCoords_Request.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_interfaces/srv/SetCoords_Request.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_interfaces/srv/SetCoords_Request.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mycobot_interfaces/srv/SetCoords_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mycobot_interfaces/srv/SetCoords_Request.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/SetCoords_Request in bytes.
// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Request_Maximum_Wire_Bytes :: 26
// @brief Canonical codec identity of mycobot_interfaces/srv/SetCoords_Request.
// @details Exact identity UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Request_Codec_Identity :: "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213"
// @brief Original ROS type name for mycobot_interfaces/srv/SetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Request_Native_Type :: "mycobot_interfaces/srv/SetCoords_Request"
// @brief Selected original native identity for mycobot_interfaces/srv/SetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/SetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvSetCoords_Request :: proc() -> Ros2Mycobot_interfacesSrvSetCoords_Request {
 v: Ros2Mycobot_interfacesSrvSetCoords_Request
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 v.field_speed = 0
 v.field_model = 0
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/SetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mycobot_interfacesSrvSetCoords_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 if !put_integer(w,u64(v.field_model),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/SetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvSetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetCoords_Request,bool) {
 v:=init_Ros2Mycobot_interfacesSrvSetCoords_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_model=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/SetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mycobot_interfacesSrvSetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=26}
 if !write_Ros2Mycobot_interfacesSrvSetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=26}
 if !write_Ros2Mycobot_interfacesSrvSetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/SetCoords_Request value.
// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvSetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetCoords_Request,u32) {
 if len(bytes)<26 || len(bytes)>26 { return Ros2Mycobot_interfacesSrvSetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvSetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvSetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_interfaces/srv/SetCoords_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Response :: struct {
 // @brief mycobot_interfaces/srv/SetCoords_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_interfaces/srv/SetCoords_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_interfaces/srv/SetCoords_Response.
// @details Exact identity UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Response_Codec_Identity :: "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9"
// @brief Original ROS type name for mycobot_interfaces/srv/SetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Response_Native_Type :: "mycobot_interfaces/srv/SetCoords_Response"
// @brief Selected original native identity for mycobot_interfaces/srv/SetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_interfacesSrvSetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_interfaces/srv/SetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_interfacesSrvSetCoords_Response :: proc() -> Ros2Mycobot_interfacesSrvSetCoords_Response {
 v: Ros2Mycobot_interfacesSrvSetCoords_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_interfaces/srv/SetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mycobot_interfacesSrvSetCoords_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_interfaces/srv/SetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_interfacesSrvSetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetCoords_Response,bool) {
 v:=init_Ros2Mycobot_interfacesSrvSetCoords_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_interfaces/srv/SetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mycobot_interfacesSrvSetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_interfacesSrvSetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_interfacesSrvSetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_interfaces/srv/SetCoords_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_interfacesSrvSetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_interfacesSrvSetCoords_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_interfacesSrvSetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_interfacesSrvSetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_interfacesSrvSetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotAngles value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotAngles :: struct {
 // @brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/msg/MycobotAngles in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotAngles_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotAngles.
// @details Exact identity UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotAngles_Codec_Identity :: "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da"
// @brief Original ROS type name for mycobot_pro450_interfaces/msg/MycobotAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotAngles_Native_Type :: "mycobot_pro450_interfaces/msg/MycobotAngles"
// @brief Selected original native identity for mycobot_pro450_interfaces/msg/MycobotAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesMsgMycobotAngles :: proc() -> Ros2Mycobot_pro450_interfacesMsgMycobotAngles {
 v: Ros2Mycobot_pro450_interfacesMsgMycobotAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesMsgMycobotAngles :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesMsgMycobotAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotAngles,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesMsgMycobotAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/msg/MycobotAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesMsgMycobotAngles :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotAngles value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesMsgMycobotAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotAngles,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_pro450_interfacesMsgMycobotAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesMsgMycobotAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesMsgMycobotAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotCoords value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotCoords :: struct {
 // @brief mycobot_pro450_interfaces/msg/MycobotCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/msg/MycobotCoords in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotCoords_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotCoords.
// @details Exact identity UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotCoords_Codec_Identity :: "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de"
// @brief Original ROS type name for mycobot_pro450_interfaces/msg/MycobotCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotCoords_Native_Type :: "mycobot_pro450_interfaces/msg/MycobotCoords"
// @brief Selected original native identity for mycobot_pro450_interfaces/msg/MycobotCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesMsgMycobotCoords :: proc() -> Ros2Mycobot_pro450_interfacesMsgMycobotCoords {
 v: Ros2Mycobot_pro450_interfacesMsgMycobotCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesMsgMycobotCoords :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesMsgMycobotCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotCoords,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesMsgMycobotCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/msg/MycobotCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesMsgMycobotCoords :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotCoords value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesMsgMycobotCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotCoords,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_pro450_interfacesMsgMycobotCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesMsgMycobotCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesMsgMycobotCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotGripperStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: struct {
 // @brief mycobot_pro450_interfaces/msg/MycobotGripperStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/msg/MycobotGripperStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
// @details Exact identity UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus_Codec_Identity :: "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784"
// @brief Original ROS type name for mycobot_pro450_interfaces/msg/MycobotGripperStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus_Native_Type :: "mycobot_pro450_interfaces/msg/MycobotGripperStatus"
// @brief Selected original native identity for mycobot_pro450_interfaces/msg/MycobotGripperStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: proc() -> Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus {
 v: Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
 v.field_status = false
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotGripperStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/msg/MycobotGripperStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotGripperStatus value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotSetAngles value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles :: struct {
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetAngles.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/msg/MycobotSetAngles in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotSetAngles.
// @details Exact identity UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_Codec_Identity :: "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591"
// @brief Original ROS type name for mycobot_pro450_interfaces/msg/MycobotSetAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_Native_Type :: "mycobot_pro450_interfaces/msg/MycobotSetAngles"
// @brief Selected original native identity for mycobot_pro450_interfaces/msg/MycobotSetAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotSetAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles :: proc() -> Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles {
 v: Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotSetAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotSetAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/msg/MycobotSetAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotSetAngles value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/msg/MycobotSetCoords value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords :: struct {
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mycobot_pro450_interfaces/msg/MycobotSetCoords.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/msg/MycobotSetCoords in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_pro450_interfaces/msg/MycobotSetCoords.
// @details Exact identity UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_Codec_Identity :: "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea"
// @brief Original ROS type name for mycobot_pro450_interfaces/msg/MycobotSetCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_Native_Type :: "mycobot_pro450_interfaces/msg/MycobotSetCoords"
// @brief Selected original native identity for mycobot_pro450_interfaces/msg/MycobotSetCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/msg/MycobotSetCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords :: proc() -> Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords {
 v: Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/msg/MycobotSetCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/msg/MycobotSetCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/msg/MycobotSetCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords :: proc(v: ^Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/msg/MycobotSetCoords value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetAngles_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Request :: struct {
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GetAngles_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetAngles_Request.
// @details Exact identity UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Request_Codec_Identity :: "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Request_Native_Type :: "mycobot_pro450_interfaces/srv/GetAngles_Request"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request :: proc() -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Request {
 v: Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetAngles_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetAngles_Request,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request()
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetAngles_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetAngles_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mycobot_pro450_interfacesSrvGetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetAngles_Response value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Response :: struct {
 // @brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_pro450_interfaces/srv/GetAngles_Response.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GetAngles_Response in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Response_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetAngles_Response.
// @details Exact identity UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Response_Codec_Identity :: "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Response_Native_Type :: "mycobot_pro450_interfaces/srv/GetAngles_Response"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response :: proc() -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Response {
 v: Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetAngles_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetAngles_Response,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetAngles_Response value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetAngles_Response,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_pro450_interfacesSrvGetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetCoords_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Request :: struct {
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GetCoords_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetCoords_Request.
// @details Exact identity UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Request_Codec_Identity :: "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Request_Native_Type :: "mycobot_pro450_interfaces/srv/GetCoords_Request"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request :: proc() -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Request {
 v: Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetCoords_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetCoords_Request,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request()
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetCoords_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetCoords_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mycobot_pro450_interfacesSrvGetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetCoords_Response value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Response :: struct {
 // @brief mycobot_pro450_interfaces/srv/GetCoords_Response.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_pro450_interfaces/srv/GetCoords_Response.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_pro450_interfaces/srv/GetCoords_Response.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_pro450_interfaces/srv/GetCoords_Response.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_pro450_interfaces/srv/GetCoords_Response.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_pro450_interfaces/srv/GetCoords_Response.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GetCoords_Response in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Response_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetCoords_Response.
// @details Exact identity UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Response_Codec_Identity :: "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Response_Native_Type :: "mycobot_pro450_interfaces/srv/GetCoords_Response"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response :: proc() -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Response {
 v: Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetCoords_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetCoords_Response,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetCoords_Response value.
// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetCoords_Response,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros2Mycobot_pro450_interfacesSrvGetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetGripperValue_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: struct {
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GetGripperValue_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
// @details Exact identity UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request_Codec_Identity :: "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GetGripperValue_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request_Native_Type :: "mycobot_pro450_interfaces/srv/GetGripperValue_Request"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GetGripperValue_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: proc() -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request {
 v: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetGripperValue_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request()
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GetGripperValue_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetGripperValue_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GetGripperValue_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: struct {
 // @brief mycobot_pro450_interfaces/srv/GetGripperValue_Response.gripper_angle: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
 field_gripper_angle: i8,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GetGripperValue_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
// @details Exact identity UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response_Codec_Identity :: "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GetGripperValue_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response_Native_Type :: "mycobot_pro450_interfaces/srv/GetGripperValue_Response"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GetGripperValue_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: proc() -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response {
 v: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
 v.field_gripper_angle = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_gripper_angle),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GetGripperValue_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_gripper_angle=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GetGripperValue_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GetGripperValue_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response,
    u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GripperStatus_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request :: struct {
 // @brief mycobot_pro450_interfaces/srv/GripperStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GripperStatus_Request in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GripperStatus_Request.
// @details Exact identity UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request_Codec_Identity :: "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GripperStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request_Native_Type :: "mycobot_pro450_interfaces/srv/GripperStatus_Request"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GripperStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GripperStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request :: proc() -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request {
 v: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
 v.field_status = false
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GripperStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GripperStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GripperStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GripperStatus_Request value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/GripperStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response :: struct {
 // @brief mycobot_pro450_interfaces/srv/GripperStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/GripperStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/GripperStatus_Response.
// @details Exact identity UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response_Codec_Identity :: "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/GripperStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response_Native_Type :: "mycobot_pro450_interfaces/srv/GripperStatus_Response"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/GripperStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/GripperStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response :: proc() -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response {
 v: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/GripperStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/GripperStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/GripperStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/GripperStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetAngles_Request value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Request :: struct {
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/SetAngles_Request in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Request_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetAngles_Request.
// @details Exact identity UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Request_Codec_Identity :: "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/SetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Request_Native_Type :: "mycobot_pro450_interfaces/srv/SetAngles_Request"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/SetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request :: proc() -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Request {
 v: Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/SetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetAngles_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetAngles_Request,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_5=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_6=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/SetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetAngles_Request value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetAngles_Request,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mycobot_pro450_interfacesSrvSetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvSetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetAngles_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Response :: struct {
 // @brief mycobot_pro450_interfaces/srv/SetAngles_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/SetAngles_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetAngles_Response.
// @details Exact identity UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Response_Codec_Identity :: "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/SetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Response_Native_Type :: "mycobot_pro450_interfaces/srv/SetAngles_Response"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/SetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response :: proc() -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Response {
 v: Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/SetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetAngles_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetAngles_Response,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/SetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetAngles_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetAngles_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_pro450_interfacesSrvSetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvSetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetCoords_Request value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Request :: struct {
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/SetCoords_Request in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Request_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetCoords_Request.
// @details Exact identity UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Request_Codec_Identity :: "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/SetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Request_Native_Type :: "mycobot_pro450_interfaces/srv/SetCoords_Request"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/SetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request :: proc() -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Request {
 v: Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/SetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetCoords_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetCoords_Request,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_ry=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rz=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/SetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetCoords_Request value.
// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetCoords_Request,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros2Mycobot_pro450_interfacesSrvSetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvSetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mycobot_pro450_interfaces/srv/SetCoords_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Response :: struct {
 // @brief mycobot_pro450_interfaces/srv/SetCoords_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mycobot_pro450_interfaces/srv/SetCoords_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_pro450_interfaces/srv/SetCoords_Response.
// @details Exact identity UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Response_Codec_Identity :: "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51"
// @brief Original ROS type name for mycobot_pro450_interfaces/srv/SetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Response_Native_Type :: "mycobot_pro450_interfaces/srv/SetCoords_Response"
// @brief Selected original native identity for mycobot_pro450_interfaces/srv/SetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mycobot_pro450_interfacesSrvSetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_pro450_interfaces/srv/SetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response :: proc() -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Response {
 v: Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mycobot_pro450_interfaces/srv/SetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetCoords_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_pro450_interfaces/srv/SetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetCoords_Response,bool) {
 v:=init_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_pro450_interfaces/srv/SetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mycobot_pro450_interfacesSrvSetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_pro450_interfaces/srv/SetCoords_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mycobot_pro450_interfacesSrvSetCoords_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mycobot_pro450_interfacesSrvSetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mycobot_pro450_interfacesSrvSetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/msg/MypalAngles value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalAngles :: struct {
 // @brief mypalletizer_interfaces/msg/MypalAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_interfaces/msg/MypalAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_interfaces/msg/MypalAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_interfaces/msg/MypalAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/msg/MypalAngles in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalAngles_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_interfaces/msg/MypalAngles.
// @details Exact identity UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalAngles_Codec_Identity :: "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d"
// @brief Original ROS type name for mypalletizer_interfaces/msg/MypalAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalAngles_Native_Type :: "mypalletizer_interfaces/msg/MypalAngles"
// @brief Selected original native identity for mypalletizer_interfaces/msg/MypalAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesMsgMypalAngles :: proc() -> Ros2Mypalletizer_interfacesMsgMypalAngles {
 v: Ros2Mypalletizer_interfacesMsgMypalAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/msg/MypalAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesMsgMypalAngles :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesMsgMypalAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalAngles,bool) {
 v:=init_Ros2Mypalletizer_interfacesMsgMypalAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/msg/MypalAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesMsgMypalAngles :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Mypalletizer_interfacesMsgMypalAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Mypalletizer_interfacesMsgMypalAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/msg/MypalAngles value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesMsgMypalAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalAngles,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Mypalletizer_interfacesMsgMypalAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesMsgMypalAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesMsgMypalAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/msg/MypalCoords value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalCoords :: struct {
 // @brief mypalletizer_interfaces/msg/MypalCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_interfaces/msg/MypalCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_interfaces/msg/MypalCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_interfaces/msg/MypalCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/msg/MypalCoords in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalCoords_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_interfaces/msg/MypalCoords.
// @details Exact identity UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalCoords_Codec_Identity :: "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7"
// @brief Original ROS type name for mypalletizer_interfaces/msg/MypalCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalCoords_Native_Type :: "mypalletizer_interfaces/msg/MypalCoords"
// @brief Selected original native identity for mypalletizer_interfaces/msg/MypalCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesMsgMypalCoords :: proc() -> Ros2Mypalletizer_interfacesMsgMypalCoords {
 v: Ros2Mypalletizer_interfacesMsgMypalCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/msg/MypalCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesMsgMypalCoords :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesMsgMypalCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalCoords,bool) {
 v:=init_Ros2Mypalletizer_interfacesMsgMypalCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/msg/MypalCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesMsgMypalCoords :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Mypalletizer_interfacesMsgMypalCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Mypalletizer_interfacesMsgMypalCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/msg/MypalCoords value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesMsgMypalCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalCoords,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Mypalletizer_interfacesMsgMypalCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesMsgMypalCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesMsgMypalCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/msg/MypalGripperStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalGripperStatus :: struct {
 // @brief mypalletizer_interfaces/msg/MypalGripperStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/msg/MypalGripperStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalGripperStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_interfaces/msg/MypalGripperStatus.
// @details Exact identity UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalGripperStatus_Codec_Identity :: "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0"
// @brief Original ROS type name for mypalletizer_interfaces/msg/MypalGripperStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalGripperStatus_Native_Type :: "mypalletizer_interfaces/msg/MypalGripperStatus"
// @brief Selected original native identity for mypalletizer_interfaces/msg/MypalGripperStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalGripperStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalGripperStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesMsgMypalGripperStatus :: proc() -> Ros2Mypalletizer_interfacesMsgMypalGripperStatus {
 v: Ros2Mypalletizer_interfacesMsgMypalGripperStatus
 v.field_status = false
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/msg/MypalGripperStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesMsgMypalGripperStatus :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalGripperStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalGripperStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesMsgMypalGripperStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalGripperStatus,bool) {
 v:=init_Ros2Mypalletizer_interfacesMsgMypalGripperStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/msg/MypalGripperStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesMsgMypalGripperStatus :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalGripperStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/msg/MypalGripperStatus value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesMsgMypalGripperStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalGripperStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mypalletizer_interfacesMsgMypalGripperStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesMsgMypalGripperStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesMsgMypalGripperStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/msg/MypalPumpStatus value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalPumpStatus :: struct {
 // @brief mypalletizer_interfaces/msg/MypalPumpStatus.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
 // @brief mypalletizer_interfaces/msg/MypalPumpStatus.pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_pin1: i8,
 // @brief mypalletizer_interfaces/msg/MypalPumpStatus.pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_pin2: i8,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/msg/MypalPumpStatus in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalPumpStatus_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mypalletizer_interfaces/msg/MypalPumpStatus.
// @details Exact identity UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalPumpStatus_Codec_Identity :: "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c"
// @brief Original ROS type name for mypalletizer_interfaces/msg/MypalPumpStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalPumpStatus_Native_Type :: "mypalletizer_interfaces/msg/MypalPumpStatus"
// @brief Selected original native identity for mypalletizer_interfaces/msg/MypalPumpStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalPumpStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalPumpStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesMsgMypalPumpStatus :: proc() -> Ros2Mypalletizer_interfacesMsgMypalPumpStatus {
 v: Ros2Mypalletizer_interfacesMsgMypalPumpStatus
 v.field_status = false
 v.field_pin1 = 0
 v.field_pin2 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/msg/MypalPumpStatus.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesMsgMypalPumpStatus :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalPumpStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 if !put_integer(w,u64(v.field_pin1),1) { return false }
 if !put_integer(w,u64(v.field_pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalPumpStatus.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesMsgMypalPumpStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalPumpStatus,bool) {
 v:=init_Ros2Mypalletizer_interfacesMsgMypalPumpStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/msg/MypalPumpStatus value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesMsgMypalPumpStatus :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalPumpStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/msg/MypalPumpStatus value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesMsgMypalPumpStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalPumpStatus,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros2Mypalletizer_interfacesMsgMypalPumpStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesMsgMypalPumpStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesMsgMypalPumpStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/msg/MypalSetAngles value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 17..17 bytes and is identified by
// UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetAngles :: struct {
 // @brief mypalletizer_interfaces/msg/MypalSetAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetAngles.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/msg/MypalSetAngles in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetAngles_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of mypalletizer_interfaces/msg/MypalSetAngles.
// @details Exact identity UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetAngles_Codec_Identity :: "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5"
// @brief Original ROS type name for mypalletizer_interfaces/msg/MypalSetAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetAngles_Native_Type :: "mypalletizer_interfaces/msg/MypalSetAngles"
// @brief Selected original native identity for mypalletizer_interfaces/msg/MypalSetAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalSetAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesMsgMypalSetAngles :: proc() -> Ros2Mypalletizer_interfacesMsgMypalSetAngles {
 v: Ros2Mypalletizer_interfacesMsgMypalSetAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/msg/MypalSetAngles.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesMsgMypalSetAngles :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalSetAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalSetAngles.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesMsgMypalSetAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalSetAngles,bool) {
 v:=init_Ros2Mypalletizer_interfacesMsgMypalSetAngles()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/msg/MypalSetAngles value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesMsgMypalSetAngles :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalSetAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Mypalletizer_interfacesMsgMypalSetAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Mypalletizer_interfacesMsgMypalSetAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/msg/MypalSetAngles value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesMsgMypalSetAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalSetAngles,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Mypalletizer_interfacesMsgMypalSetAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesMsgMypalSetAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesMsgMypalSetAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/msg/MypalSetCoords value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 17..17 bytes and is identified by
// UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetCoords :: struct {
 // @brief mypalletizer_interfaces/msg/MypalSetCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mypalletizer_interfaces/msg/MypalSetCoords.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/msg/MypalSetCoords in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetCoords_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of mypalletizer_interfaces/msg/MypalSetCoords.
// @details Exact identity UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetCoords_Codec_Identity :: "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79"
// @brief Original ROS type name for mypalletizer_interfaces/msg/MypalSetCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetCoords_Native_Type :: "mypalletizer_interfaces/msg/MypalSetCoords"
// @brief Selected original native identity for mypalletizer_interfaces/msg/MypalSetCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesMsgMypalSetCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/msg/MypalSetCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesMsgMypalSetCoords :: proc() -> Ros2Mypalletizer_interfacesMsgMypalSetCoords {
 v: Ros2Mypalletizer_interfacesMsgMypalSetCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/msg/MypalSetCoords.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesMsgMypalSetCoords :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalSetCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/msg/MypalSetCoords.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesMsgMypalSetCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalSetCoords,bool) {
 v:=init_Ros2Mypalletizer_interfacesMsgMypalSetCoords()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/msg/MypalSetCoords value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesMsgMypalSetCoords :: proc(v: ^Ros2Mypalletizer_interfacesMsgMypalSetCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Mypalletizer_interfacesMsgMypalSetCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Mypalletizer_interfacesMsgMypalSetCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/msg/MypalSetCoords value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesMsgMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesMsgMypalSetCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesMsgMypalSetCoords,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Mypalletizer_interfacesMsgMypalSetCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesMsgMypalSetCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesMsgMypalSetCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/GetAngles_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Request :: struct {
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/GetAngles_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mypalletizer_interfaces/srv/GetAngles_Request.
// @details Exact identity UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Request_Codec_Identity :: "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78"
// @brief Original ROS type name for mypalletizer_interfaces/srv/GetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Request_Native_Type :: "mypalletizer_interfaces/srv/GetAngles_Request"
// @brief Selected original native identity for mypalletizer_interfaces/srv/GetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/GetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvGetAngles_Request :: proc() -> Ros2Mypalletizer_interfacesSrvGetAngles_Request {
 v: Ros2Mypalletizer_interfacesSrvGetAngles_Request
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/GetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetAngles_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvGetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetAngles_Request,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvGetAngles_Request()
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/GetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvGetAngles_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mypalletizer_interfacesSrvGetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mypalletizer_interfacesSrvGetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/GetAngles_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvGetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetAngles_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mypalletizer_interfacesSrvGetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvGetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvGetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/GetAngles_Response value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Response :: struct {
 // @brief mypalletizer_interfaces/srv/GetAngles_Response.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_interfaces/srv/GetAngles_Response.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_interfaces/srv/GetAngles_Response.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_interfaces/srv/GetAngles_Response.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/GetAngles_Response in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Response_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_interfaces/srv/GetAngles_Response.
// @details Exact identity UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Response_Codec_Identity :: "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d"
// @brief Original ROS type name for mypalletizer_interfaces/srv/GetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Response_Native_Type :: "mypalletizer_interfaces/srv/GetAngles_Response"
// @brief Selected original native identity for mypalletizer_interfaces/srv/GetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/GetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvGetAngles_Response :: proc() -> Ros2Mypalletizer_interfacesSrvGetAngles_Response {
 v: Ros2Mypalletizer_interfacesSrvGetAngles_Response
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/GetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetAngles_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvGetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetAngles_Response,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvGetAngles_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/GetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvGetAngles_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Mypalletizer_interfacesSrvGetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Mypalletizer_interfacesSrvGetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/GetAngles_Response value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvGetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetAngles_Response,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Mypalletizer_interfacesSrvGetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvGetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvGetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/GetCoords_Request value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Request :: struct {
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/GetCoords_Request in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Request_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mypalletizer_interfaces/srv/GetCoords_Request.
// @details Exact identity UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Request_Codec_Identity :: "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440"
// @brief Original ROS type name for mypalletizer_interfaces/srv/GetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Request_Native_Type :: "mypalletizer_interfaces/srv/GetCoords_Request"
// @brief Selected original native identity for mypalletizer_interfaces/srv/GetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/GetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvGetCoords_Request :: proc() -> Ros2Mypalletizer_interfacesSrvGetCoords_Request {
 v: Ros2Mypalletizer_interfacesSrvGetCoords_Request
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/GetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetCoords_Request, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvGetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetCoords_Request,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvGetCoords_Request()
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/GetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvGetCoords_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros2Mypalletizer_interfacesSrvGetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros2Mypalletizer_interfacesSrvGetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/GetCoords_Request value.
// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvGetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetCoords_Request,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros2Mypalletizer_interfacesSrvGetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvGetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvGetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/GetCoords_Response value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Response :: struct {
 // @brief mypalletizer_interfaces/srv/GetCoords_Response.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_interfaces/srv/GetCoords_Response.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_interfaces/srv/GetCoords_Response.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_interfaces/srv/GetCoords_Response.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/GetCoords_Response in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Response_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_interfaces/srv/GetCoords_Response.
// @details Exact identity UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Response_Codec_Identity :: "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84"
// @brief Original ROS type name for mypalletizer_interfaces/srv/GetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Response_Native_Type :: "mypalletizer_interfaces/srv/GetCoords_Response"
// @brief Selected original native identity for mypalletizer_interfaces/srv/GetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/GetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvGetCoords_Response :: proc() -> Ros2Mypalletizer_interfacesSrvGetCoords_Response {
 v: Ros2Mypalletizer_interfacesSrvGetCoords_Response
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/GetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetCoords_Response, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvGetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetCoords_Response,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvGetCoords_Response()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/GetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvGetCoords_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvGetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Mypalletizer_interfacesSrvGetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Mypalletizer_interfacesSrvGetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/GetCoords_Response value.
// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvGetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGetCoords_Response,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Mypalletizer_interfacesSrvGetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvGetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvGetCoords_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/GripperStatus_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Request :: struct {
 // @brief mypalletizer_interfaces/srv/GripperStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/GripperStatus_Request in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Request_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_interfaces/srv/GripperStatus_Request.
// @details Exact identity UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Request_Codec_Identity :: "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d"
// @brief Original ROS type name for mypalletizer_interfaces/srv/GripperStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Request_Native_Type :: "mypalletizer_interfaces/srv/GripperStatus_Request"
// @brief Selected original native identity for mypalletizer_interfaces/srv/GripperStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/GripperStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvGripperStatus_Request :: proc() -> Ros2Mypalletizer_interfacesSrvGripperStatus_Request {
 v: Ros2Mypalletizer_interfacesSrvGripperStatus_Request
 v.field_status = false
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/GripperStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvGripperStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GripperStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvGripperStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGripperStatus_Request,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvGripperStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/GripperStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvGripperStatus_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvGripperStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/GripperStatus_Request value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvGripperStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGripperStatus_Request,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mypalletizer_interfacesSrvGripperStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvGripperStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvGripperStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/GripperStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Response :: struct {
 // @brief mypalletizer_interfaces/srv/GripperStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/GripperStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_interfaces/srv/GripperStatus_Response.
// @details Exact identity UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Response_Codec_Identity :: "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4"
// @brief Original ROS type name for mypalletizer_interfaces/srv/GripperStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Response_Native_Type :: "mypalletizer_interfaces/srv/GripperStatus_Response"
// @brief Selected original native identity for mypalletizer_interfaces/srv/GripperStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvGripperStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/GripperStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvGripperStatus_Response :: proc() -> Ros2Mypalletizer_interfacesSrvGripperStatus_Response {
 v: Ros2Mypalletizer_interfacesSrvGripperStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/GripperStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvGripperStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/GripperStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvGripperStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGripperStatus_Response,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvGripperStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/GripperStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvGripperStatus_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvGripperStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/GripperStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvGripperStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvGripperStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mypalletizer_interfacesSrvGripperStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvGripperStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvGripperStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/PumpStatus_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Request :: struct {
 // @brief mypalletizer_interfaces/srv/PumpStatus_Request.status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_status: bool,
 // @brief mypalletizer_interfaces/srv/PumpStatus_Request.pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pin1: i8,
 // @brief mypalletizer_interfaces/srv/PumpStatus_Request.pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pin2: i8,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/PumpStatus_Request in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Request_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mypalletizer_interfaces/srv/PumpStatus_Request.
// @details Exact identity UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Request_Codec_Identity :: "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f"
// @brief Original ROS type name for mypalletizer_interfaces/srv/PumpStatus_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Request_Native_Type :: "mypalletizer_interfaces/srv/PumpStatus_Request"
// @brief Selected original native identity for mypalletizer_interfaces/srv/PumpStatus_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/PumpStatus_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvPumpStatus_Request :: proc() -> Ros2Mypalletizer_interfacesSrvPumpStatus_Request {
 v: Ros2Mypalletizer_interfacesSrvPumpStatus_Request
 v.field_status = false
 v.field_pin1 = 0
 v.field_pin2 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/PumpStatus_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvPumpStatus_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvPumpStatus_Request, w: ^Writer) -> bool {
 if !put_bool(w,v.field_status) { return false }
 if !put_integer(w,u64(v.field_pin1),1) { return false }
 if !put_integer(w,u64(v.field_pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/PumpStatus_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvPumpStatus_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvPumpStatus_Request,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvPumpStatus_Request()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/PumpStatus_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvPumpStatus_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvPumpStatus_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/PumpStatus_Request value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvPumpStatus_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvPumpStatus_Request,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros2Mypalletizer_interfacesSrvPumpStatus_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvPumpStatus_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvPumpStatus_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/PumpStatus_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Response :: struct {
 // @brief mypalletizer_interfaces/srv/PumpStatus_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/PumpStatus_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_interfaces/srv/PumpStatus_Response.
// @details Exact identity UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Response_Codec_Identity :: "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45"
// @brief Original ROS type name for mypalletizer_interfaces/srv/PumpStatus_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Response_Native_Type :: "mypalletizer_interfaces/srv/PumpStatus_Response"
// @brief Selected original native identity for mypalletizer_interfaces/srv/PumpStatus_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvPumpStatus_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/PumpStatus_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvPumpStatus_Response :: proc() -> Ros2Mypalletizer_interfacesSrvPumpStatus_Response {
 v: Ros2Mypalletizer_interfacesSrvPumpStatus_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/PumpStatus_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvPumpStatus_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvPumpStatus_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/PumpStatus_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvPumpStatus_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvPumpStatus_Response,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvPumpStatus_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/PumpStatus_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvPumpStatus_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvPumpStatus_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/PumpStatus_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvPumpStatus_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvPumpStatus_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mypalletizer_interfacesSrvPumpStatus_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvPumpStatus_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvPumpStatus_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/SetAngles_Request value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 17..17 bytes and is identified by
// UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Request :: struct {
 // @brief mypalletizer_interfaces/srv/SetAngles_Request.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_interfaces/srv/SetAngles_Request.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_interfaces/srv/SetAngles_Request.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_interfaces/srv/SetAngles_Request.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mypalletizer_interfaces/srv/SetAngles_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/SetAngles_Request in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Request_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of mypalletizer_interfaces/srv/SetAngles_Request.
// @details Exact identity UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Request_Codec_Identity :: "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec"
// @brief Original ROS type name for mypalletizer_interfaces/srv/SetAngles_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Request_Native_Type :: "mypalletizer_interfaces/srv/SetAngles_Request"
// @brief Selected original native identity for mypalletizer_interfaces/srv/SetAngles_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/SetAngles_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvSetAngles_Request :: proc() -> Ros2Mypalletizer_interfacesSrvSetAngles_Request {
 v: Ros2Mypalletizer_interfacesSrvSetAngles_Request
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/SetAngles_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetAngles_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetAngles_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvSetAngles_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetAngles_Request,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvSetAngles_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_1=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_2=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_3=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_joint_4=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/SetAngles_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvSetAngles_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetAngles_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Mypalletizer_interfacesSrvSetAngles_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Mypalletizer_interfacesSrvSetAngles_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/SetAngles_Request value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvSetAngles_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetAngles_Request,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Mypalletizer_interfacesSrvSetAngles_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvSetAngles_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvSetAngles_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/SetAngles_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Response :: struct {
 // @brief mypalletizer_interfaces/srv/SetAngles_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/SetAngles_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_interfaces/srv/SetAngles_Response.
// @details Exact identity UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Response_Codec_Identity :: "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9"
// @brief Original ROS type name for mypalletizer_interfaces/srv/SetAngles_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Response_Native_Type :: "mypalletizer_interfaces/srv/SetAngles_Response"
// @brief Selected original native identity for mypalletizer_interfaces/srv/SetAngles_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetAngles_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/SetAngles_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvSetAngles_Response :: proc() -> Ros2Mypalletizer_interfacesSrvSetAngles_Response {
 v: Ros2Mypalletizer_interfacesSrvSetAngles_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/SetAngles_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetAngles_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetAngles_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvSetAngles_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetAngles_Response,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvSetAngles_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/SetAngles_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvSetAngles_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetAngles_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvSetAngles_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvSetAngles_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/SetAngles_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetAngles_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvSetAngles_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetAngles_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mypalletizer_interfacesSrvSetAngles_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvSetAngles_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvSetAngles_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/SetCoords_Request value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 17..17 bytes and is identified by
// UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Request :: struct {
 // @brief mypalletizer_interfaces/srv/SetCoords_Request.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_interfaces/srv/SetCoords_Request.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_interfaces/srv/SetCoords_Request.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_interfaces/srv/SetCoords_Request.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mypalletizer_interfaces/srv/SetCoords_Request.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/SetCoords_Request in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Request_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of mypalletizer_interfaces/srv/SetCoords_Request.
// @details Exact identity UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Request_Codec_Identity :: "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541"
// @brief Original ROS type name for mypalletizer_interfaces/srv/SetCoords_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Request_Native_Type :: "mypalletizer_interfaces/srv/SetCoords_Request"
// @brief Selected original native identity for mypalletizer_interfaces/srv/SetCoords_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Request_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/SetCoords_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvSetCoords_Request :: proc() -> Ros2Mypalletizer_interfacesSrvSetCoords_Request {
 v: Ros2Mypalletizer_interfacesSrvSetCoords_Request
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/SetCoords_Request.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetCoords_Request, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetCoords_Request.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvSetCoords_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetCoords_Request,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvSetCoords_Request()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_x=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_y=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_z=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_rx=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_speed=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/SetCoords_Request value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvSetCoords_Request :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetCoords_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros2Mypalletizer_interfacesSrvSetCoords_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros2Mypalletizer_interfacesSrvSetCoords_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/SetCoords_Request value.
// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
// and trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvSetCoords_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetCoords_Request,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros2Mypalletizer_interfacesSrvSetCoords_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvSetCoords_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvSetCoords_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 mypalletizer_interfaces/srv/SetCoords_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Response :: struct {
 // @brief mypalletizer_interfaces/srv/SetCoords_Response.flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
 field_flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_interfaces/srv/SetCoords_Response in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Response_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_interfaces/srv/SetCoords_Response.
// @details Exact identity UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Response_Codec_Identity :: "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b"
// @brief Original ROS type name for mypalletizer_interfaces/srv/SetCoords_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Response_Native_Type :: "mypalletizer_interfaces/srv/SetCoords_Response"
// @brief Selected original native identity for mypalletizer_interfaces/srv/SetCoords_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Mypalletizer_interfacesSrvSetCoords_Response_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_interfaces/srv/SetCoords_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Mypalletizer_interfacesSrvSetCoords_Response :: proc() -> Ros2Mypalletizer_interfacesSrvSetCoords_Response {
 v: Ros2Mypalletizer_interfacesSrvSetCoords_Response
 v.field_flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_interfaces/srv/SetCoords_Response.
// @details Validate profile invariants and finite element bounds while advancing the caller writer. This
// nested operation does not promise rollback of a partially advanced writer.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
// @return True after all fields were appended; false preserves the writer error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Mypalletizer_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetCoords_Response, w: ^Writer) -> bool {
 if !put_bool(w,v.field_flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_interfaces/srv/SetCoords_Response.
// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
// leaves subsequent enclosing fields unread; discard partial values on any failure.
// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete record and true, or a partial unusable record and false with the reader error code.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Mypalletizer_interfacesSrvSetCoords_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetCoords_Response,bool) {
 v:=init_Ros2Mypalletizer_interfacesSrvSetCoords_Response()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_interfaces/srv/SetCoords_Response value.
// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
// profile. Validate all finite bounds; never silently truncate or issue a Host call.
// @param[in] v Non-nil pointer to the complete selected record; borrow until return.
// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
// @return Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable
// until synchronous return; no ownership is transferred to Native.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Mypalletizer_interfacesSrvSetCoords_Response :: proc(v: ^Ros2Mypalletizer_interfacesSrvSetCoords_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvSetCoords_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Mypalletizer_interfacesSrvSetCoords_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_interfaces/srv/SetCoords_Response value.
// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
// trailing bytes before publishing a successful value.
// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the
// decoded value.
// @return Complete decoded record and status 0, or the original nonzero codec refusal.
// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
// actual language runtime; not every failure is a recoverable codec status. No Host, network or
// asynchronous side effect is issued.
// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
// discard it after any failed decode, including partial allocations.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Mypalletizer_interfacesSrvSetCoords_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Mypalletizer_interfacesSrvSetCoords_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Mypalletizer_interfacesSrvSetCoords_Response,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Mypalletizer_interfacesSrvSetCoords_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Mypalletizer_interfacesSrvSetCoords_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Mypalletizer_interfacesSrvSetCoords_Response{},reader.code }
 return value,0
}
