package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 uwvm_groot_bridge/msg/RGBFrame value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..860 bytes and
// is identified by UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBFrame :: struct {
 // @brief uwvm_groot_bridge/msg/RGBFrame.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
 // @brief uwvm_groot_bridge/msg/RGBFrame.shape: uint32; exactly 5 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
 field_shape: [5]u32,
 // @brief uwvm_groot_bridge/msg/RGBFrame.pixels: uint8; 0..768 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
 field_pixels: []u8,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/msg/RGBFrame in bytes.
// @details The inclusive bound is 860 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBFrame_Maximum_Wire_Bytes :: 860
// @brief Canonical codec identity of uwvm_groot_bridge/msg/RGBFrame.
// @details Exact identity UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBFrame_Codec_Identity ::
    "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364"
// @brief Original ROS type name for uwvm_groot_bridge/msg/RGBFrame.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBFrame_Native_Type :: "uwvm_groot_bridge/msg/RGBFrame"
// @brief Selected original native identity for uwvm_groot_bridge/msg/RGBFrame.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBFrame_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/msg/RGBFrame.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeMsgRGBFrame :: proc() -> Ros2Uwvm_groot_bridgeMsgRGBFrame {
 v: Ros2Uwvm_groot_bridgeMsgRGBFrame
 v.field_key = ""
 v.field_shape = [5]u32{0,0,0,0,0}
 v.field_pixels = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/msg/RGBFrame.
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
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeMsgRGBFrame :: proc(v: ^Ros2Uwvm_groot_bridgeMsgRGBFrame, w: ^Writer) -> bool {
 if !put_string(w,v.field_key,64) { return false }
 for e in v.field_shape {
 if !put_integer(w,u64(e),4) { return false }
 }
 if len(v.field_pixels)>768 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_pixels)),4) { return false }
 for e in v.field_pixels {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/RGBFrame.
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
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeMsgRGBFrame :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgRGBFrame,bool) {
 v:=init_Ros2Uwvm_groot_bridgeMsgRGBFrame()
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 v.field_key=b
 }
 for &e in v.field_shape {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>768 { r.code=22; return v,false }
 v.field_pixels=make([]u8,int(n),allocator)
 }
 for &e in v.field_pixels {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/msg/RGBFrame value.
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
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeMsgRGBFrame :: proc(v: ^Ros2Uwvm_groot_bridgeMsgRGBFrame, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=860}
 if !write_Ros2Uwvm_groot_bridgeMsgRGBFrame(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=860}
 if !write_Ros2Uwvm_groot_bridgeMsgRGBFrame(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/msg/RGBFrame value.
// @details Require the complete 28..860-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeMsgRGBFrame :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgRGBFrame,u32) {
 if len(bytes)<28 || len(bytes)>860 { return Ros2Uwvm_groot_bridgeMsgRGBFrame{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeMsgRGBFrame(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeMsgRGBFrame{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/msg/FloatTensor value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..1364 bytes and
// is identified by UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgFloatTensor :: struct {
 // @brief uwvm_groot_bridge/msg/FloatTensor.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
 // @brief uwvm_groot_bridge/msg/FloatTensor.shape: uint32; exactly 3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
 field_shape: [3]u32,
 // @brief uwvm_groot_bridge/msg/FloatTensor.values: float32; 0..320 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
 field_values: []f32,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/msg/FloatTensor in bytes.
// @details The inclusive bound is 1364 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgFloatTensor_Maximum_Wire_Bytes :: 1364
// @brief Canonical codec identity of uwvm_groot_bridge/msg/FloatTensor.
// @details Exact identity UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgFloatTensor_Codec_Identity ::
    "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae"
// @brief Original ROS type name for uwvm_groot_bridge/msg/FloatTensor.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgFloatTensor_Native_Type :: "uwvm_groot_bridge/msg/FloatTensor"
// @brief Selected original native identity for uwvm_groot_bridge/msg/FloatTensor.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgFloatTensor_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/msg/FloatTensor.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeMsgFloatTensor :: proc() -> Ros2Uwvm_groot_bridgeMsgFloatTensor {
 v: Ros2Uwvm_groot_bridgeMsgFloatTensor
 v.field_key = ""
 v.field_shape = [3]u32{0,0,0}
 v.field_values = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/msg/FloatTensor.
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
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeMsgFloatTensor :: proc(v: ^Ros2Uwvm_groot_bridgeMsgFloatTensor, w: ^Writer) -> bool {
 if !put_string(w,v.field_key,64) { return false }
 for e in v.field_shape {
 if !put_integer(w,u64(e),4) { return false }
 }
 if len(v.field_values)>320 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_values)),4) { return false }
 for e in v.field_values {
 if !put_float32(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/FloatTensor.
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
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeMsgFloatTensor :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgFloatTensor,bool) {
 v:=init_Ros2Uwvm_groot_bridgeMsgFloatTensor()
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 v.field_key=b
 }
 for &e in v.field_shape {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>320 { r.code=22; return v,false }
 v.field_values=make([]f32,int(n),allocator)
 }
 for &e in v.field_values {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/msg/FloatTensor value.
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
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeMsgFloatTensor :: proc(v: ^Ros2Uwvm_groot_bridgeMsgFloatTensor, output: []u8) -> ([]u8,
    u32) {
 measure:=Writer{measuring=true,limit=1364}
 if !write_Ros2Uwvm_groot_bridgeMsgFloatTensor(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1364}
 if !write_Ros2Uwvm_groot_bridgeMsgFloatTensor(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/msg/FloatTensor value.
// @details Require the complete 20..1364-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeMsgFloatTensor :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgFloatTensor,u32) {
 if len(bytes)<20 || len(bytes)>1364 { return Ros2Uwvm_groot_bridgeMsgFloatTensor{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeMsgFloatTensor(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeMsgFloatTensor{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/msg/TextSequence value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..1120 bytes and
// is identified by UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgTextSequence :: struct {
 // @brief uwvm_groot_bridge/msg/TextSequence.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
 // @brief uwvm_groot_bridge/msg/TextSequence.shape: uint32; exactly 2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
 field_shape: [2]u32,
 // @brief uwvm_groot_bridge/msg/TextSequence.texts: string; 0..4 elements; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
 field_texts: []string,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/msg/TextSequence in bytes.
// @details The inclusive bound is 1120 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgTextSequence_Maximum_Wire_Bytes :: 1120
// @brief Canonical codec identity of uwvm_groot_bridge/msg/TextSequence.
// @details Exact identity UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgTextSequence_Codec_Identity ::
    "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d"
// @brief Original ROS type name for uwvm_groot_bridge/msg/TextSequence.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgTextSequence_Native_Type :: "uwvm_groot_bridge/msg/TextSequence"
// @brief Selected original native identity for uwvm_groot_bridge/msg/TextSequence.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgTextSequence_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/msg/TextSequence.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeMsgTextSequence :: proc() -> Ros2Uwvm_groot_bridgeMsgTextSequence {
 v: Ros2Uwvm_groot_bridgeMsgTextSequence
 v.field_key = ""
 v.field_shape = [2]u32{0,0}
 v.field_texts = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/msg/TextSequence.
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
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeMsgTextSequence :: proc(v: ^Ros2Uwvm_groot_bridgeMsgTextSequence, w: ^Writer) -> bool {
 if !put_string(w,v.field_key,64) { return false }
 for e in v.field_shape {
 if !put_integer(w,u64(e),4) { return false }
 }
 if len(v.field_texts)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_texts)),4) { return false }
 for e in v.field_texts {
 if !put_string(w,e,256) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/TextSequence.
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
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeMsgTextSequence :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgTextSequence,bool) {
 v:=init_Ros2Uwvm_groot_bridgeMsgTextSequence()
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 v.field_key=b
 }
 for &e in v.field_shape {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_texts=make([]string,int(n),allocator)
 }
 for &e in v.field_texts {
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/msg/TextSequence value.
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
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeMsgTextSequence :: proc(v: ^Ros2Uwvm_groot_bridgeMsgTextSequence, output: []u8) -> ([]u8,
    u32) {
 measure:=Writer{measuring=true,limit=1120}
 if !write_Ros2Uwvm_groot_bridgeMsgTextSequence(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1120}
 if !write_Ros2Uwvm_groot_bridgeMsgTextSequence(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/msg/TextSequence value.
// @details Require the complete 16..1120-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeMsgTextSequence :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgTextSequence,u32) {
 if len(bytes)<16 || len(bytes)>1120 { return Ros2Uwvm_groot_bridgeMsgTextSequence{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeMsgTextSequence(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeMsgTextSequence{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferAction_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..10296 bytes
// and is identified by UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Request :: struct {
 // @brief uwvm_groot_bridge/srv/InferAction_Request.application_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_application_nonce: u64,
 // @brief uwvm_groot_bridge/srv/InferAction_Request.video: uwvm_groot_bridge/msg/RGBFrame; 0..3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_video: []Ros2Uwvm_groot_bridgeMsgRGBFrame,
 // @brief uwvm_groot_bridge/srv/InferAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_state: []Ros2Uwvm_groot_bridgeMsgFloatTensor,
 // @brief uwvm_groot_bridge/srv/InferAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_language: []Ros2Uwvm_groot_bridgeMsgTextSequence,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferAction_Request in bytes.
// @details The inclusive bound is 10296 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Request_Maximum_Wire_Bytes :: 10296
// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferAction_Request.
// @details Exact identity UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Request_Codec_Identity ::
    "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6"
// @brief Original ROS type name for uwvm_groot_bridge/srv/InferAction_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Request_Native_Type :: "uwvm_groot_bridge/srv/InferAction_Request"
// @brief Selected original native identity for uwvm_groot_bridge/srv/InferAction_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/InferAction_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvInferAction_Request :: proc() -> Ros2Uwvm_groot_bridgeSrvInferAction_Request {
 v: Ros2Uwvm_groot_bridgeSrvInferAction_Request
 v.field_application_nonce = 0
 v.field_video = nil
 v.field_state = nil
 v.field_language = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/InferAction_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvInferAction_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvInferAction_Request,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_application_nonce),8) { return false }
 if len(v.field_video)>3 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_video)),4) { return false }
 for e in v.field_video {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgRGBFrame(&item,w) { return false }
 }
 if len(v.field_state)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_state)),4) { return false }
 for e in v.field_state {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgFloatTensor(&item,w) { return false }
 }
 if len(v.field_language)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_language)),4) { return false }
 for e in v.field_language {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgTextSequence(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferAction_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvInferAction_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferAction_Request,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvInferAction_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_application_nonce=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>3 { r.code=22; return v,false }
 v.field_video=make([]Ros2Uwvm_groot_bridgeMsgRGBFrame,int(n),allocator)
 }
 for &e in v.field_video {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgRGBFrame(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_state=make([]Ros2Uwvm_groot_bridgeMsgFloatTensor,int(n),allocator)
 }
 for &e in v.field_state {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgFloatTensor(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_language=make([]Ros2Uwvm_groot_bridgeMsgTextSequence,int(n),allocator)
 }
 for &e in v.field_language {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgTextSequence(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/InferAction_Request value.
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvInferAction_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvInferAction_Request,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10296}
 if !write_Ros2Uwvm_groot_bridgeSrvInferAction_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10296}
 if !write_Ros2Uwvm_groot_bridgeSrvInferAction_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferAction_Request value.
// @details Require the complete 20..10296-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvInferAction_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferAction_Request,u32) {
 if len(bytes)<20 || len(bytes)>10296 { return Ros2Uwvm_groot_bridgeSrvInferAction_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvInferAction_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvInferAction_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferAction_Response value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..10929 bytes
// and is identified by UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Response :: struct {
 // @brief uwvm_groot_bridge/srv/InferAction_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_groot_bridge/srv/InferAction_Response.application_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_application_nonce: u64,
 // @brief uwvm_groot_bridge/srv/InferAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_action: []Ros2Uwvm_groot_bridgeMsgFloatTensor,
 // @brief uwvm_groot_bridge/srv/InferAction_Response.info_is_empty: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_info_is_empty: bool,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferAction_Response in bytes.
// @details The inclusive bound is 10929 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Response_Maximum_Wire_Bytes :: 10929
// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferAction_Response.
// @details Exact identity UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Response_Codec_Identity ::
    "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce"
// @brief Original ROS type name for uwvm_groot_bridge/srv/InferAction_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Response_Native_Type :: "uwvm_groot_bridge/srv/InferAction_Response"
// @brief Selected original native identity for uwvm_groot_bridge/srv/InferAction_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferAction_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/InferAction_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvInferAction_Response :: proc() -> Ros2Uwvm_groot_bridgeSrvInferAction_Response {
 v: Ros2Uwvm_groot_bridgeSrvInferAction_Response
 v.field_status = 0
 v.field_application_nonce = 0
 v.field_action = nil
 v.field_info_is_empty = false
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/InferAction_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvInferAction_Response :: proc(v: ^Ros2Uwvm_groot_bridgeSrvInferAction_Response,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_integer(w,u64(v.field_application_nonce),8) { return false }
 if len(v.field_action)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_action)),4) { return false }
 for e in v.field_action {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgFloatTensor(&item,w) { return false }
 }
 if !put_bool(w,v.field_info_is_empty) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferAction_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvInferAction_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferAction_Response,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvInferAction_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_application_nonce=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_action=make([]Ros2Uwvm_groot_bridgeMsgFloatTensor,int(n),allocator)
 }
 for &e in v.field_action {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgFloatTensor(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_info_is_empty=bool(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/InferAction_Response value.
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvInferAction_Response :: proc(v: ^Ros2Uwvm_groot_bridgeSrvInferAction_Response,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10929}
 if !write_Ros2Uwvm_groot_bridgeSrvInferAction_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10929}
 if !write_Ros2Uwvm_groot_bridgeSrvInferAction_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferAction_Response value.
// @details Require the complete 17..10929-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvInferAction_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferAction_Response,u32) {
 if len(bytes)<17 || len(bytes)>10929 { return Ros2Uwvm_groot_bridgeSrvInferAction_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvInferAction_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvInferAction_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/msg/RGBDescriptor value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 24..88 bytes and
// is identified by UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBDescriptor :: struct {
 // @brief uwvm_groot_bridge/msg/RGBDescriptor.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
 // @brief uwvm_groot_bridge/msg/RGBDescriptor.shape: uint32; exactly 5 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
 field_shape: [5]u32,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/msg/RGBDescriptor in bytes.
// @details The inclusive bound is 88 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBDescriptor_Maximum_Wire_Bytes :: 88
// @brief Canonical codec identity of uwvm_groot_bridge/msg/RGBDescriptor.
// @details Exact identity UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBDescriptor_Codec_Identity ::
    "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40"
// @brief Original ROS type name for uwvm_groot_bridge/msg/RGBDescriptor.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBDescriptor_Native_Type :: "uwvm_groot_bridge/msg/RGBDescriptor"
// @brief Selected original native identity for uwvm_groot_bridge/msg/RGBDescriptor.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeMsgRGBDescriptor_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/msg/RGBDescriptor.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeMsgRGBDescriptor :: proc() -> Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
 v: Ros2Uwvm_groot_bridgeMsgRGBDescriptor
 v.field_key = ""
 v.field_shape = [5]u32{0,0,0,0,0}
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/msg/RGBDescriptor.
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
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor :: proc(v: ^Ros2Uwvm_groot_bridgeMsgRGBDescriptor, w: ^Writer) -> bool {
 if !put_string(w,v.field_key,64) { return false }
 for e in v.field_shape {
 if !put_integer(w,u64(e),4) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/RGBDescriptor.
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
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgRGBDescriptor,bool) {
 v:=init_Ros2Uwvm_groot_bridgeMsgRGBDescriptor()
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 v.field_key=b
 }
 for &e in v.field_shape {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/msg/RGBDescriptor value.
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
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeMsgRGBDescriptor :: proc(v: ^Ros2Uwvm_groot_bridgeMsgRGBDescriptor, output: []u8) -> ([]u8,
    u32) {
 measure:=Writer{measuring=true,limit=88}
 if !write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=88}
 if !write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/msg/RGBDescriptor value.
// @details Require the complete 24..88-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeMsgRGBDescriptor :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeMsgRGBDescriptor,u32) {
 if len(bytes)<24 || len(bytes)>88 { return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/BeginObservation_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..276 bytes and
// is identified by UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Request :: struct {
 // @brief uwvm_groot_bridge/srv/BeginObservation_Request.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
 // @brief uwvm_groot_bridge/srv/BeginObservation_Request.video: uwvm_groot_bridge/msg/RGBDescriptor; 0..3 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
 field_video: []Ros2Uwvm_groot_bridgeMsgRGBDescriptor,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/BeginObservation_Request in bytes.
// @details The inclusive bound is 276 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Request_Maximum_Wire_Bytes :: 276
// @brief Canonical codec identity of uwvm_groot_bridge/srv/BeginObservation_Request.
// @details Exact identity UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Request_Codec_Identity ::
    "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2"
// @brief Original ROS type name for uwvm_groot_bridge/srv/BeginObservation_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Request_Native_Type :: "uwvm_groot_bridge/srv/BeginObservation_Request"
// @brief Selected original native identity for uwvm_groot_bridge/srv/BeginObservation_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/BeginObservation_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request :: proc() -> Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
 v: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
 v.field_observation_nonce = 0
 v.field_video = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/BeginObservation_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 if len(v.field_video)>3 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_video)),4) { return false }
 for e in v.field_video {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/BeginObservation_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>3 { r.code=22; return v,false }
 v.field_video=make([]Ros2Uwvm_groot_bridgeMsgRGBDescriptor,int(n),allocator)
 }
 for &e in v.field_video {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/BeginObservation_Request value.
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=276}
 if !write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=276}
 if !write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/BeginObservation_Request value.
// @details Require the complete 12..276-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,u32) {
 if len(bytes)<12 || len(bytes)>276 { return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/BeginObservation_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes and
// is identified by UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Response :: struct {
 // @brief uwvm_groot_bridge/srv/BeginObservation_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_groot_bridge/srv/BeginObservation_Response.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/BeginObservation_Response in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Response_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_groot_bridge/srv/BeginObservation_Response.
// @details Exact identity UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Response_Codec_Identity ::
    "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049"
// @brief Original ROS type name for uwvm_groot_bridge/srv/BeginObservation_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Response_Native_Type :: "uwvm_groot_bridge/srv/BeginObservation_Response"
// @brief Selected original native identity for uwvm_groot_bridge/srv/BeginObservation_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvBeginObservation_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/BeginObservation_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response :: proc() -> Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
 v: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
 v.field_status = 0
 v.field_observation_nonce = 0
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/BeginObservation_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response :: proc(v: ^Ros2Uwvm_groot_bridgeSrvBeginObservation_Response,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/BeginObservation_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Response,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/BeginObservation_Response value.
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response :: proc(v: ^Ros2Uwvm_groot_bridgeSrvBeginObservation_Response,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/BeginObservation_Response value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Response,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..852 bytes and
// is identified by UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: struct {
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.key: string; each string is 0..64 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
 field_key: string,
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.offset: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
 field_offset: u32,
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.pixels: uint8; 0..768 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
 field_pixels: []u8,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/WriteRGBChunk_Request in bytes.
// @details The inclusive bound is 852 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_Maximum_Wire_Bytes :: 852
// @brief Canonical codec identity of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
// @details Exact identity UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_Codec_Identity ::
    "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c"
// @brief Original ROS type name for uwvm_groot_bridge/srv/WriteRGBChunk_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_Native_Type :: "uwvm_groot_bridge/srv/WriteRGBChunk_Request"
// @brief Selected original native identity for uwvm_groot_bridge/srv/WriteRGBChunk_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: proc() -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
 v: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
 v.field_observation_nonce = 0
 v.field_key = ""
 v.field_offset = 0
 v.field_pixels = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 if !put_string(w,v.field_key,64) { return false }
 if !put_integer(w,u64(v.field_offset),4) { return false }
 if len(v.field_pixels)>768 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_pixels)),4) { return false }
 for e in v.field_pixels {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 {
 b,ok:=get_string(r,64); if !ok { return v,false }
 v.field_key=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_offset=u32(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>768 { r.code=22; return v,false }
 v.field_pixels=make([]u8,int(n),allocator)
 }
 for &e in v.field_pixels {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=852}
 if !write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=852}
 if !write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
// @details Require the complete 20..852-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,u32) {
 if len(bytes)<20 || len(bytes)>852 { return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: struct {
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
 // @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.accepted_bytes: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
 field_accepted_bytes: u32,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/WriteRGBChunk_Response in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
// @details Exact identity UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_Codec_Identity ::
    "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba"
// @brief Original ROS type name for uwvm_groot_bridge/srv/WriteRGBChunk_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_Native_Type :: "uwvm_groot_bridge/srv/WriteRGBChunk_Response"
// @brief Selected original native identity for uwvm_groot_bridge/srv/WriteRGBChunk_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: proc() -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
 v: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
 v.field_status = 0
 v.field_observation_nonce = 0
 v.field_accepted_bytes = 0
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: proc(v: ^Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 if !put_integer(w,u64(v.field_accepted_bytes),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_accepted_bytes=u32(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: proc(v: ^Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,
    output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
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
// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/ReleaseObservation_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request :: struct {
 // @brief uwvm_groot_bridge/srv/ReleaseObservation_Request.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/ReleaseObservation_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of uwvm_groot_bridge/srv/ReleaseObservation_Request.
// @details Exact identity UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request_Codec_Identity ::
    "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5"
// @brief Original ROS type name for uwvm_groot_bridge/srv/ReleaseObservation_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request_Native_Type :: "uwvm_groot_bridge/srv/ReleaseObservation_Request"
// @brief Selected original native identity for uwvm_groot_bridge/srv/ReleaseObservation_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/ReleaseObservation_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request :: proc() ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
 v: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
 v.field_observation_nonce = 0
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/ReleaseObservation_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request :: proc(v: ^Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request,
    w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/ReleaseObservation_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/ReleaseObservation_Request value.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/ReleaseObservation_Request value.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/ReleaseObservation_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes and
// is identified by UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response :: struct {
 // @brief uwvm_groot_bridge/srv/ReleaseObservation_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_groot_bridge/srv/ReleaseObservation_Response.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/ReleaseObservation_Response in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of uwvm_groot_bridge/srv/ReleaseObservation_Response.
// @details Exact identity UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_Codec_Identity ::
    "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69"
// @brief Original ROS type name for uwvm_groot_bridge/srv/ReleaseObservation_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_Native_Type :: "uwvm_groot_bridge/srv/ReleaseObservation_Response"
// @brief Selected original native identity for uwvm_groot_bridge/srv/ReleaseObservation_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/ReleaseObservation_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response :: proc() ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
 v: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
 v.field_status = 0
 v.field_observation_nonce = 0
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/ReleaseObservation_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/ReleaseObservation_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/ReleaseObservation_Response value.
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/ReleaseObservation_Response value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferUploadedAction_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 24..7720 bytes and
// is identified by UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: struct {
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.application_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_application_nonce: u64,
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.observation_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_observation_nonce: u64,
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_state: []Ros2Uwvm_groot_bridgeMsgFloatTensor,
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2
 // elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_language: []Ros2Uwvm_groot_bridgeMsgTextSequence,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferUploadedAction_Request in bytes.
// @details The inclusive bound is 7720 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_Maximum_Wire_Bytes :: 7720
// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferUploadedAction_Request.
// @details Exact identity UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_Codec_Identity ::
    "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d"
// @brief Original ROS type name for uwvm_groot_bridge/srv/InferUploadedAction_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_Native_Type :: "uwvm_groot_bridge/srv/InferUploadedAction_Request"
// @brief Selected original native identity for uwvm_groot_bridge/srv/InferUploadedAction_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/InferUploadedAction_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: proc() ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
 v: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
 v.field_application_nonce = 0
 v.field_observation_nonce = 0
 v.field_state = nil
 v.field_language = nil
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/InferUploadedAction_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_application_nonce),8) { return false }
 if !put_integer(w,u64(v.field_observation_nonce),8) { return false }
 if len(v.field_state)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_state)),4) { return false }
 for e in v.field_state {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgFloatTensor(&item,w) { return false }
 }
 if len(v.field_language)>2 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_language)),4) { return false }
 for e in v.field_language {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgTextSequence(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferUploadedAction_Request.
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_application_nonce=u64(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_observation_nonce=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_state=make([]Ros2Uwvm_groot_bridgeMsgFloatTensor,int(n),allocator)
 }
 for &e in v.field_state {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgFloatTensor(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>2 { r.code=22; return v,false }
 v.field_language=make([]Ros2Uwvm_groot_bridgeMsgTextSequence,int(n),allocator)
 }
 for &e in v.field_language {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgTextSequence(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/InferUploadedAction_Request value.
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=7720}
 if !write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=7720}
 if !write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferUploadedAction_Request value.
// @details Require the complete 24..7720-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request,u32) {
 if len(bytes)<24 || len(bytes)>7720 { return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferUploadedAction_Response value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..10929 bytes
// and is identified by UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: struct {
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status: u32,
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.application_nonce: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_application_nonce: u64,
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_action: []Ros2Uwvm_groot_bridgeMsgFloatTensor,
 // @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.info_is_empty: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_info_is_empty: bool,
}
// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferUploadedAction_Response in bytes.
// @details The inclusive bound is 10929 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_Maximum_Wire_Bytes :: 10929
// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferUploadedAction_Response.
// @details Exact identity UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_Codec_Identity ::
    "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e"
// @brief Original ROS type name for uwvm_groot_bridge/srv/InferUploadedAction_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_Native_Type :: "uwvm_groot_bridge/srv/InferUploadedAction_Response"
// @brief Selected original native identity for uwvm_groot_bridge/srv/InferUploadedAction_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response_Native_Identity :: ""
// @brief Construct the declared defaults of uwvm_groot_bridge/srv/InferUploadedAction_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: proc() ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
 v: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
 v.field_status = 0
 v.field_application_nonce = 0
 v.field_action = nil
 v.field_info_is_empty = false
 return v
}
// @brief Append every canonical field of uwvm_groot_bridge/srv/InferUploadedAction_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_status),4) { return false }
 if !put_integer(w,u64(v.field_application_nonce),8) { return false }
 if len(v.field_action)>8 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_action)),4) { return false }
 for e in v.field_action {
 item:=e
 if !write_Ros2Uwvm_groot_bridgeMsgFloatTensor(&item,w) { return false }
 }
 if !put_bool(w,v.field_info_is_empty) { return false }
 return true
}
// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferUploadedAction_Response.
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response,bool) {
 v:=init_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_status=u32(b)
 }
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_application_nonce=u64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>8 { r.code=22; return v,false }
 v.field_action=make([]Ros2Uwvm_groot_bridgeMsgFloatTensor,int(n),allocator)
 }
 for &e in v.field_action {
 {
 b,ok:=read_Ros2Uwvm_groot_bridgeMsgFloatTensor(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_info_is_empty=bool(b)
 }
 return v,true
}
// @brief Encode one complete uwvm_groot_bridge/srv/InferUploadedAction_Response value.
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: proc(
    v: ^Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=10929}
 if !write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10929}
 if !write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferUploadedAction_Response value.
// @details Require the complete 17..10929-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response,u32) {
 if len(bytes)<17 || len(bytes)>10929 { return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{},reader.code }
 return value,0
}
