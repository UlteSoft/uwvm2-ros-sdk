// @file records.odin
// @brief Preserve the complete original elephant/kinetic canonical value domain.
// @details The selected domain contains 36 complete record/components and 116 original fields. Declared
// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
// does not qualify a frontend, target ABI or native ROS transport.
// @see The platform's localized language guide and complete API-CATALOG.md.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 mycobot_communication/MycobotAngles value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotAngles :: struct {
 // @brief mycobot_communication/MycobotAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_communication/MycobotAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_communication/MycobotAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_communication/MycobotAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_communication/MycobotAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_communication/MycobotAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mycobot_communication/MycobotAngles in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotAngles_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_communication/MycobotAngles.
// @details Exact identity UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotAngles_Codec_Identity :: "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6"
// @brief Original ROS type name for mycobot_communication/MycobotAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotAngles_Native_Type :: "mycobot_communication/MycobotAngles"
// @brief Selected original native identity for mycobot_communication/MycobotAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/MycobotAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationMycobotAngles :: proc() -> Ros1Mycobot_communicationMycobotAngles {
 v: Ros1Mycobot_communicationMycobotAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/MycobotAngles.
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
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationMycobotAngles :: proc(v: ^Ros1Mycobot_communicationMycobotAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/MycobotAngles.
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
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationMycobotAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotAngles,bool) {
 v:=init_Ros1Mycobot_communicationMycobotAngles()
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
// @brief Encode one complete mycobot_communication/MycobotAngles value.
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
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationMycobotAngles :: proc(v: ^Ros1Mycobot_communicationMycobotAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Mycobot_communicationMycobotAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Mycobot_communicationMycobotAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/MycobotAngles value.
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
// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationMycobotAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotAngles,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Mycobot_communicationMycobotAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationMycobotAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationMycobotAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/MycobotCoords value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotCoords :: struct {
 // @brief mycobot_communication/MycobotCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_communication/MycobotCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_communication/MycobotCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_communication/MycobotCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_communication/MycobotCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_communication/MycobotCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mycobot_communication/MycobotCoords in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotCoords_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_communication/MycobotCoords.
// @details Exact identity UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotCoords_Codec_Identity :: "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2"
// @brief Original ROS type name for mycobot_communication/MycobotCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotCoords_Native_Type :: "mycobot_communication/MycobotCoords"
// @brief Selected original native identity for mycobot_communication/MycobotCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/MycobotCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationMycobotCoords :: proc() -> Ros1Mycobot_communicationMycobotCoords {
 v: Ros1Mycobot_communicationMycobotCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/MycobotCoords.
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
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationMycobotCoords :: proc(v: ^Ros1Mycobot_communicationMycobotCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/MycobotCoords.
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
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationMycobotCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotCoords,bool) {
 v:=init_Ros1Mycobot_communicationMycobotCoords()
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
// @brief Encode one complete mycobot_communication/MycobotCoords value.
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
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationMycobotCoords :: proc(v: ^Ros1Mycobot_communicationMycobotCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Mycobot_communicationMycobotCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Mycobot_communicationMycobotCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/MycobotCoords value.
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
// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationMycobotCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotCoords,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Mycobot_communicationMycobotCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationMycobotCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationMycobotCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/MycobotGripperStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotGripperStatus :: struct {
 // @brief mycobot_communication/MycobotGripperStatus.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
}
// @brief Maximum canonical extent of mycobot_communication/MycobotGripperStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotGripperStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_communication/MycobotGripperStatus.
// @details Exact identity UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotGripperStatus_Codec_Identity :: "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649"
// @brief Original ROS type name for mycobot_communication/MycobotGripperStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotGripperStatus_Native_Type :: "mycobot_communication/MycobotGripperStatus"
// @brief Selected original native identity for mycobot_communication/MycobotGripperStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotGripperStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/MycobotGripperStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationMycobotGripperStatus :: proc() -> Ros1Mycobot_communicationMycobotGripperStatus {
 v: Ros1Mycobot_communicationMycobotGripperStatus
 v.field_Status = false
 return v
}
// @brief Append every canonical field of mycobot_communication/MycobotGripperStatus.
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
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationMycobotGripperStatus :: proc(v: ^Ros1Mycobot_communicationMycobotGripperStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/MycobotGripperStatus.
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
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationMycobotGripperStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotGripperStatus,bool) {
 v:=init_Ros1Mycobot_communicationMycobotGripperStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/MycobotGripperStatus value.
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
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationMycobotGripperStatus :: proc(v: ^Ros1Mycobot_communicationMycobotGripperStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mycobot_communicationMycobotGripperStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mycobot_communicationMycobotGripperStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/MycobotGripperStatus value.
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
// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationMycobotGripperStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotGripperStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mycobot_communicationMycobotGripperStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationMycobotGripperStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationMycobotGripperStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/MycobotPumpStatus value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotPumpStatus :: struct {
 // @brief mycobot_communication/MycobotPumpStatus.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
 // @brief mycobot_communication/MycobotPumpStatus.Pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Pin1: i8,
 // @brief mycobot_communication/MycobotPumpStatus.Pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Pin2: i8,
}
// @brief Maximum canonical extent of mycobot_communication/MycobotPumpStatus in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotPumpStatus_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mycobot_communication/MycobotPumpStatus.
// @details Exact identity UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotPumpStatus_Codec_Identity :: "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd"
// @brief Original ROS type name for mycobot_communication/MycobotPumpStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotPumpStatus_Native_Type :: "mycobot_communication/MycobotPumpStatus"
// @brief Selected original native identity for mycobot_communication/MycobotPumpStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotPumpStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/MycobotPumpStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationMycobotPumpStatus :: proc() -> Ros1Mycobot_communicationMycobotPumpStatus {
 v: Ros1Mycobot_communicationMycobotPumpStatus
 v.field_Status = false
 v.field_Pin1 = 0
 v.field_Pin2 = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/MycobotPumpStatus.
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
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationMycobotPumpStatus :: proc(v: ^Ros1Mycobot_communicationMycobotPumpStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 if !put_integer(w,u64(v.field_Pin1),1) { return false }
 if !put_integer(w,u64(v.field_Pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/MycobotPumpStatus.
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
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationMycobotPumpStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotPumpStatus,bool) {
 v:=init_Ros1Mycobot_communicationMycobotPumpStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/MycobotPumpStatus value.
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
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationMycobotPumpStatus :: proc(v: ^Ros1Mycobot_communicationMycobotPumpStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros1Mycobot_communicationMycobotPumpStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros1Mycobot_communicationMycobotPumpStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/MycobotPumpStatus value.
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
// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationMycobotPumpStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotPumpStatus,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros1Mycobot_communicationMycobotPumpStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationMycobotPumpStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationMycobotPumpStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/MycobotSetAngles value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetAngles :: struct {
 // @brief mycobot_communication/MycobotSetAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_communication/MycobotSetAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_communication/MycobotSetAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_communication/MycobotSetAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_communication/MycobotSetAngles.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_communication/MycobotSetAngles.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mycobot_communication/MycobotSetAngles.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_communication/MycobotSetAngles in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetAngles_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_communication/MycobotSetAngles.
// @details Exact identity UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetAngles_Codec_Identity :: "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334"
// @brief Original ROS type name for mycobot_communication/MycobotSetAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetAngles_Native_Type :: "mycobot_communication/MycobotSetAngles"
// @brief Selected original native identity for mycobot_communication/MycobotSetAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/MycobotSetAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationMycobotSetAngles :: proc() -> Ros1Mycobot_communicationMycobotSetAngles {
 v: Ros1Mycobot_communicationMycobotSetAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/MycobotSetAngles.
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
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationMycobotSetAngles :: proc(v: ^Ros1Mycobot_communicationMycobotSetAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/MycobotSetAngles.
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
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationMycobotSetAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotSetAngles,bool) {
 v:=init_Ros1Mycobot_communicationMycobotSetAngles()
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
// @brief Encode one complete mycobot_communication/MycobotSetAngles value.
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
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationMycobotSetAngles :: proc(v: ^Ros1Mycobot_communicationMycobotSetAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros1Mycobot_communicationMycobotSetAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros1Mycobot_communicationMycobotSetAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/MycobotSetAngles value.
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
// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationMycobotSetAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotSetAngles,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros1Mycobot_communicationMycobotSetAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationMycobotSetAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationMycobotSetAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/MycobotSetCoords value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies
// 26..26 bytes and is identified by
// UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetCoords :: struct {
 // @brief mycobot_communication/MycobotSetCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_communication/MycobotSetCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_communication/MycobotSetCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_communication/MycobotSetCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_communication/MycobotSetCoords.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_communication/MycobotSetCoords.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mycobot_communication/MycobotSetCoords.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mycobot_communication/MycobotSetCoords.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mycobot_communication/MycobotSetCoords in bytes.
// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetCoords_Maximum_Wire_Bytes :: 26
// @brief Canonical codec identity of mycobot_communication/MycobotSetCoords.
// @details Exact identity UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetCoords_Codec_Identity :: "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9"
// @brief Original ROS type name for mycobot_communication/MycobotSetCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetCoords_Native_Type :: "mycobot_communication/MycobotSetCoords"
// @brief Selected original native identity for mycobot_communication/MycobotSetCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationMycobotSetCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/MycobotSetCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationMycobotSetCoords :: proc() -> Ros1Mycobot_communicationMycobotSetCoords {
 v: Ros1Mycobot_communicationMycobotSetCoords
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
// @brief Append every canonical field of mycobot_communication/MycobotSetCoords.
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
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationMycobotSetCoords :: proc(v: ^Ros1Mycobot_communicationMycobotSetCoords, w: ^Writer) -> bool {
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
// @brief Read the ordered canonical fields of mycobot_communication/MycobotSetCoords.
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
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationMycobotSetCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotSetCoords,bool) {
 v:=init_Ros1Mycobot_communicationMycobotSetCoords()
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
// @brief Encode one complete mycobot_communication/MycobotSetCoords value.
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
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationMycobotSetCoords :: proc(v: ^Ros1Mycobot_communicationMycobotSetCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=26}
 if !write_Ros1Mycobot_communicationMycobotSetCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=26}
 if !write_Ros1Mycobot_communicationMycobotSetCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/MycobotSetCoords value.
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
// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationMycobotSetCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationMycobotSetCoords,u32) {
 if len(bytes)<26 || len(bytes)>26 { return Ros1Mycobot_communicationMycobotSetCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationMycobotSetCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationMycobotSetCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/GetAnglesRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesRequest :: struct {
}
// @brief Maximum canonical extent of mycobot_communication/GetAnglesRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_communication/GetAnglesRequest.
// @details Exact identity UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesRequest_Codec_Identity :: "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54"
// @brief Original ROS type name for mycobot_communication/GetAnglesRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesRequest_Native_Type :: "mycobot_communication/GetAnglesRequest"
// @brief Selected original native identity for mycobot_communication/GetAnglesRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/GetAnglesRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationGetAnglesRequest :: proc() -> Ros1Mycobot_communicationGetAnglesRequest {
 v: Ros1Mycobot_communicationGetAnglesRequest
 return v
}
// @brief Append every canonical field of mycobot_communication/GetAnglesRequest.
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
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationGetAnglesRequest :: proc(v: ^Ros1Mycobot_communicationGetAnglesRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/GetAnglesRequest.
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
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationGetAnglesRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetAnglesRequest,bool) {
 v:=init_Ros1Mycobot_communicationGetAnglesRequest()
 return v,true
}
// @brief Encode one complete mycobot_communication/GetAnglesRequest value.
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
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationGetAnglesRequest :: proc(v: ^Ros1Mycobot_communicationGetAnglesRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Mycobot_communicationGetAnglesRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Mycobot_communicationGetAnglesRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/GetAnglesRequest value.
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
// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationGetAnglesRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetAnglesRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Mycobot_communicationGetAnglesRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationGetAnglesRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationGetAnglesRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/GetAnglesResponse value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesResponse :: struct {
 // @brief mycobot_communication/GetAnglesResponse.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_communication/GetAnglesResponse.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_communication/GetAnglesResponse.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_communication/GetAnglesResponse.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_communication/GetAnglesResponse.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_communication/GetAnglesResponse.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
}
// @brief Maximum canonical extent of mycobot_communication/GetAnglesResponse in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesResponse_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_communication/GetAnglesResponse.
// @details Exact identity UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesResponse_Codec_Identity :: "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3"
// @brief Original ROS type name for mycobot_communication/GetAnglesResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesResponse_Native_Type :: "mycobot_communication/GetAnglesResponse"
// @brief Selected original native identity for mycobot_communication/GetAnglesResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetAnglesResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/GetAnglesResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationGetAnglesResponse :: proc() -> Ros1Mycobot_communicationGetAnglesResponse {
 v: Ros1Mycobot_communicationGetAnglesResponse
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/GetAnglesResponse.
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
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationGetAnglesResponse :: proc(v: ^Ros1Mycobot_communicationGetAnglesResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/GetAnglesResponse.
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
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationGetAnglesResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetAnglesResponse,bool) {
 v:=init_Ros1Mycobot_communicationGetAnglesResponse()
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
// @brief Encode one complete mycobot_communication/GetAnglesResponse value.
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
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationGetAnglesResponse :: proc(v: ^Ros1Mycobot_communicationGetAnglesResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Mycobot_communicationGetAnglesResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Mycobot_communicationGetAnglesResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/GetAnglesResponse value.
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
// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationGetAnglesResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetAnglesResponse,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Mycobot_communicationGetAnglesResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationGetAnglesResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationGetAnglesResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/GetCoordsRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsRequest :: struct {
}
// @brief Maximum canonical extent of mycobot_communication/GetCoordsRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mycobot_communication/GetCoordsRequest.
// @details Exact identity UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsRequest_Codec_Identity :: "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876"
// @brief Original ROS type name for mycobot_communication/GetCoordsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsRequest_Native_Type :: "mycobot_communication/GetCoordsRequest"
// @brief Selected original native identity for mycobot_communication/GetCoordsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/GetCoordsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationGetCoordsRequest :: proc() -> Ros1Mycobot_communicationGetCoordsRequest {
 v: Ros1Mycobot_communicationGetCoordsRequest
 return v
}
// @brief Append every canonical field of mycobot_communication/GetCoordsRequest.
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
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationGetCoordsRequest :: proc(v: ^Ros1Mycobot_communicationGetCoordsRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/GetCoordsRequest.
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
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationGetCoordsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetCoordsRequest,bool) {
 v:=init_Ros1Mycobot_communicationGetCoordsRequest()
 return v,true
}
// @brief Encode one complete mycobot_communication/GetCoordsRequest value.
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
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationGetCoordsRequest :: proc(v: ^Ros1Mycobot_communicationGetCoordsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Mycobot_communicationGetCoordsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Mycobot_communicationGetCoordsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/GetCoordsRequest value.
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
// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationGetCoordsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetCoordsRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Mycobot_communicationGetCoordsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationGetCoordsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationGetCoordsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/GetCoordsResponse value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 24..24 bytes and is identified by
// UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsResponse :: struct {
 // @brief mycobot_communication/GetCoordsResponse.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_communication/GetCoordsResponse.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_communication/GetCoordsResponse.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_communication/GetCoordsResponse.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_communication/GetCoordsResponse.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_communication/GetCoordsResponse.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
}
// @brief Maximum canonical extent of mycobot_communication/GetCoordsResponse in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsResponse_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of mycobot_communication/GetCoordsResponse.
// @details Exact identity UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsResponse_Codec_Identity :: "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107"
// @brief Original ROS type name for mycobot_communication/GetCoordsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsResponse_Native_Type :: "mycobot_communication/GetCoordsResponse"
// @brief Selected original native identity for mycobot_communication/GetCoordsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGetCoordsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/GetCoordsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationGetCoordsResponse :: proc() -> Ros1Mycobot_communicationGetCoordsResponse {
 v: Ros1Mycobot_communicationGetCoordsResponse
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_ry = 0
 v.field_rz = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/GetCoordsResponse.
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
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationGetCoordsResponse :: proc(v: ^Ros1Mycobot_communicationGetCoordsResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_float32(w,v.field_ry) { return false }
 if !put_float32(w,v.field_rz) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/GetCoordsResponse.
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
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationGetCoordsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetCoordsResponse,bool) {
 v:=init_Ros1Mycobot_communicationGetCoordsResponse()
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
// @brief Encode one complete mycobot_communication/GetCoordsResponse value.
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
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationGetCoordsResponse :: proc(v: ^Ros1Mycobot_communicationGetCoordsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Mycobot_communicationGetCoordsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Mycobot_communicationGetCoordsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/GetCoordsResponse value.
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
// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationGetCoordsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGetCoordsResponse,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Mycobot_communicationGetCoordsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationGetCoordsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationGetCoordsResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/GripperStatusRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusRequest :: struct {
 // @brief mycobot_communication/GripperStatusRequest.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
}
// @brief Maximum canonical extent of mycobot_communication/GripperStatusRequest in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusRequest_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_communication/GripperStatusRequest.
// @details Exact identity UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusRequest_Codec_Identity :: "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585"
// @brief Original ROS type name for mycobot_communication/GripperStatusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusRequest_Native_Type :: "mycobot_communication/GripperStatusRequest"
// @brief Selected original native identity for mycobot_communication/GripperStatusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/GripperStatusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationGripperStatusRequest :: proc() -> Ros1Mycobot_communicationGripperStatusRequest {
 v: Ros1Mycobot_communicationGripperStatusRequest
 v.field_Status = false
 return v
}
// @brief Append every canonical field of mycobot_communication/GripperStatusRequest.
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
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationGripperStatusRequest :: proc(v: ^Ros1Mycobot_communicationGripperStatusRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/GripperStatusRequest.
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
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationGripperStatusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGripperStatusRequest,bool) {
 v:=init_Ros1Mycobot_communicationGripperStatusRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/GripperStatusRequest value.
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
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationGripperStatusRequest :: proc(v: ^Ros1Mycobot_communicationGripperStatusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mycobot_communicationGripperStatusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mycobot_communicationGripperStatusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/GripperStatusRequest value.
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
// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationGripperStatusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGripperStatusRequest,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mycobot_communicationGripperStatusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationGripperStatusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationGripperStatusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/GripperStatusResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusResponse :: struct {
 // @brief mycobot_communication/GripperStatusResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mycobot_communication/GripperStatusResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_communication/GripperStatusResponse.
// @details Exact identity UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusResponse_Codec_Identity :: "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664"
// @brief Original ROS type name for mycobot_communication/GripperStatusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusResponse_Native_Type :: "mycobot_communication/GripperStatusResponse"
// @brief Selected original native identity for mycobot_communication/GripperStatusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationGripperStatusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/GripperStatusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationGripperStatusResponse :: proc() -> Ros1Mycobot_communicationGripperStatusResponse {
 v: Ros1Mycobot_communicationGripperStatusResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mycobot_communication/GripperStatusResponse.
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
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationGripperStatusResponse :: proc(v: ^Ros1Mycobot_communicationGripperStatusResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/GripperStatusResponse.
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
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationGripperStatusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGripperStatusResponse,bool) {
 v:=init_Ros1Mycobot_communicationGripperStatusResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/GripperStatusResponse value.
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
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationGripperStatusResponse :: proc(v: ^Ros1Mycobot_communicationGripperStatusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mycobot_communicationGripperStatusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mycobot_communicationGripperStatusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/GripperStatusResponse value.
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
// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationGripperStatusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationGripperStatusResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mycobot_communicationGripperStatusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationGripperStatusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationGripperStatusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/PumpStatusRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusRequest :: struct {
 // @brief mycobot_communication/PumpStatusRequest.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
 // @brief mycobot_communication/PumpStatusRequest.Pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Pin1: i8,
 // @brief mycobot_communication/PumpStatusRequest.Pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Pin2: i8,
}
// @brief Maximum canonical extent of mycobot_communication/PumpStatusRequest in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusRequest_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mycobot_communication/PumpStatusRequest.
// @details Exact identity UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusRequest_Codec_Identity :: "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c"
// @brief Original ROS type name for mycobot_communication/PumpStatusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusRequest_Native_Type :: "mycobot_communication/PumpStatusRequest"
// @brief Selected original native identity for mycobot_communication/PumpStatusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/PumpStatusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationPumpStatusRequest :: proc() -> Ros1Mycobot_communicationPumpStatusRequest {
 v: Ros1Mycobot_communicationPumpStatusRequest
 v.field_Status = false
 v.field_Pin1 = 0
 v.field_Pin2 = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/PumpStatusRequest.
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
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationPumpStatusRequest :: proc(v: ^Ros1Mycobot_communicationPumpStatusRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 if !put_integer(w,u64(v.field_Pin1),1) { return false }
 if !put_integer(w,u64(v.field_Pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/PumpStatusRequest.
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
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationPumpStatusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationPumpStatusRequest,bool) {
 v:=init_Ros1Mycobot_communicationPumpStatusRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/PumpStatusRequest value.
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
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationPumpStatusRequest :: proc(v: ^Ros1Mycobot_communicationPumpStatusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros1Mycobot_communicationPumpStatusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros1Mycobot_communicationPumpStatusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/PumpStatusRequest value.
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
// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationPumpStatusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationPumpStatusRequest,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros1Mycobot_communicationPumpStatusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationPumpStatusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationPumpStatusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/PumpStatusResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusResponse :: struct {
 // @brief mycobot_communication/PumpStatusResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mycobot_communication/PumpStatusResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_communication/PumpStatusResponse.
// @details Exact identity UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusResponse_Codec_Identity :: "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd"
// @brief Original ROS type name for mycobot_communication/PumpStatusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusResponse_Native_Type :: "mycobot_communication/PumpStatusResponse"
// @brief Selected original native identity for mycobot_communication/PumpStatusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationPumpStatusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/PumpStatusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationPumpStatusResponse :: proc() -> Ros1Mycobot_communicationPumpStatusResponse {
 v: Ros1Mycobot_communicationPumpStatusResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mycobot_communication/PumpStatusResponse.
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
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationPumpStatusResponse :: proc(v: ^Ros1Mycobot_communicationPumpStatusResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/PumpStatusResponse.
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
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationPumpStatusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationPumpStatusResponse,bool) {
 v:=init_Ros1Mycobot_communicationPumpStatusResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/PumpStatusResponse value.
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
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationPumpStatusResponse :: proc(v: ^Ros1Mycobot_communicationPumpStatusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mycobot_communicationPumpStatusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mycobot_communicationPumpStatusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/PumpStatusResponse value.
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
// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationPumpStatusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationPumpStatusResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mycobot_communicationPumpStatusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationPumpStatusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationPumpStatusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/SetAnglesRequest value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies
// 25..25 bytes and is identified by
// UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesRequest :: struct {
 // @brief mycobot_communication/SetAnglesRequest.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mycobot_communication/SetAnglesRequest.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mycobot_communication/SetAnglesRequest.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mycobot_communication/SetAnglesRequest.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mycobot_communication/SetAnglesRequest.joint_5: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_5: f32,
 // @brief mycobot_communication/SetAnglesRequest.joint_6: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_6: f32,
 // @brief mycobot_communication/SetAnglesRequest.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mycobot_communication/SetAnglesRequest in bytes.
// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesRequest_Maximum_Wire_Bytes :: 25
// @brief Canonical codec identity of mycobot_communication/SetAnglesRequest.
// @details Exact identity UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesRequest_Codec_Identity :: "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd"
// @brief Original ROS type name for mycobot_communication/SetAnglesRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesRequest_Native_Type :: "mycobot_communication/SetAnglesRequest"
// @brief Selected original native identity for mycobot_communication/SetAnglesRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/SetAnglesRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationSetAnglesRequest :: proc() -> Ros1Mycobot_communicationSetAnglesRequest {
 v: Ros1Mycobot_communicationSetAnglesRequest
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_joint_5 = 0
 v.field_joint_6 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mycobot_communication/SetAnglesRequest.
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
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationSetAnglesRequest :: proc(v: ^Ros1Mycobot_communicationSetAnglesRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_float32(w,v.field_joint_5) { return false }
 if !put_float32(w,v.field_joint_6) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/SetAnglesRequest.
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
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationSetAnglesRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetAnglesRequest,bool) {
 v:=init_Ros1Mycobot_communicationSetAnglesRequest()
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
// @brief Encode one complete mycobot_communication/SetAnglesRequest value.
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
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationSetAnglesRequest :: proc(v: ^Ros1Mycobot_communicationSetAnglesRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=25}
 if !write_Ros1Mycobot_communicationSetAnglesRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=25}
 if !write_Ros1Mycobot_communicationSetAnglesRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/SetAnglesRequest value.
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
// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationSetAnglesRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetAnglesRequest,u32) {
 if len(bytes)<25 || len(bytes)>25 { return Ros1Mycobot_communicationSetAnglesRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationSetAnglesRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationSetAnglesRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/SetAnglesResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesResponse :: struct {
 // @brief mycobot_communication/SetAnglesResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mycobot_communication/SetAnglesResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_communication/SetAnglesResponse.
// @details Exact identity UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesResponse_Codec_Identity :: "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2"
// @brief Original ROS type name for mycobot_communication/SetAnglesResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesResponse_Native_Type :: "mycobot_communication/SetAnglesResponse"
// @brief Selected original native identity for mycobot_communication/SetAnglesResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetAnglesResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/SetAnglesResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationSetAnglesResponse :: proc() -> Ros1Mycobot_communicationSetAnglesResponse {
 v: Ros1Mycobot_communicationSetAnglesResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mycobot_communication/SetAnglesResponse.
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
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationSetAnglesResponse :: proc(v: ^Ros1Mycobot_communicationSetAnglesResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/SetAnglesResponse.
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
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationSetAnglesResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetAnglesResponse,bool) {
 v:=init_Ros1Mycobot_communicationSetAnglesResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/SetAnglesResponse value.
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
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationSetAnglesResponse :: proc(v: ^Ros1Mycobot_communicationSetAnglesResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mycobot_communicationSetAnglesResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mycobot_communicationSetAnglesResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/SetAnglesResponse value.
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
// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationSetAnglesResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetAnglesResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mycobot_communicationSetAnglesResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationSetAnglesResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationSetAnglesResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/SetCoordsRequest value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies
// 26..26 bytes and is identified by
// UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsRequest :: struct {
 // @brief mycobot_communication/SetCoordsRequest.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mycobot_communication/SetCoordsRequest.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mycobot_communication/SetCoordsRequest.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mycobot_communication/SetCoordsRequest.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mycobot_communication/SetCoordsRequest.ry: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_ry: f32,
 // @brief mycobot_communication/SetCoordsRequest.rz: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_rz: f32,
 // @brief mycobot_communication/SetCoordsRequest.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mycobot_communication/SetCoordsRequest.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mycobot_communication/SetCoordsRequest in bytes.
// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsRequest_Maximum_Wire_Bytes :: 26
// @brief Canonical codec identity of mycobot_communication/SetCoordsRequest.
// @details Exact identity UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsRequest_Codec_Identity :: "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a"
// @brief Original ROS type name for mycobot_communication/SetCoordsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsRequest_Native_Type :: "mycobot_communication/SetCoordsRequest"
// @brief Selected original native identity for mycobot_communication/SetCoordsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/SetCoordsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationSetCoordsRequest :: proc() -> Ros1Mycobot_communicationSetCoordsRequest {
 v: Ros1Mycobot_communicationSetCoordsRequest
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
// @brief Append every canonical field of mycobot_communication/SetCoordsRequest.
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
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationSetCoordsRequest :: proc(v: ^Ros1Mycobot_communicationSetCoordsRequest, w: ^Writer) -> bool {
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
// @brief Read the ordered canonical fields of mycobot_communication/SetCoordsRequest.
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
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationSetCoordsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetCoordsRequest,bool) {
 v:=init_Ros1Mycobot_communicationSetCoordsRequest()
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
// @brief Encode one complete mycobot_communication/SetCoordsRequest value.
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
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationSetCoordsRequest :: proc(v: ^Ros1Mycobot_communicationSetCoordsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=26}
 if !write_Ros1Mycobot_communicationSetCoordsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=26}
 if !write_Ros1Mycobot_communicationSetCoordsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/SetCoordsRequest value.
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
// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationSetCoordsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetCoordsRequest,u32) {
 if len(bytes)<26 || len(bytes)>26 { return Ros1Mycobot_communicationSetCoordsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationSetCoordsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationSetCoordsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mycobot_communication/SetCoordsResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsResponse :: struct {
 // @brief mycobot_communication/SetCoordsResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mycobot_communication/SetCoordsResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mycobot_communication/SetCoordsResponse.
// @details Exact identity UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsResponse_Codec_Identity :: "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af"
// @brief Original ROS type name for mycobot_communication/SetCoordsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsResponse_Native_Type :: "mycobot_communication/SetCoordsResponse"
// @brief Selected original native identity for mycobot_communication/SetCoordsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mycobot_communicationSetCoordsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mycobot_communication/SetCoordsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mycobot_communicationSetCoordsResponse :: proc() -> Ros1Mycobot_communicationSetCoordsResponse {
 v: Ros1Mycobot_communicationSetCoordsResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mycobot_communication/SetCoordsResponse.
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
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mycobot_communicationSetCoordsResponse :: proc(v: ^Ros1Mycobot_communicationSetCoordsResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mycobot_communication/SetCoordsResponse.
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
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mycobot_communicationSetCoordsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetCoordsResponse,bool) {
 v:=init_Ros1Mycobot_communicationSetCoordsResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mycobot_communication/SetCoordsResponse value.
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
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mycobot_communicationSetCoordsResponse :: proc(v: ^Ros1Mycobot_communicationSetCoordsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mycobot_communicationSetCoordsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mycobot_communicationSetCoordsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mycobot_communication/SetCoordsResponse value.
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
// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mycobot_communicationSetCoordsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mycobot_communicationSetCoordsResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mycobot_communicationSetCoordsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mycobot_communicationSetCoordsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mycobot_communicationSetCoordsResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/MypalAngles value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalAngles :: struct {
 // @brief mypalletizer_communication/MypalAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_communication/MypalAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_communication/MypalAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_communication/MypalAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
}
// @brief Maximum canonical extent of mypalletizer_communication/MypalAngles in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalAngles_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_communication/MypalAngles.
// @details Exact identity UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalAngles_Codec_Identity :: "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9"
// @brief Original ROS type name for mypalletizer_communication/MypalAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalAngles_Native_Type :: "mypalletizer_communication/MypalAngles"
// @brief Selected original native identity for mypalletizer_communication/MypalAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/MypalAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationMypalAngles :: proc() -> Ros1Mypalletizer_communicationMypalAngles {
 v: Ros1Mypalletizer_communicationMypalAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/MypalAngles.
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
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationMypalAngles :: proc(v: ^Ros1Mypalletizer_communicationMypalAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/MypalAngles.
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
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationMypalAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalAngles,bool) {
 v:=init_Ros1Mypalletizer_communicationMypalAngles()
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
// @brief Encode one complete mypalletizer_communication/MypalAngles value.
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
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationMypalAngles :: proc(v: ^Ros1Mypalletizer_communicationMypalAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Mypalletizer_communicationMypalAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Mypalletizer_communicationMypalAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/MypalAngles value.
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
// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationMypalAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalAngles,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Mypalletizer_communicationMypalAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationMypalAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationMypalAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/MypalCoords value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalCoords :: struct {
 // @brief mypalletizer_communication/MypalCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_communication/MypalCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_communication/MypalCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_communication/MypalCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
}
// @brief Maximum canonical extent of mypalletizer_communication/MypalCoords in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalCoords_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_communication/MypalCoords.
// @details Exact identity UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalCoords_Codec_Identity :: "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80"
// @brief Original ROS type name for mypalletizer_communication/MypalCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalCoords_Native_Type :: "mypalletizer_communication/MypalCoords"
// @brief Selected original native identity for mypalletizer_communication/MypalCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/MypalCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationMypalCoords :: proc() -> Ros1Mypalletizer_communicationMypalCoords {
 v: Ros1Mypalletizer_communicationMypalCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/MypalCoords.
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
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationMypalCoords :: proc(v: ^Ros1Mypalletizer_communicationMypalCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/MypalCoords.
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
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationMypalCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalCoords,bool) {
 v:=init_Ros1Mypalletizer_communicationMypalCoords()
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
// @brief Encode one complete mypalletizer_communication/MypalCoords value.
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
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationMypalCoords :: proc(v: ^Ros1Mypalletizer_communicationMypalCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Mypalletizer_communicationMypalCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Mypalletizer_communicationMypalCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/MypalCoords value.
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
// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationMypalCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalCoords,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Mypalletizer_communicationMypalCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationMypalCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationMypalCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/MypalGripperStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalGripperStatus :: struct {
 // @brief mypalletizer_communication/MypalGripperStatus.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
}
// @brief Maximum canonical extent of mypalletizer_communication/MypalGripperStatus in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalGripperStatus_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_communication/MypalGripperStatus.
// @details Exact identity UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalGripperStatus_Codec_Identity :: "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6"
// @brief Original ROS type name for mypalletizer_communication/MypalGripperStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalGripperStatus_Native_Type :: "mypalletizer_communication/MypalGripperStatus"
// @brief Selected original native identity for mypalletizer_communication/MypalGripperStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalGripperStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/MypalGripperStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationMypalGripperStatus :: proc() -> Ros1Mypalletizer_communicationMypalGripperStatus {
 v: Ros1Mypalletizer_communicationMypalGripperStatus
 v.field_Status = false
 return v
}
// @brief Append every canonical field of mypalletizer_communication/MypalGripperStatus.
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
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationMypalGripperStatus :: proc(v: ^Ros1Mypalletizer_communicationMypalGripperStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/MypalGripperStatus.
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
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationMypalGripperStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalGripperStatus,bool) {
 v:=init_Ros1Mypalletizer_communicationMypalGripperStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/MypalGripperStatus value.
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
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationMypalGripperStatus :: proc(v: ^Ros1Mypalletizer_communicationMypalGripperStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mypalletizer_communicationMypalGripperStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mypalletizer_communicationMypalGripperStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/MypalGripperStatus value.
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
// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationMypalGripperStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalGripperStatus,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mypalletizer_communicationMypalGripperStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationMypalGripperStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationMypalGripperStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/MypalPumpStatus value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalPumpStatus :: struct {
 // @brief mypalletizer_communication/MypalPumpStatus.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
 // @brief mypalletizer_communication/MypalPumpStatus.Pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Pin1: i8,
 // @brief mypalletizer_communication/MypalPumpStatus.Pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
 field_Pin2: i8,
}
// @brief Maximum canonical extent of mypalletizer_communication/MypalPumpStatus in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalPumpStatus_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mypalletizer_communication/MypalPumpStatus.
// @details Exact identity UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalPumpStatus_Codec_Identity :: "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc"
// @brief Original ROS type name for mypalletizer_communication/MypalPumpStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalPumpStatus_Native_Type :: "mypalletizer_communication/MypalPumpStatus"
// @brief Selected original native identity for mypalletizer_communication/MypalPumpStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalPumpStatus_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/MypalPumpStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationMypalPumpStatus :: proc() -> Ros1Mypalletizer_communicationMypalPumpStatus {
 v: Ros1Mypalletizer_communicationMypalPumpStatus
 v.field_Status = false
 v.field_Pin1 = 0
 v.field_Pin2 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/MypalPumpStatus.
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
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationMypalPumpStatus :: proc(v: ^Ros1Mypalletizer_communicationMypalPumpStatus, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 if !put_integer(w,u64(v.field_Pin1),1) { return false }
 if !put_integer(w,u64(v.field_Pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/MypalPumpStatus.
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
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationMypalPumpStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalPumpStatus,bool) {
 v:=init_Ros1Mypalletizer_communicationMypalPumpStatus()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/MypalPumpStatus value.
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
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationMypalPumpStatus :: proc(v: ^Ros1Mypalletizer_communicationMypalPumpStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros1Mypalletizer_communicationMypalPumpStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros1Mypalletizer_communicationMypalPumpStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/MypalPumpStatus value.
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
// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationMypalPumpStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalPumpStatus,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros1Mypalletizer_communicationMypalPumpStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationMypalPumpStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationMypalPumpStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/MypalSetAngles value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 17..17 bytes and is identified by
// UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetAngles :: struct {
 // @brief mypalletizer_communication/MypalSetAngles.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_communication/MypalSetAngles.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_communication/MypalSetAngles.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_communication/MypalSetAngles.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mypalletizer_communication/MypalSetAngles.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mypalletizer_communication/MypalSetAngles in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetAngles_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of mypalletizer_communication/MypalSetAngles.
// @details Exact identity UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetAngles_Codec_Identity :: "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98"
// @brief Original ROS type name for mypalletizer_communication/MypalSetAngles.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetAngles_Native_Type :: "mypalletizer_communication/MypalSetAngles"
// @brief Selected original native identity for mypalletizer_communication/MypalSetAngles.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetAngles_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/MypalSetAngles.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationMypalSetAngles :: proc() -> Ros1Mypalletizer_communicationMypalSetAngles {
 v: Ros1Mypalletizer_communicationMypalSetAngles
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/MypalSetAngles.
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
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationMypalSetAngles :: proc(v: ^Ros1Mypalletizer_communicationMypalSetAngles, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/MypalSetAngles.
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
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationMypalSetAngles :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalSetAngles,bool) {
 v:=init_Ros1Mypalletizer_communicationMypalSetAngles()
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
// @brief Encode one complete mypalletizer_communication/MypalSetAngles value.
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
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationMypalSetAngles :: proc(v: ^Ros1Mypalletizer_communicationMypalSetAngles, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros1Mypalletizer_communicationMypalSetAngles(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros1Mypalletizer_communicationMypalSetAngles(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/MypalSetAngles value.
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
// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationMypalSetAngles :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalSetAngles,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros1Mypalletizer_communicationMypalSetAngles{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationMypalSetAngles(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationMypalSetAngles{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/MypalSetCoords value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 18..18 bytes and is identified by
// UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetCoords :: struct {
 // @brief mypalletizer_communication/MypalSetCoords.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_communication/MypalSetCoords.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_communication/MypalSetCoords.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_communication/MypalSetCoords.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mypalletizer_communication/MypalSetCoords.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mypalletizer_communication/MypalSetCoords.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mypalletizer_communication/MypalSetCoords in bytes.
// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetCoords_Maximum_Wire_Bytes :: 18
// @brief Canonical codec identity of mypalletizer_communication/MypalSetCoords.
// @details Exact identity UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetCoords_Codec_Identity :: "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448"
// @brief Original ROS type name for mypalletizer_communication/MypalSetCoords.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetCoords_Native_Type :: "mypalletizer_communication/MypalSetCoords"
// @brief Selected original native identity for mypalletizer_communication/MypalSetCoords.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationMypalSetCoords_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/MypalSetCoords.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationMypalSetCoords :: proc() -> Ros1Mypalletizer_communicationMypalSetCoords {
 v: Ros1Mypalletizer_communicationMypalSetCoords
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_speed = 0
 v.field_model = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/MypalSetCoords.
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
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationMypalSetCoords :: proc(v: ^Ros1Mypalletizer_communicationMypalSetCoords, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 if !put_integer(w,u64(v.field_model),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/MypalSetCoords.
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
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationMypalSetCoords :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalSetCoords,bool) {
 v:=init_Ros1Mypalletizer_communicationMypalSetCoords()
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
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_model=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/MypalSetCoords value.
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
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationMypalSetCoords :: proc(v: ^Ros1Mypalletizer_communicationMypalSetCoords, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=18}
 if !write_Ros1Mypalletizer_communicationMypalSetCoords(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=18}
 if !write_Ros1Mypalletizer_communicationMypalSetCoords(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/MypalSetCoords value.
// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields
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
// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationMypalSetCoords :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationMypalSetCoords,u32) {
 if len(bytes)<18 || len(bytes)>18 { return Ros1Mypalletizer_communicationMypalSetCoords{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationMypalSetCoords(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationMypalSetCoords{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/GetAnglesRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesRequest :: struct {
}
// @brief Maximum canonical extent of mypalletizer_communication/GetAnglesRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mypalletizer_communication/GetAnglesRequest.
// @details Exact identity UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesRequest_Codec_Identity :: "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8"
// @brief Original ROS type name for mypalletizer_communication/GetAnglesRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesRequest_Native_Type :: "mypalletizer_communication/GetAnglesRequest"
// @brief Selected original native identity for mypalletizer_communication/GetAnglesRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/GetAnglesRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationGetAnglesRequest :: proc() -> Ros1Mypalletizer_communicationGetAnglesRequest {
 v: Ros1Mypalletizer_communicationGetAnglesRequest
 return v
}
// @brief Append every canonical field of mypalletizer_communication/GetAnglesRequest.
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
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationGetAnglesRequest :: proc(v: ^Ros1Mypalletizer_communicationGetAnglesRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesRequest.
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
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationGetAnglesRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetAnglesRequest,bool) {
 v:=init_Ros1Mypalletizer_communicationGetAnglesRequest()
 return v,true
}
// @brief Encode one complete mypalletizer_communication/GetAnglesRequest value.
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
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationGetAnglesRequest :: proc(v: ^Ros1Mypalletizer_communicationGetAnglesRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Mypalletizer_communicationGetAnglesRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Mypalletizer_communicationGetAnglesRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/GetAnglesRequest value.
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
// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationGetAnglesRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetAnglesRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Mypalletizer_communicationGetAnglesRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationGetAnglesRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationGetAnglesRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/GetAnglesResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesResponse :: struct {
 // @brief mypalletizer_communication/GetAnglesResponse.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_communication/GetAnglesResponse.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_communication/GetAnglesResponse.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_communication/GetAnglesResponse.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
}
// @brief Maximum canonical extent of mypalletizer_communication/GetAnglesResponse in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesResponse_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_communication/GetAnglesResponse.
// @details Exact identity UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesResponse_Codec_Identity :: "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745"
// @brief Original ROS type name for mypalletizer_communication/GetAnglesResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesResponse_Native_Type :: "mypalletizer_communication/GetAnglesResponse"
// @brief Selected original native identity for mypalletizer_communication/GetAnglesResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetAnglesResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/GetAnglesResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationGetAnglesResponse :: proc() -> Ros1Mypalletizer_communicationGetAnglesResponse {
 v: Ros1Mypalletizer_communicationGetAnglesResponse
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/GetAnglesResponse.
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
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationGetAnglesResponse :: proc(v: ^Ros1Mypalletizer_communicationGetAnglesResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesResponse.
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
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationGetAnglesResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetAnglesResponse,bool) {
 v:=init_Ros1Mypalletizer_communicationGetAnglesResponse()
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
// @brief Encode one complete mypalletizer_communication/GetAnglesResponse value.
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
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationGetAnglesResponse :: proc(v: ^Ros1Mypalletizer_communicationGetAnglesResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Mypalletizer_communicationGetAnglesResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Mypalletizer_communicationGetAnglesResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/GetAnglesResponse value.
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
// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationGetAnglesResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetAnglesResponse,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Mypalletizer_communicationGetAnglesResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationGetAnglesResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationGetAnglesResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/GetCoordsRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0
// bytes and is identified by UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsRequest :: struct {
}
// @brief Maximum canonical extent of mypalletizer_communication/GetCoordsRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of mypalletizer_communication/GetCoordsRequest.
// @details Exact identity UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsRequest_Codec_Identity :: "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8"
// @brief Original ROS type name for mypalletizer_communication/GetCoordsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsRequest_Native_Type :: "mypalletizer_communication/GetCoordsRequest"
// @brief Selected original native identity for mypalletizer_communication/GetCoordsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/GetCoordsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationGetCoordsRequest :: proc() -> Ros1Mypalletizer_communicationGetCoordsRequest {
 v: Ros1Mypalletizer_communicationGetCoordsRequest
 return v
}
// @brief Append every canonical field of mypalletizer_communication/GetCoordsRequest.
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
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationGetCoordsRequest :: proc(v: ^Ros1Mypalletizer_communicationGetCoordsRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsRequest.
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
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationGetCoordsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetCoordsRequest,bool) {
 v:=init_Ros1Mypalletizer_communicationGetCoordsRequest()
 return v,true
}
// @brief Encode one complete mypalletizer_communication/GetCoordsRequest value.
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
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationGetCoordsRequest :: proc(v: ^Ros1Mypalletizer_communicationGetCoordsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Mypalletizer_communicationGetCoordsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Mypalletizer_communicationGetCoordsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/GetCoordsRequest value.
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
// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationGetCoordsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetCoordsRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Mypalletizer_communicationGetCoordsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationGetCoordsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationGetCoordsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/GetCoordsResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies
// 16..16 bytes and is identified by
// UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsResponse :: struct {
 // @brief mypalletizer_communication/GetCoordsResponse.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_communication/GetCoordsResponse.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_communication/GetCoordsResponse.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_communication/GetCoordsResponse.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
}
// @brief Maximum canonical extent of mypalletizer_communication/GetCoordsResponse in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsResponse_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of mypalletizer_communication/GetCoordsResponse.
// @details Exact identity UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsResponse_Codec_Identity :: "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb"
// @brief Original ROS type name for mypalletizer_communication/GetCoordsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsResponse_Native_Type :: "mypalletizer_communication/GetCoordsResponse"
// @brief Selected original native identity for mypalletizer_communication/GetCoordsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGetCoordsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/GetCoordsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationGetCoordsResponse :: proc() -> Ros1Mypalletizer_communicationGetCoordsResponse {
 v: Ros1Mypalletizer_communicationGetCoordsResponse
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/GetCoordsResponse.
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
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationGetCoordsResponse :: proc(v: ^Ros1Mypalletizer_communicationGetCoordsResponse, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsResponse.
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
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationGetCoordsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetCoordsResponse,bool) {
 v:=init_Ros1Mypalletizer_communicationGetCoordsResponse()
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
// @brief Encode one complete mypalletizer_communication/GetCoordsResponse value.
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
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationGetCoordsResponse :: proc(v: ^Ros1Mypalletizer_communicationGetCoordsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Mypalletizer_communicationGetCoordsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Mypalletizer_communicationGetCoordsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/GetCoordsResponse value.
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
// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationGetCoordsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGetCoordsResponse,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Mypalletizer_communicationGetCoordsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationGetCoordsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationGetCoordsResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/GripperStatusRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusRequest :: struct {
 // @brief mypalletizer_communication/GripperStatusRequest.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
}
// @brief Maximum canonical extent of mypalletizer_communication/GripperStatusRequest in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusRequest_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_communication/GripperStatusRequest.
// @details Exact identity UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusRequest_Codec_Identity :: "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709"
// @brief Original ROS type name for mypalletizer_communication/GripperStatusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusRequest_Native_Type :: "mypalletizer_communication/GripperStatusRequest"
// @brief Selected original native identity for mypalletizer_communication/GripperStatusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/GripperStatusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationGripperStatusRequest :: proc() -> Ros1Mypalletizer_communicationGripperStatusRequest {
 v: Ros1Mypalletizer_communicationGripperStatusRequest
 v.field_Status = false
 return v
}
// @brief Append every canonical field of mypalletizer_communication/GripperStatusRequest.
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
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationGripperStatusRequest :: proc(v: ^Ros1Mypalletizer_communicationGripperStatusRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/GripperStatusRequest.
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
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationGripperStatusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGripperStatusRequest,bool) {
 v:=init_Ros1Mypalletizer_communicationGripperStatusRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/GripperStatusRequest value.
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
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationGripperStatusRequest :: proc(v: ^Ros1Mypalletizer_communicationGripperStatusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mypalletizer_communicationGripperStatusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mypalletizer_communicationGripperStatusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/GripperStatusRequest value.
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
// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationGripperStatusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGripperStatusRequest,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mypalletizer_communicationGripperStatusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationGripperStatusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationGripperStatusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/GripperStatusResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusResponse :: struct {
 // @brief mypalletizer_communication/GripperStatusResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_communication/GripperStatusResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_communication/GripperStatusResponse.
// @details Exact identity UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusResponse_Codec_Identity :: "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b"
// @brief Original ROS type name for mypalletizer_communication/GripperStatusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusResponse_Native_Type :: "mypalletizer_communication/GripperStatusResponse"
// @brief Selected original native identity for mypalletizer_communication/GripperStatusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationGripperStatusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/GripperStatusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationGripperStatusResponse :: proc() -> Ros1Mypalletizer_communicationGripperStatusResponse {
 v: Ros1Mypalletizer_communicationGripperStatusResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_communication/GripperStatusResponse.
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
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationGripperStatusResponse :: proc(v: ^Ros1Mypalletizer_communicationGripperStatusResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/GripperStatusResponse.
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
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationGripperStatusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGripperStatusResponse,bool) {
 v:=init_Ros1Mypalletizer_communicationGripperStatusResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/GripperStatusResponse value.
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
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationGripperStatusResponse :: proc(v: ^Ros1Mypalletizer_communicationGripperStatusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mypalletizer_communicationGripperStatusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mypalletizer_communicationGripperStatusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/GripperStatusResponse value.
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
// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationGripperStatusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationGripperStatusResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mypalletizer_communicationGripperStatusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationGripperStatusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationGripperStatusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/PumpStatusRequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3
// bytes and is identified by UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusRequest :: struct {
 // @brief mypalletizer_communication/PumpStatusRequest.Status: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Status: bool,
 // @brief mypalletizer_communication/PumpStatusRequest.Pin1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Pin1: i8,
 // @brief mypalletizer_communication/PumpStatusRequest.Pin2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
 field_Pin2: i8,
}
// @brief Maximum canonical extent of mypalletizer_communication/PumpStatusRequest in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusRequest_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of mypalletizer_communication/PumpStatusRequest.
// @details Exact identity UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusRequest_Codec_Identity :: "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636"
// @brief Original ROS type name for mypalletizer_communication/PumpStatusRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusRequest_Native_Type :: "mypalletizer_communication/PumpStatusRequest"
// @brief Selected original native identity for mypalletizer_communication/PumpStatusRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/PumpStatusRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationPumpStatusRequest :: proc() -> Ros1Mypalletizer_communicationPumpStatusRequest {
 v: Ros1Mypalletizer_communicationPumpStatusRequest
 v.field_Status = false
 v.field_Pin1 = 0
 v.field_Pin2 = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/PumpStatusRequest.
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
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationPumpStatusRequest :: proc(v: ^Ros1Mypalletizer_communicationPumpStatusRequest, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Status) { return false }
 if !put_integer(w,u64(v.field_Pin1),1) { return false }
 if !put_integer(w,u64(v.field_Pin2),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusRequest.
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
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationPumpStatusRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationPumpStatusRequest,bool) {
 v:=init_Ros1Mypalletizer_communicationPumpStatusRequest()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Status=bool(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin1=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_Pin2=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/PumpStatusRequest value.
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
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationPumpStatusRequest :: proc(v: ^Ros1Mypalletizer_communicationPumpStatusRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros1Mypalletizer_communicationPumpStatusRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros1Mypalletizer_communicationPumpStatusRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/PumpStatusRequest value.
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
// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationPumpStatusRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationPumpStatusRequest,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros1Mypalletizer_communicationPumpStatusRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationPumpStatusRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationPumpStatusRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/PumpStatusResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusResponse :: struct {
 // @brief mypalletizer_communication/PumpStatusResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_communication/PumpStatusResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_communication/PumpStatusResponse.
// @details Exact identity UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusResponse_Codec_Identity :: "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5"
// @brief Original ROS type name for mypalletizer_communication/PumpStatusResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusResponse_Native_Type :: "mypalletizer_communication/PumpStatusResponse"
// @brief Selected original native identity for mypalletizer_communication/PumpStatusResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationPumpStatusResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/PumpStatusResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationPumpStatusResponse :: proc() -> Ros1Mypalletizer_communicationPumpStatusResponse {
 v: Ros1Mypalletizer_communicationPumpStatusResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_communication/PumpStatusResponse.
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
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationPumpStatusResponse :: proc(v: ^Ros1Mypalletizer_communicationPumpStatusResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusResponse.
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
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationPumpStatusResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationPumpStatusResponse,bool) {
 v:=init_Ros1Mypalletizer_communicationPumpStatusResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/PumpStatusResponse value.
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
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationPumpStatusResponse :: proc(v: ^Ros1Mypalletizer_communicationPumpStatusResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mypalletizer_communicationPumpStatusResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mypalletizer_communicationPumpStatusResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/PumpStatusResponse value.
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
// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationPumpStatusResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationPumpStatusResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mypalletizer_communicationPumpStatusResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationPumpStatusResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationPumpStatusResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/SetAnglesRequest value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies
// 17..17 bytes and is identified by
// UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesRequest :: struct {
 // @brief mypalletizer_communication/SetAnglesRequest.joint_1: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_1: f32,
 // @brief mypalletizer_communication/SetAnglesRequest.joint_2: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_2: f32,
 // @brief mypalletizer_communication/SetAnglesRequest.joint_3: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_3: f32,
 // @brief mypalletizer_communication/SetAnglesRequest.joint_4: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_joint_4: f32,
 // @brief mypalletizer_communication/SetAnglesRequest.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
}
// @brief Maximum canonical extent of mypalletizer_communication/SetAnglesRequest in bytes.
// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesRequest_Maximum_Wire_Bytes :: 17
// @brief Canonical codec identity of mypalletizer_communication/SetAnglesRequest.
// @details Exact identity UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesRequest_Codec_Identity :: "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d"
// @brief Original ROS type name for mypalletizer_communication/SetAnglesRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesRequest_Native_Type :: "mypalletizer_communication/SetAnglesRequest"
// @brief Selected original native identity for mypalletizer_communication/SetAnglesRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/SetAnglesRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationSetAnglesRequest :: proc() -> Ros1Mypalletizer_communicationSetAnglesRequest {
 v: Ros1Mypalletizer_communicationSetAnglesRequest
 v.field_joint_1 = 0
 v.field_joint_2 = 0
 v.field_joint_3 = 0
 v.field_joint_4 = 0
 v.field_speed = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/SetAnglesRequest.
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
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationSetAnglesRequest :: proc(v: ^Ros1Mypalletizer_communicationSetAnglesRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_joint_1) { return false }
 if !put_float32(w,v.field_joint_2) { return false }
 if !put_float32(w,v.field_joint_3) { return false }
 if !put_float32(w,v.field_joint_4) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesRequest.
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
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationSetAnglesRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetAnglesRequest,bool) {
 v:=init_Ros1Mypalletizer_communicationSetAnglesRequest()
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
// @brief Encode one complete mypalletizer_communication/SetAnglesRequest value.
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
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationSetAnglesRequest :: proc(v: ^Ros1Mypalletizer_communicationSetAnglesRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=17}
 if !write_Ros1Mypalletizer_communicationSetAnglesRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=17}
 if !write_Ros1Mypalletizer_communicationSetAnglesRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/SetAnglesRequest value.
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
// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationSetAnglesRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetAnglesRequest,u32) {
 if len(bytes)<17 || len(bytes)>17 { return Ros1Mypalletizer_communicationSetAnglesRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationSetAnglesRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationSetAnglesRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/SetAnglesResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesResponse :: struct {
 // @brief mypalletizer_communication/SetAnglesResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_communication/SetAnglesResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_communication/SetAnglesResponse.
// @details Exact identity UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesResponse_Codec_Identity :: "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c"
// @brief Original ROS type name for mypalletizer_communication/SetAnglesResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesResponse_Native_Type :: "mypalletizer_communication/SetAnglesResponse"
// @brief Selected original native identity for mypalletizer_communication/SetAnglesResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetAnglesResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/SetAnglesResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationSetAnglesResponse :: proc() -> Ros1Mypalletizer_communicationSetAnglesResponse {
 v: Ros1Mypalletizer_communicationSetAnglesResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_communication/SetAnglesResponse.
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
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationSetAnglesResponse :: proc(v: ^Ros1Mypalletizer_communicationSetAnglesResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesResponse.
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
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationSetAnglesResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetAnglesResponse,bool) {
 v:=init_Ros1Mypalletizer_communicationSetAnglesResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/SetAnglesResponse value.
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
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationSetAnglesResponse :: proc(v: ^Ros1Mypalletizer_communicationSetAnglesResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mypalletizer_communicationSetAnglesResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mypalletizer_communicationSetAnglesResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/SetAnglesResponse value.
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
// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationSetAnglesResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetAnglesResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mypalletizer_communicationSetAnglesResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationSetAnglesResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationSetAnglesResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/SetCoordsRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies
// 18..18 bytes and is identified by
// UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsRequest :: struct {
 // @brief mypalletizer_communication/SetCoordsRequest.x: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_x: f32,
 // @brief mypalletizer_communication/SetCoordsRequest.y: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_y: f32,
 // @brief mypalletizer_communication/SetCoordsRequest.z: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_z: f32,
 // @brief mypalletizer_communication/SetCoordsRequest.rx: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_rx: f32,
 // @brief mypalletizer_communication/SetCoordsRequest.speed: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed: i8,
 // @brief mypalletizer_communication/SetCoordsRequest.model: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_model: i8,
}
// @brief Maximum canonical extent of mypalletizer_communication/SetCoordsRequest in bytes.
// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a
// queue reservation.
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsRequest_Maximum_Wire_Bytes :: 18
// @brief Canonical codec identity of mypalletizer_communication/SetCoordsRequest.
// @details Exact identity UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsRequest_Codec_Identity :: "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1"
// @brief Original ROS type name for mypalletizer_communication/SetCoordsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsRequest_Native_Type :: "mypalletizer_communication/SetCoordsRequest"
// @brief Selected original native identity for mypalletizer_communication/SetCoordsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/SetCoordsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationSetCoordsRequest :: proc() -> Ros1Mypalletizer_communicationSetCoordsRequest {
 v: Ros1Mypalletizer_communicationSetCoordsRequest
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_rx = 0
 v.field_speed = 0
 v.field_model = 0
 return v
}
// @brief Append every canonical field of mypalletizer_communication/SetCoordsRequest.
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
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationSetCoordsRequest :: proc(v: ^Ros1Mypalletizer_communicationSetCoordsRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_x) { return false }
 if !put_float32(w,v.field_y) { return false }
 if !put_float32(w,v.field_z) { return false }
 if !put_float32(w,v.field_rx) { return false }
 if !put_integer(w,u64(v.field_speed),1) { return false }
 if !put_integer(w,u64(v.field_model),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsRequest.
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
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationSetCoordsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetCoordsRequest,bool) {
 v:=init_Ros1Mypalletizer_communicationSetCoordsRequest()
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
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_model=i8(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/SetCoordsRequest value.
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
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationSetCoordsRequest :: proc(v: ^Ros1Mypalletizer_communicationSetCoordsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=18}
 if !write_Ros1Mypalletizer_communicationSetCoordsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=18}
 if !write_Ros1Mypalletizer_communicationSetCoordsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/SetCoordsRequest value.
// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields
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
// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationSetCoordsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetCoordsRequest,u32) {
 if len(bytes)<18 || len(bytes)>18 { return Ros1Mypalletizer_communicationSetCoordsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationSetCoordsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationSetCoordsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 mypalletizer_communication/SetCoordsResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1
// bytes and is identified by UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
// publisher, subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
// mutable readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsResponse :: struct {
 // @brief mypalletizer_communication/SetCoordsResponse.Flag: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves
 // the original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 // scaling, frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 // and allocator ownership follow the enclosing decode function.
 // @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_Flag: bool,
}
// @brief Maximum canonical extent of mypalletizer_communication/SetCoordsResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of mypalletizer_communication/SetCoordsResponse.
// @details Exact identity UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308 binds
// field order, shape and bounds. It does not replace the native type identity.
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsResponse_Codec_Identity :: "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308"
// @brief Original ROS type name for mypalletizer_communication/SetCoordsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsResponse_Native_Type :: "mypalletizer_communication/SetCoordsResponse"
// @brief Selected original native identity for mypalletizer_communication/SetCoordsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Mypalletizer_communicationSetCoordsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of mypalletizer_communication/SetCoordsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
// sequence and string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
// during synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Mypalletizer_communicationSetCoordsResponse :: proc() -> Ros1Mypalletizer_communicationSetCoordsResponse {
 v: Ros1Mypalletizer_communicationSetCoordsResponse
 v.field_Flag = false
 return v
}
// @brief Append every canonical field of mypalletizer_communication/SetCoordsResponse.
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
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Mypalletizer_communicationSetCoordsResponse :: proc(v: ^Ros1Mypalletizer_communicationSetCoordsResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_Flag) { return false }
 return true
}
// @brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsResponse.
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
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Mypalletizer_communicationSetCoordsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetCoordsResponse,bool) {
 v:=init_Ros1Mypalletizer_communicationSetCoordsResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_Flag=bool(b)
 }
 return v,true
}
// @brief Encode one complete mypalletizer_communication/SetCoordsResponse value.
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
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Mypalletizer_communicationSetCoordsResponse :: proc(v: ^Ros1Mypalletizer_communicationSetCoordsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Mypalletizer_communicationSetCoordsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Mypalletizer_communicationSetCoordsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete mypalletizer_communication/SetCoordsResponse value.
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
// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Mypalletizer_communicationSetCoordsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Mypalletizer_communicationSetCoordsResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Mypalletizer_communicationSetCoordsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Mypalletizer_communicationSetCoordsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Mypalletizer_communicationSetCoordsResponse{},reader.code }
 return value,0
}
