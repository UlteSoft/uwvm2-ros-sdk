// @file records.odin
// @brief Complete universal_robots values and adapters for the selected original interface catalog.
// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
// roles require the separately admitted SDK owner.
// @see share/platform/universal_robots/domains/universal-robots-ros1-trajectory-complete.ir.json
// @see document/platform/universal_robots/en_US/README.md

package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 1 time value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Time :: struct {
 // @brief time.sec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_sec: u32,
 // @brief time.nsec: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
 field_nsec: u32,
}
// @brief Maximum canonical extent of time in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of time.
// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Codec_Identity :: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
// @brief Original ROS type name for time.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Native_Type :: "time"
// @brief Selected original native identity for time.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
Ros1Time_Native_Identity :: ""
// @brief Construct the declared defaults of time.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Time :: proc() -> Ros1Time {
 v: Ros1Time
 v.field_sec = 0
 v.field_nsec = 0
 return v
}
// @brief Append every canonical field of time.
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
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Time :: proc(v: ^Ros1Time, w: ^Writer) -> bool {
 if v.field_nsec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nsec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of time.
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
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Time :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Time,bool) {
 v:=init_Ros1Time()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sec=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_nsec=u32(b)
 }
 if v.field_nsec >= 1000000000 { r.code=22; return v,false }
 return v,true
}
// @brief Encode one complete time value.
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
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Time :: proc(v: ^Ros1Time, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Time(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Time(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete time value.
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
// @see Ros1Time; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Time :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Time,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Time{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Time(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Time{},reader.code }
 return value,0
}
// @brief Complete ROS 1 std_msgs/Header value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and
// is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader :: struct {
 // @brief std_msgs/Header.seq: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_seq: u32,
 // @brief std_msgs/Header.stamp: time.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_stamp: Ros1Time,
 // @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
 field_frame_id: string,
}
// @brief Maximum canonical extent of std_msgs/Header in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of std_msgs/Header.
// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
// @brief Original ROS type name for std_msgs/Header.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Native_Type :: "std_msgs/Header"
// @brief Selected original native identity for std_msgs/Header.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
Ros1Std_msgsHeader_Native_Identity :: ""
// @brief Construct the declared defaults of std_msgs/Header.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Std_msgsHeader :: proc() -> Ros1Std_msgsHeader {
 v: Ros1Std_msgsHeader
 v.field_seq = 0
 v.field_stamp = Ros1Time{}
 v.field_frame_id = ""
 return v
}
// @brief Append every canonical field of std_msgs/Header.
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_seq),4) { return false }
 if !write_Ros1Time(&v.field_stamp,w) { return false }
 if !put_string(w,v.field_frame_id,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of std_msgs/Header.
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Std_msgsHeader :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,bool) {
 v:=init_Ros1Std_msgsHeader()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_seq=u32(b)
 }
 {
 b,ok:=read_Ros1Time(r,allocator); if !ok { return v,false }
 v.field_stamp=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_frame_id=b
 }
 return v,true
}
// @brief Encode one complete std_msgs/Header value.
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Std_msgsHeader :: proc(v: ^Ros1Std_msgsHeader, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros1Std_msgsHeader(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros1Std_msgsHeader(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete std_msgs/Header value.
// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Std_msgsHeader; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Std_msgsHeader :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Std_msgsHeader,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros1Std_msgsHeader{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Std_msgsHeader(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Std_msgsHeader{},reader.code }
 return value,0
}
// @brief Complete ROS 1 duration value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Duration :: struct {
 // @brief duration.sec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
 field_sec: i32,
 // @brief duration.nsec: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
 field_nsec: i32,
}
// @brief Maximum canonical extent of duration in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
Ros1Duration_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of duration.
// @details Exact identity UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
Ros1Duration_Codec_Identity :: "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
// @brief Original ROS type name for duration.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
Ros1Duration_Native_Type :: "duration"
// @brief Selected original native identity for duration.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
Ros1Duration_Native_Identity :: ""
// @brief Construct the declared defaults of duration.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Duration :: proc() -> Ros1Duration {
 v: Ros1Duration
 v.field_sec = 0
 v.field_nsec = 0
 return v
}
// @brief Append every canonical field of duration.
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
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Duration :: proc(v: ^Ros1Duration, w: ^Writer) -> bool {
 if v.field_nsec < 0 { w.code=22; return false }
 if v.field_nsec >= 1000000000 { w.code=22; return false }
 if !put_integer(w,u64(v.field_sec),4) { return false }
 if !put_integer(w,u64(v.field_nsec),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of duration.
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
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Duration :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Duration,bool) {
 v:=init_Ros1Duration()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sec=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_nsec=i32(b)
 }
 if v.field_nsec < 0 { r.code=22; return v,false }
 if v.field_nsec >= 1000000000 { r.code=22; return v,false }
 return v,true
}
// @brief Encode one complete duration value.
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
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Duration :: proc(v: ^Ros1Duration, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Duration(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Duration(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete duration value.
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
// @see Ros1Duration; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Duration :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Duration,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Duration{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Duration(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Duration{},reader.code }
 return value,0
}
// @brief Complete ROS 1 trajectory_msgs/JointTrajectoryPoint value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..216 bytes and
// is identified by UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectoryPoint :: struct {
 // @brief trajectory_msgs/JointTrajectoryPoint.positions: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_positions: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.velocities: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_velocities: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.accelerations: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_accelerations: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.effort: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_effort: []f64,
 // @brief trajectory_msgs/JointTrajectoryPoint.time_from_start: duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
 field_time_from_start: Ros1Duration,
}
// @brief Maximum canonical extent of trajectory_msgs/JointTrajectoryPoint in bytes.
// @details The inclusive bound is 216 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectoryPoint_Maximum_Wire_Bytes :: 216
// @brief Canonical codec identity of trajectory_msgs/JointTrajectoryPoint.
// @details Exact identity UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d"
// @brief Original ROS type name for trajectory_msgs/JointTrajectoryPoint.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectoryPoint_Native_Type :: "trajectory_msgs/JointTrajectoryPoint"
// @brief Selected original native identity for trajectory_msgs/JointTrajectoryPoint.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectoryPoint_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/JointTrajectoryPoint.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Trajectory_msgsJointTrajectoryPoint :: proc() -> Ros1Trajectory_msgsJointTrajectoryPoint {
 v: Ros1Trajectory_msgsJointTrajectoryPoint
 v.field_positions = nil
 v.field_velocities = nil
 v.field_accelerations = nil
 v.field_effort = nil
 v.field_time_from_start = Ros1Duration{}
 return v
}
// @brief Append every canonical field of trajectory_msgs/JointTrajectoryPoint.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(v: ^Ros1Trajectory_msgsJointTrajectoryPoint, w: ^Writer) -> bool {
 if len(v.field_positions)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_positions)),4) { return false }
 for e in v.field_positions {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocities)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocities)),4) { return false }
 for e in v.field_velocities {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_accelerations)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_accelerations)),4) { return false }
 for e in v.field_accelerations {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 if !write_Ros1Duration(&v.field_time_from_start,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectoryPoint.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectoryPoint,bool) {
 v:=init_Ros1Trajectory_msgsJointTrajectoryPoint()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
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
 if n>6 { r.code=22; return v,false }
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
 if n>6 { r.code=22; return v,false }
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
 if n>6 { r.code=22; return v,false }
 v.field_effort=make([]f64,int(n),allocator)
 }
 for &e in v.field_effort {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=read_Ros1Duration(r,allocator); if !ok { return v,false }
 v.field_time_from_start=b
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/JointTrajectoryPoint value.
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(v: ^Ros1Trajectory_msgsJointTrajectoryPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=216}
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=216}
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint value.
// @details Require the complete 24..216-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Trajectory_msgsJointTrajectoryPoint; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Trajectory_msgsJointTrajectoryPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectoryPoint,u32) {
 if len(bytes)<24 || len(bytes)>216 { return Ros1Trajectory_msgsJointTrajectoryPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Trajectory_msgsJointTrajectoryPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 1 trajectory_msgs/JointTrajectory value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..5168 bytes and
// is identified by UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectory :: struct {
 // @brief trajectory_msgs/JointTrajectory.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief trajectory_msgs/JointTrajectory.joint_names: string; 0..6 elements; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief trajectory_msgs/JointTrajectory.points: trajectory_msgs/JointTrajectoryPoint; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
 field_points: []Ros1Trajectory_msgsJointTrajectoryPoint,
}
// @brief Maximum canonical extent of trajectory_msgs/JointTrajectory in bytes.
// @details The inclusive bound is 5168 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectory_Maximum_Wire_Bytes :: 5168
// @brief Canonical codec identity of trajectory_msgs/JointTrajectory.
// @details Exact identity UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectory_Codec_Identity :: "UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda"
// @brief Original ROS type name for trajectory_msgs/JointTrajectory.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectory_Native_Type :: "trajectory_msgs/JointTrajectory"
// @brief Selected original native identity for trajectory_msgs/JointTrajectory.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
Ros1Trajectory_msgsJointTrajectory_Native_Identity :: ""
// @brief Construct the declared defaults of trajectory_msgs/JointTrajectory.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Trajectory_msgsJointTrajectory :: proc() -> Ros1Trajectory_msgsJointTrajectory {
 v: Ros1Trajectory_msgsJointTrajectory
 v.field_header = Ros1Std_msgsHeader{}
 v.field_joint_names = nil
 v.field_points = nil
 return v
}
// @brief Append every canonical field of trajectory_msgs/JointTrajectory.
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
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Trajectory_msgsJointTrajectory :: proc(v: ^Ros1Trajectory_msgsJointTrajectory, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_points)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_points)),4) { return false }
 for e in v.field_points {
 item:=e
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of trajectory_msgs/JointTrajectory.
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
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Trajectory_msgsJointTrajectory :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectory,bool) {
 v:=init_Ros1Trajectory_msgsJointTrajectory()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
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
 if n>16 { r.code=22; return v,false }
 v.field_points=make([]Ros1Trajectory_msgsJointTrajectoryPoint,int(n),allocator)
 }
 for &e in v.field_points {
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete trajectory_msgs/JointTrajectory value.
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
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Trajectory_msgsJointTrajectory :: proc(v: ^Ros1Trajectory_msgsJointTrajectory, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=5168}
 if !write_Ros1Trajectory_msgsJointTrajectory(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=5168}
 if !write_Ros1Trajectory_msgsJointTrajectory(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete trajectory_msgs/JointTrajectory value.
// @details Require the complete 24..5168-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Trajectory_msgsJointTrajectory; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Trajectory_msgsJointTrajectory :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Trajectory_msgsJointTrajectory,u32) {
 if len(bytes)<24 || len(bytes)>5168 { return Ros1Trajectory_msgsJointTrajectory{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Trajectory_msgsJointTrajectory(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Trajectory_msgsJointTrajectory{},reader.code }
 return value,0
}
// @brief Complete ROS 1 control_msgs/JointTolerance value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 28..156 bytes and
// is identified by UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsJointTolerance :: struct {
 // @brief control_msgs/JointTolerance.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief control_msgs/JointTolerance.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief control_msgs/JointTolerance.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief control_msgs/JointTolerance.acceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
 field_acceleration: f64,
}
// @brief Maximum canonical extent of control_msgs/JointTolerance in bytes.
// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsJointTolerance_Maximum_Wire_Bytes :: 156
// @brief Canonical codec identity of control_msgs/JointTolerance.
// @details Exact identity UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsJointTolerance_Codec_Identity :: "UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738"
// @brief Original ROS type name for control_msgs/JointTolerance.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsJointTolerance_Native_Type :: "control_msgs/JointTolerance"
// @brief Selected original native identity for control_msgs/JointTolerance.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsJointTolerance_Native_Identity :: ""
// @brief Construct the declared defaults of control_msgs/JointTolerance.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Control_msgsJointTolerance :: proc() -> Ros1Control_msgsJointTolerance {
 v: Ros1Control_msgsJointTolerance
 v.field_name = ""
 v.field_position = 0
 v.field_velocity = 0
 v.field_acceleration = 0
 return v
}
// @brief Append every canonical field of control_msgs/JointTolerance.
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
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Control_msgsJointTolerance :: proc(v: ^Ros1Control_msgsJointTolerance, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_acceleration) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/JointTolerance.
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
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Control_msgsJointTolerance :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Control_msgsJointTolerance,bool) {
 v:=init_Ros1Control_msgsJointTolerance()
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
 v.field_acceleration=f64(b)
 }
 return v,true
}
// @brief Encode one complete control_msgs/JointTolerance value.
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
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Control_msgsJointTolerance :: proc(v: ^Ros1Control_msgsJointTolerance, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=156}
 if !write_Ros1Control_msgsJointTolerance(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=156}
 if !write_Ros1Control_msgsJointTolerance(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/JointTolerance value.
// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Control_msgsJointTolerance; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Control_msgsJointTolerance :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Control_msgsJointTolerance,u32) {
 if len(bytes)<28 || len(bytes)>156 { return Ros1Control_msgsJointTolerance{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Control_msgsJointTolerance(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Control_msgsJointTolerance{},reader.code }
 return value,0
}
// @brief Complete ROS 1 control_msgs/FollowJointTrajectoryGoal value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..7056 bytes and
// is identified by UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryGoal :: struct {
 // @brief control_msgs/FollowJointTrajectoryGoal.trajectory: trajectory_msgs/JointTrajectory.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
 field_trajectory: Ros1Trajectory_msgsJointTrajectory,
 // @brief control_msgs/FollowJointTrajectoryGoal.path_tolerance: control_msgs/JointTolerance; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
 field_path_tolerance: []Ros1Control_msgsJointTolerance,
 // @brief control_msgs/FollowJointTrajectoryGoal.goal_tolerance: control_msgs/JointTolerance; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
 field_goal_tolerance: []Ros1Control_msgsJointTolerance,
 // @brief control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance: duration.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
 field_goal_time_tolerance: Ros1Duration,
}
// @brief Maximum canonical extent of control_msgs/FollowJointTrajectoryGoal in bytes.
// @details The inclusive bound is 7056 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryGoal_Maximum_Wire_Bytes :: 7056
// @brief Canonical codec identity of control_msgs/FollowJointTrajectoryGoal.
// @details Exact identity UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryGoal_Codec_Identity :: "UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78"
// @brief Original ROS type name for control_msgs/FollowJointTrajectoryGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryGoal_Native_Type :: "control_msgs/FollowJointTrajectoryGoal"
// @brief Selected original native identity for control_msgs/FollowJointTrajectoryGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryGoal_Native_Identity :: ""
// @brief Construct the declared defaults of control_msgs/FollowJointTrajectoryGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Control_msgsFollowJointTrajectoryGoal :: proc() -> Ros1Control_msgsFollowJointTrajectoryGoal {
 v: Ros1Control_msgsFollowJointTrajectoryGoal
 v.field_trajectory = Ros1Trajectory_msgsJointTrajectory{}
 v.field_path_tolerance = nil
 v.field_goal_tolerance = nil
 v.field_goal_time_tolerance = Ros1Duration{}
 return v
}
// @brief Append every canonical field of control_msgs/FollowJointTrajectoryGoal.
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
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Control_msgsFollowJointTrajectoryGoal :: proc(v: ^Ros1Control_msgsFollowJointTrajectoryGoal, w: ^Writer) -> bool {
 if !write_Ros1Trajectory_msgsJointTrajectory(&v.field_trajectory,w) { return false }
 if len(v.field_path_tolerance)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_path_tolerance)),4) { return false }
 for e in v.field_path_tolerance {
 item:=e
 if !write_Ros1Control_msgsJointTolerance(&item,w) { return false }
 }
 if len(v.field_goal_tolerance)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_goal_tolerance)),4) { return false }
 for e in v.field_goal_tolerance {
 item:=e
 if !write_Ros1Control_msgsJointTolerance(&item,w) { return false }
 }
 if !write_Ros1Duration(&v.field_goal_time_tolerance,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryGoal.
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
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Control_msgsFollowJointTrajectoryGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Control_msgsFollowJointTrajectoryGoal,bool) {
 v:=init_Ros1Control_msgsFollowJointTrajectoryGoal()
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectory(r,allocator); if !ok { return v,false }
 v.field_trajectory=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_path_tolerance=make([]Ros1Control_msgsJointTolerance,int(n),allocator)
 }
 for &e in v.field_path_tolerance {
 {
 b,ok:=read_Ros1Control_msgsJointTolerance(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_goal_tolerance=make([]Ros1Control_msgsJointTolerance,int(n),allocator)
 }
 for &e in v.field_goal_tolerance {
 {
 b,ok:=read_Ros1Control_msgsJointTolerance(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros1Duration(r,allocator); if !ok { return v,false }
 v.field_goal_time_tolerance=b
 }
 return v,true
}
// @brief Encode one complete control_msgs/FollowJointTrajectoryGoal value.
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
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Control_msgsFollowJointTrajectoryGoal :: proc(v: ^Ros1Control_msgsFollowJointTrajectoryGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=7056}
 if !write_Ros1Control_msgsFollowJointTrajectoryGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=7056}
 if !write_Ros1Control_msgsFollowJointTrajectoryGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryGoal value.
// @details Require the complete 40..7056-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Control_msgsFollowJointTrajectoryGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Control_msgsFollowJointTrajectoryGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Control_msgsFollowJointTrajectoryGoal,u32) {
 if len(bytes)<40 || len(bytes)>7056 { return Ros1Control_msgsFollowJointTrajectoryGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Control_msgsFollowJointTrajectoryGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Control_msgsFollowJointTrajectoryGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 control_msgs/FollowJointTrajectoryResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104 bytes and
// is identified by UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult :: struct {
 // @brief control_msgs/FollowJointTrajectoryResult.error_code: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
 field_error_code: i32,
 // @brief control_msgs/FollowJointTrajectoryResult.error_string: string; each string is 0..4096 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
 field_error_string: string,
}
// @brief Maximum canonical extent of control_msgs/FollowJointTrajectoryResult in bytes.
// @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_Maximum_Wire_Bytes :: 4104
// @brief Canonical codec identity of control_msgs/FollowJointTrajectoryResult.
// @details Exact identity UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_Codec_Identity :: "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281"
// @brief Original ROS type name for control_msgs/FollowJointTrajectoryResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_Native_Type :: "control_msgs/FollowJointTrajectoryResult"
// @brief Selected original native identity for control_msgs/FollowJointTrajectoryResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_Native_Identity :: ""
// @brief control_msgs/FollowJointTrajectoryResult.SUCCESSFUL: original int32 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_SUCCESSFUL :: i32(0)
// @brief control_msgs/FollowJointTrajectoryResult.INVALID_GOAL: original int32 constant.
// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_INVALID_GOAL :: i32(-1)
// @brief control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS: original int32 constant.
// @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_INVALID_JOINTS :: i32(-2)
// @brief control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP: original int32 constant.
// @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_OLD_HEADER_TIMESTAMP :: i32(-3)
// @brief control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED: original int32 constant.
// @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_PATH_TOLERANCE_VIOLATED :: i32(-4)
// @brief control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED: original int32 constant.
// @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryResult_GOAL_TOLERANCE_VIOLATED :: i32(-5)
// @brief Construct the declared defaults of control_msgs/FollowJointTrajectoryResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Control_msgsFollowJointTrajectoryResult :: proc() -> Ros1Control_msgsFollowJointTrajectoryResult {
 v: Ros1Control_msgsFollowJointTrajectoryResult
 v.field_error_code = 0
 v.field_error_string = ""
 return v
}
// @brief Append every canonical field of control_msgs/FollowJointTrajectoryResult.
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
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Control_msgsFollowJointTrajectoryResult :: proc(v: ^Ros1Control_msgsFollowJointTrajectoryResult, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_error_code),4) { return false }
 if !put_string(w,v.field_error_string,4096) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryResult.
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
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Control_msgsFollowJointTrajectoryResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Control_msgsFollowJointTrajectoryResult,bool) {
 v:=init_Ros1Control_msgsFollowJointTrajectoryResult()
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
// @brief Encode one complete control_msgs/FollowJointTrajectoryResult value.
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
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Control_msgsFollowJointTrajectoryResult :: proc(v: ^Ros1Control_msgsFollowJointTrajectoryResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4104}
 if !write_Ros1Control_msgsFollowJointTrajectoryResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4104}
 if !write_Ros1Control_msgsFollowJointTrajectoryResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryResult value.
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
// @see Ros1Control_msgsFollowJointTrajectoryResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Control_msgsFollowJointTrajectoryResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Control_msgsFollowJointTrajectoryResult,u32) {
 if len(bytes)<8 || len(bytes)>4104 { return Ros1Control_msgsFollowJointTrajectoryResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Control_msgsFollowJointTrajectoryResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Control_msgsFollowJointTrajectoryResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 control_msgs/FollowJointTrajectoryFeedback value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 92..2356 bytes and
// is identified by UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryFeedback :: struct {
 // @brief control_msgs/FollowJointTrajectoryFeedback.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief control_msgs/FollowJointTrajectoryFeedback.joint_names: string; 0..6 elements; each string is 0..256 bytes;
 // strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_joint_names: []string,
 // @brief control_msgs/FollowJointTrajectoryFeedback.desired: trajectory_msgs/JointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_desired: Ros1Trajectory_msgsJointTrajectoryPoint,
 // @brief control_msgs/FollowJointTrajectoryFeedback.actual: trajectory_msgs/JointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_actual: Ros1Trajectory_msgsJointTrajectoryPoint,
 // @brief control_msgs/FollowJointTrajectoryFeedback.error: trajectory_msgs/JointTrajectoryPoint.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_error: Ros1Trajectory_msgsJointTrajectoryPoint,
}
// @brief Maximum canonical extent of control_msgs/FollowJointTrajectoryFeedback in bytes.
// @details The inclusive bound is 2356 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryFeedback_Maximum_Wire_Bytes :: 2356
// @brief Canonical codec identity of control_msgs/FollowJointTrajectoryFeedback.
// @details Exact identity UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryFeedback_Codec_Identity :: "UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913"
// @brief Original ROS type name for control_msgs/FollowJointTrajectoryFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryFeedback_Native_Type :: "control_msgs/FollowJointTrajectoryFeedback"
// @brief Selected original native identity for control_msgs/FollowJointTrajectoryFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Control_msgsFollowJointTrajectoryFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of control_msgs/FollowJointTrajectoryFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc() -> Ros1Control_msgsFollowJointTrajectoryFeedback {
 v: Ros1Control_msgsFollowJointTrajectoryFeedback
 v.field_header = Ros1Std_msgsHeader{}
 v.field_joint_names = nil
 v.field_desired = Ros1Trajectory_msgsJointTrajectoryPoint{}
 v.field_actual = Ros1Trajectory_msgsJointTrajectoryPoint{}
 v.field_error = Ros1Trajectory_msgsJointTrajectoryPoint{}
 return v
}
// @brief Append every canonical field of control_msgs/FollowJointTrajectoryFeedback.
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
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc(v: ^Ros1Control_msgsFollowJointTrajectoryFeedback, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if len(v.field_joint_names)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_names)),4) { return false }
 for e in v.field_joint_names {
 if !put_string(w,e,256) { return false }
 }
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(&v.field_desired,w) { return false }
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(&v.field_actual,w) { return false }
 if !write_Ros1Trajectory_msgsJointTrajectoryPoint(&v.field_error,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of control_msgs/FollowJointTrajectoryFeedback.
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
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Control_msgsFollowJointTrajectoryFeedback,bool) {
 v:=init_Ros1Control_msgsFollowJointTrajectoryFeedback()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_joint_names=make([]string,int(n),allocator)
 }
 for &e in v.field_joint_names {
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_desired=b
 }
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_actual=b
 }
 {
 b,ok:=read_Ros1Trajectory_msgsJointTrajectoryPoint(r,allocator); if !ok { return v,false }
 v.field_error=b
 }
 return v,true
}
// @brief Encode one complete control_msgs/FollowJointTrajectoryFeedback value.
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
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc(v: ^Ros1Control_msgsFollowJointTrajectoryFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2356}
 if !write_Ros1Control_msgsFollowJointTrajectoryFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2356}
 if !write_Ros1Control_msgsFollowJointTrajectoryFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryFeedback value.
// @details Require the complete 92..2356-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Control_msgsFollowJointTrajectoryFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Control_msgsFollowJointTrajectoryFeedback,u32) {
 if len(bytes)<92 || len(bytes)>2356 { return Ros1Control_msgsFollowJointTrajectoryFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Control_msgsFollowJointTrajectoryFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Control_msgsFollowJointTrajectoryFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Point value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint :: struct {
 // @brief geometry_msgs/Point.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Point.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Point.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Point.
// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Codec_Identity :: "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
// @brief Original ROS type name for geometry_msgs/Point.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Native_Type :: "geometry_msgs/Point"
// @brief Selected original native identity for geometry_msgs/Point.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoint_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Point.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsPoint :: proc() -> Ros1Geometry_msgsPoint {
 v: Ros1Geometry_msgsPoint
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/Point.
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
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPoint :: proc(v: ^Ros1Geometry_msgsPoint, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Point.
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
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsPoint :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoint,bool) {
 v:=init_Ros1Geometry_msgsPoint()
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
// @brief Encode one complete geometry_msgs/Point value.
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
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsPoint :: proc(v: ^Ros1Geometry_msgsPoint, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Geometry_msgsPoint(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Geometry_msgsPoint(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Point value.
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
// @see Ros1Geometry_msgsPoint; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsPoint :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoint,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Geometry_msgsPoint{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPoint(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPoint{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Quaternion value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
// is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion :: struct {
 // @brief geometry_msgs/Quaternion.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Quaternion.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Quaternion.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
 // @brief geometry_msgs/Quaternion.w: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
 field_w: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of geometry_msgs/Quaternion.
// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Codec_Identity :: "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
// @brief Original ROS type name for geometry_msgs/Quaternion.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Native_Type :: "geometry_msgs/Quaternion"
// @brief Selected original native identity for geometry_msgs/Quaternion.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsQuaternion_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Quaternion.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsQuaternion :: proc() -> Ros1Geometry_msgsQuaternion {
 v: Ros1Geometry_msgsQuaternion
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 v.field_w = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/Quaternion.
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
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsQuaternion :: proc(v: ^Ros1Geometry_msgsQuaternion, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 if !put_float64(w,v.field_w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
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
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsQuaternion :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsQuaternion,bool) {
 v:=init_Ros1Geometry_msgsQuaternion()
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
// @brief Encode one complete geometry_msgs/Quaternion value.
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
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsQuaternion :: proc(v: ^Ros1Geometry_msgsQuaternion, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros1Geometry_msgsQuaternion(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros1Geometry_msgsQuaternion(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Quaternion value.
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
// @see Ros1Geometry_msgsQuaternion; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsQuaternion :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsQuaternion,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros1Geometry_msgsQuaternion{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsQuaternion(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsQuaternion{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Pose value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and
// is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose :: struct {
 // @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
 field_position: Ros1Geometry_msgsPoint,
 // @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
 field_orientation: Ros1Geometry_msgsQuaternion,
}
// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Maximum_Wire_Bytes :: 56
// @brief Canonical codec identity of geometry_msgs/Pose.
// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Codec_Identity :: "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
// @brief Original ROS type name for geometry_msgs/Pose.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Native_Type :: "geometry_msgs/Pose"
// @brief Selected original native identity for geometry_msgs/Pose.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPose_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Pose.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsPose :: proc() -> Ros1Geometry_msgsPose {
 v: Ros1Geometry_msgsPose
 v.field_position = Ros1Geometry_msgsPoint{}
 v.field_orientation = Ros1Geometry_msgsQuaternion{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Pose.
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
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPose :: proc(v: ^Ros1Geometry_msgsPose, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPoint(&v.field_position,w) { return false }
 if !write_Ros1Geometry_msgsQuaternion(&v.field_orientation,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Pose.
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
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsPose :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPose,bool) {
 v:=init_Ros1Geometry_msgsPose()
 {
 b,ok:=read_Ros1Geometry_msgsPoint(r,allocator); if !ok { return v,false }
 v.field_position=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsQuaternion(r,allocator); if !ok { return v,false }
 v.field_orientation=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Pose value.
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
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsPose :: proc(v: ^Ros1Geometry_msgsPose, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=56}
 if !write_Ros1Geometry_msgsPose(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=56}
 if !write_Ros1Geometry_msgsPose(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Pose value.
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
// @see Ros1Geometry_msgsPose; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsPose :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPose,u32) {
 if len(bytes)<56 || len(bytes)>56 { return Ros1Geometry_msgsPose{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPose(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPose{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/PoseStamped value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 72..200 bytes and
// is identified by UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoseStamped :: struct {
 // @brief geometry_msgs/PoseStamped.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief geometry_msgs/PoseStamped.pose: geometry_msgs/Pose.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
 field_pose: Ros1Geometry_msgsPose,
}
// @brief Maximum canonical extent of geometry_msgs/PoseStamped in bytes.
// @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoseStamped_Maximum_Wire_Bytes :: 200
// @brief Canonical codec identity of geometry_msgs/PoseStamped.
// @details Exact identity UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoseStamped_Codec_Identity :: "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95"
// @brief Original ROS type name for geometry_msgs/PoseStamped.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoseStamped_Native_Type :: "geometry_msgs/PoseStamped"
// @brief Selected original native identity for geometry_msgs/PoseStamped.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsPoseStamped_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/PoseStamped.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsPoseStamped :: proc() -> Ros1Geometry_msgsPoseStamped {
 v: Ros1Geometry_msgsPoseStamped
 v.field_header = Ros1Std_msgsHeader{}
 v.field_pose = Ros1Geometry_msgsPose{}
 return v
}
// @brief Append every canonical field of geometry_msgs/PoseStamped.
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
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsPoseStamped :: proc(v: ^Ros1Geometry_msgsPoseStamped, w: ^Writer) -> bool {
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if !write_Ros1Geometry_msgsPose(&v.field_pose,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/PoseStamped.
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
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsPoseStamped :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoseStamped,bool) {
 v:=init_Ros1Geometry_msgsPoseStamped()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsPose(r,allocator); if !ok { return v,false }
 v.field_pose=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/PoseStamped value.
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
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsPoseStamped :: proc(v: ^Ros1Geometry_msgsPoseStamped, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=200}
 if !write_Ros1Geometry_msgsPoseStamped(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=200}
 if !write_Ros1Geometry_msgsPoseStamped(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/PoseStamped value.
// @details Require the complete 72..200-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsPoseStamped :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsPoseStamped,u32) {
 if len(bytes)<72 || len(bytes)>200 { return Ros1Geometry_msgsPoseStamped{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsPoseStamped(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsPoseStamped{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Vector3 value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and
// is identified by UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3 :: struct {
 // @brief geometry_msgs/Vector3.x: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
 field_x: f64,
 // @brief geometry_msgs/Vector3.y: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
 field_y: f64,
 // @brief geometry_msgs/Vector3.z: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
 field_z: f64,
}
// @brief Maximum canonical extent of geometry_msgs/Vector3 in bytes.
// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Maximum_Wire_Bytes :: 24
// @brief Canonical codec identity of geometry_msgs/Vector3.
// @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Codec_Identity :: "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
// @brief Original ROS type name for geometry_msgs/Vector3.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Native_Type :: "geometry_msgs/Vector3"
// @brief Selected original native identity for geometry_msgs/Vector3.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsVector3_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Vector3.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsVector3 :: proc() -> Ros1Geometry_msgsVector3 {
 v: Ros1Geometry_msgsVector3
 v.field_x = 0
 v.field_y = 0
 v.field_z = 0
 return v
}
// @brief Append every canonical field of geometry_msgs/Vector3.
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
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsVector3 :: proc(v: ^Ros1Geometry_msgsVector3, w: ^Writer) -> bool {
 if !put_float64(w,v.field_x) { return false }
 if !put_float64(w,v.field_y) { return false }
 if !put_float64(w,v.field_z) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Vector3.
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
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsVector3 :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsVector3,bool) {
 v:=init_Ros1Geometry_msgsVector3()
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
// @brief Encode one complete geometry_msgs/Vector3 value.
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
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsVector3 :: proc(v: ^Ros1Geometry_msgsVector3, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=24}
 if !write_Ros1Geometry_msgsVector3(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=24}
 if !write_Ros1Geometry_msgsVector3(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Vector3 value.
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
// @see Ros1Geometry_msgsVector3; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsVector3 :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsVector3,u32) {
 if len(bytes)<24 || len(bytes)>24 { return Ros1Geometry_msgsVector3{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsVector3(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsVector3{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Twist value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsTwist :: struct {
 // @brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
 field_linear: Ros1Geometry_msgsVector3,
 // @brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
 field_angular: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of geometry_msgs/Twist in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsTwist_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/Twist.
// @details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsTwist_Codec_Identity :: "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
// @brief Original ROS type name for geometry_msgs/Twist.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsTwist_Native_Type :: "geometry_msgs/Twist"
// @brief Selected original native identity for geometry_msgs/Twist.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsTwist_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Twist.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsTwist :: proc() -> Ros1Geometry_msgsTwist {
 v: Ros1Geometry_msgsTwist
 v.field_linear = Ros1Geometry_msgsVector3{}
 v.field_angular = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Twist.
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
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsTwist :: proc(v: ^Ros1Geometry_msgsTwist, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_linear,w) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_angular,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Twist.
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
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsTwist :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwist,bool) {
 v:=init_Ros1Geometry_msgsTwist()
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_linear=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_angular=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Twist value.
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
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsTwist :: proc(v: ^Ros1Geometry_msgsTwist, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Geometry_msgsTwist(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Geometry_msgsTwist(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Twist value.
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
// @see Ros1Geometry_msgsTwist; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsTwist :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsTwist,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Geometry_msgsTwist{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsTwist(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsTwist{},reader.code }
 return value,0
}
// @brief Complete ROS 1 geometry_msgs/Wrench value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
// is identified by UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench :: struct {
 // @brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
 field_force: Ros1Geometry_msgsVector3,
 // @brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
 field_torque: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of geometry_msgs/Wrench in bytes.
// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Maximum_Wire_Bytes :: 48
// @brief Canonical codec identity of geometry_msgs/Wrench.
// @details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Codec_Identity :: "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
// @brief Original ROS type name for geometry_msgs/Wrench.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Native_Type :: "geometry_msgs/Wrench"
// @brief Selected original native identity for geometry_msgs/Wrench.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
Ros1Geometry_msgsWrench_Native_Identity :: ""
// @brief Construct the declared defaults of geometry_msgs/Wrench.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Geometry_msgsWrench :: proc() -> Ros1Geometry_msgsWrench {
 v: Ros1Geometry_msgsWrench
 v.field_force = Ros1Geometry_msgsVector3{}
 v.field_torque = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of geometry_msgs/Wrench.
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
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Geometry_msgsWrench :: proc(v: ^Ros1Geometry_msgsWrench, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsVector3(&v.field_force,w) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_torque,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of geometry_msgs/Wrench.
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
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Geometry_msgsWrench :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Geometry_msgsWrench,bool) {
 v:=init_Ros1Geometry_msgsWrench()
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_force=b
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_torque=b
 }
 return v,true
}
// @brief Encode one complete geometry_msgs/Wrench value.
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
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Geometry_msgsWrench :: proc(v: ^Ros1Geometry_msgsWrench, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=48}
 if !write_Ros1Geometry_msgsWrench(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=48}
 if !write_Ros1Geometry_msgsWrench(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete geometry_msgs/Wrench value.
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
// @see Ros1Geometry_msgsWrench; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Geometry_msgsWrench :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Geometry_msgsWrench,u32) {
 if len(bytes)<48 || len(bytes)>48 { return Ros1Geometry_msgsWrench{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Geometry_msgsWrench(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Geometry_msgsWrench{},reader.code }
 return value,0
}
// @brief Complete ROS 1 sensor_msgs/JointState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 32..1864 bytes and
// is identified by UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Sensor_msgsJointState :: struct {
 // @brief sensor_msgs/JointState.header: std_msgs/Header.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros1Std_msgsHeader,
 // @brief sensor_msgs/JointState.name: string; 0..6 elements; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
 field_name: []string,
 // @brief sensor_msgs/JointState.position: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
 field_position: []f64,
 // @brief sensor_msgs/JointState.velocity: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: []f64,
 // @brief sensor_msgs/JointState.effort: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
 field_effort: []f64,
}
// @brief Maximum canonical extent of sensor_msgs/JointState in bytes.
// @details The inclusive bound is 1864 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
Ros1Sensor_msgsJointState_Maximum_Wire_Bytes :: 1864
// @brief Canonical codec identity of sensor_msgs/JointState.
// @details Exact identity UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
Ros1Sensor_msgsJointState_Codec_Identity :: "UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f"
// @brief Original ROS type name for sensor_msgs/JointState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
Ros1Sensor_msgsJointState_Native_Type :: "sensor_msgs/JointState"
// @brief Selected original native identity for sensor_msgs/JointState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
Ros1Sensor_msgsJointState_Native_Identity :: ""
// @brief Construct the declared defaults of sensor_msgs/JointState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Sensor_msgsJointState :: proc() -> Ros1Sensor_msgsJointState {
 v: Ros1Sensor_msgsJointState
 v.field_header = Ros1Std_msgsHeader{}
 v.field_name = nil
 v.field_position = nil
 v.field_velocity = nil
 v.field_effort = nil
 return v
}
// @brief Append every canonical field of sensor_msgs/JointState.
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
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Sensor_msgsJointState :: proc(v: ^Ros1Sensor_msgsJointState, w: ^Writer) -> bool {
 if len(v.field_name) != 0 && len(v.field_position) != 0 && len(v.field_name) != len(v.field_position) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_velocity) != 0 && len(v.field_name) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_name) != 0 && len(v.field_effort) != 0 && len(v.field_name) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_velocity) != 0 && len(v.field_position) != len(v.field_velocity) { w.code=22; return false }
 if len(v.field_position) != 0 && len(v.field_effort) != 0 && len(v.field_position) != len(v.field_effort) { w.code=22; return false }
 if len(v.field_velocity) != 0 && len(v.field_effort) != 0 && len(v.field_velocity) != len(v.field_effort) { w.code=22; return false }
 if !write_Ros1Std_msgsHeader(&v.field_header,w) { return false }
 if len(v.field_name)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_name)),4) { return false }
 for e in v.field_name {
 if !put_string(w,e,256) { return false }
 }
 if len(v.field_position)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_position)),4) { return false }
 for e in v.field_position {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_velocity)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_velocity)),4) { return false }
 for e in v.field_velocity {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_effort)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_effort)),4) { return false }
 for e in v.field_effort {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of sensor_msgs/JointState.
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
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Sensor_msgsJointState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Sensor_msgsJointState,bool) {
 v:=init_Ros1Sensor_msgsJointState()
 {
 b,ok:=read_Ros1Std_msgsHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
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
 if n>6 { r.code=22; return v,false }
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
 if n>6 { r.code=22; return v,false }
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
 if n>6 { r.code=22; return v,false }
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
// @brief Encode one complete sensor_msgs/JointState value.
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
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Sensor_msgsJointState :: proc(v: ^Ros1Sensor_msgsJointState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1864}
 if !write_Ros1Sensor_msgsJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1864}
 if !write_Ros1Sensor_msgsJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete sensor_msgs/JointState value.
// @details Require the complete 32..1864-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Sensor_msgsJointState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Sensor_msgsJointState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Sensor_msgsJointState,u32) {
 if len(bytes)<32 || len(bytes)>1864 { return Ros1Sensor_msgsJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Sensor_msgsJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Sensor_msgsJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/AddToLogRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
// is identified by UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogRequest :: struct {
 // @brief ur_dashboard_msgs/AddToLogRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/AddToLogRequest in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogRequest_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of ur_dashboard_msgs/AddToLogRequest.
// @details Exact identity UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogRequest_Codec_Identity :: "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4"
// @brief Original ROS type name for ur_dashboard_msgs/AddToLogRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogRequest_Native_Type :: "ur_dashboard_msgs/AddToLogRequest"
// @brief Selected original native identity for ur_dashboard_msgs/AddToLogRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/AddToLogRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsAddToLogRequest :: proc() -> Ros1Ur_dashboard_msgsAddToLogRequest {
 v: Ros1Ur_dashboard_msgsAddToLogRequest
 v.field_message = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/AddToLogRequest.
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
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsAddToLogRequest :: proc(v: ^Ros1Ur_dashboard_msgsAddToLogRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogRequest.
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
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsAddToLogRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsAddToLogRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsAddToLogRequest()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/AddToLogRequest value.
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
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsAddToLogRequest :: proc(v: ^Ros1Ur_dashboard_msgsAddToLogRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Ur_dashboard_msgsAddToLogRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Ur_dashboard_msgsAddToLogRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/AddToLogRequest value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsAddToLogRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsAddToLogRequest,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Ur_dashboard_msgsAddToLogRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsAddToLogRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsAddToLogRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/AddToLogResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogResponse :: struct {
 // @brief ur_dashboard_msgs/AddToLogResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/AddToLogResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/AddToLogResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of ur_dashboard_msgs/AddToLogResponse.
// @details Exact identity UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogResponse_Codec_Identity :: "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c"
// @brief Original ROS type name for ur_dashboard_msgs/AddToLogResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogResponse_Native_Type :: "ur_dashboard_msgs/AddToLogResponse"
// @brief Selected original native identity for ur_dashboard_msgs/AddToLogResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsAddToLogResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/AddToLogResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsAddToLogResponse :: proc() -> Ros1Ur_dashboard_msgsAddToLogResponse {
 v: Ros1Ur_dashboard_msgsAddToLogResponse
 v.field_answer = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/AddToLogResponse.
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
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsAddToLogResponse :: proc(v: ^Ros1Ur_dashboard_msgsAddToLogResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogResponse.
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
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsAddToLogResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsAddToLogResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsAddToLogResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/AddToLogResponse value.
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
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsAddToLogResponse :: proc(v: ^Ros1Ur_dashboard_msgsAddToLogResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Ur_dashboard_msgsAddToLogResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Ur_dashboard_msgsAddToLogResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/AddToLogResponse value.
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
// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsAddToLogResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsAddToLogResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Ur_dashboard_msgsAddToLogResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsAddToLogResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsAddToLogResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetLoadedProgramRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramRequest.
// @details Exact identity UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramRequest_Codec_Identity :: "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a"
// @brief Original ROS type name for ur_dashboard_msgs/GetLoadedProgramRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramRequest_Native_Type :: "ur_dashboard_msgs/GetLoadedProgramRequest"
// @brief Selected original native identity for ur_dashboard_msgs/GetLoadedProgramRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetLoadedProgramRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetLoadedProgramRequest :: proc() -> Ros1Ur_dashboard_msgsGetLoadedProgramRequest {
 v: Ros1Ur_dashboard_msgsGetLoadedProgramRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramRequest.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetLoadedProgramRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetLoadedProgramRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramRequest.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetLoadedProgramRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetLoadedProgramRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetLoadedProgramRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetLoadedProgramRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetLoadedProgramRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetLoadedProgramRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetLoadedProgramRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsGetLoadedProgramRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetLoadedProgramRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetLoadedProgramRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and
// is identified by UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramResponse :: struct {
 // @brief ur_dashboard_msgs/GetLoadedProgramResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/GetLoadedProgramResponse.program_name: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
 field_program_name: string,
 // @brief ur_dashboard_msgs/GetLoadedProgramResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetLoadedProgramResponse in bytes.
// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramResponse_Maximum_Wire_Bytes :: 521
// @brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramResponse.
// @details Exact identity UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramResponse_Codec_Identity :: "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a"
// @brief Original ROS type name for ur_dashboard_msgs/GetLoadedProgramResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramResponse_Native_Type :: "ur_dashboard_msgs/GetLoadedProgramResponse"
// @brief Selected original native identity for ur_dashboard_msgs/GetLoadedProgramResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetLoadedProgramResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetLoadedProgramResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetLoadedProgramResponse :: proc() -> Ros1Ur_dashboard_msgsGetLoadedProgramResponse {
 v: Ros1Ur_dashboard_msgsGetLoadedProgramResponse
 v.field_answer = ""
 v.field_program_name = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramResponse.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetLoadedProgramResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetLoadedProgramResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_string(w,v.field_program_name,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramResponse.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetLoadedProgramResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetLoadedProgramResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetLoadedProgramResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_program_name=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetLoadedProgramResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetLoadedProgramResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=521}
 if !write_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=521}
 if !write_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
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
// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetLoadedProgramResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetLoadedProgramResponse,u32) {
 if len(bytes)<9 || len(bytes)>521 { return Ros1Ur_dashboard_msgsGetLoadedProgramResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetLoadedProgramResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetLoadedProgramResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetProgramStateRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateRequest.
// @details Exact identity UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateRequest_Codec_Identity :: "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2"
// @brief Original ROS type name for ur_dashboard_msgs/GetProgramStateRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateRequest_Native_Type :: "ur_dashboard_msgs/GetProgramStateRequest"
// @brief Selected original native identity for ur_dashboard_msgs/GetProgramStateRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetProgramStateRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetProgramStateRequest :: proc() -> Ros1Ur_dashboard_msgsGetProgramStateRequest {
 v: Ros1Ur_dashboard_msgsGetProgramStateRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetProgramStateRequest.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetProgramStateRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetProgramStateRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateRequest.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetProgramStateRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetProgramStateRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetProgramStateRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetProgramStateRequest value.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetProgramStateRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetProgramStateRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetProgramStateRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetProgramStateRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateRequest value.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetProgramStateRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetProgramStateRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsGetProgramStateRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetProgramStateRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetProgramStateRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/ProgramState value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
// is identified by UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState :: struct {
 // @brief ur_dashboard_msgs/ProgramState.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
 field_state: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/ProgramState in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of ur_dashboard_msgs/ProgramState.
// @details Exact identity UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_Codec_Identity :: "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e"
// @brief Original ROS type name for ur_dashboard_msgs/ProgramState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_Native_Type :: "ur_dashboard_msgs/ProgramState"
// @brief Selected original native identity for ur_dashboard_msgs/ProgramState.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_Native_Identity :: ""
// @brief ur_dashboard_msgs/ProgramState.STOPPED: original string constant.
// @details Exact admitted value STOPPED. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_STOPPED :: string("\x53\x54\x4f\x50\x50\x45\x44")
// @brief ur_dashboard_msgs/ProgramState.PLAYING: original string constant.
// @details Exact admitted value PLAYING. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_PLAYING :: string("\x50\x4c\x41\x59\x49\x4e\x47")
// @brief ur_dashboard_msgs/ProgramState.PAUSED: original string constant.
// @details Exact admitted value PAUSED. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsProgramState_PAUSED :: string("\x50\x41\x55\x53\x45\x44")
// @brief Construct the declared defaults of ur_dashboard_msgs/ProgramState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsProgramState :: proc() -> Ros1Ur_dashboard_msgsProgramState {
 v: Ros1Ur_dashboard_msgsProgramState
 v.field_state = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/ProgramState.
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
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsProgramState :: proc(v: ^Ros1Ur_dashboard_msgsProgramState, w: ^Writer) -> bool {
 if !put_string(w,v.field_state,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/ProgramState.
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
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsProgramState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsProgramState,bool) {
 v:=init_Ros1Ur_dashboard_msgsProgramState()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_state=b
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/ProgramState value.
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
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsProgramState :: proc(v: ^Ros1Ur_dashboard_msgsProgramState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Ur_dashboard_msgsProgramState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Ur_dashboard_msgsProgramState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/ProgramState value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsProgramState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsProgramState,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Ur_dashboard_msgsProgramState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsProgramState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsProgramState{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 13..781 bytes and
// is identified by UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateResponse :: struct {
 // @brief ur_dashboard_msgs/GetProgramStateResponse.state: ur_dashboard_msgs/ProgramState.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_state: Ros1Ur_dashboard_msgsProgramState,
 // @brief ur_dashboard_msgs/GetProgramStateResponse.program_name: string; each string is 0..256 bytes; strict UTF-8
 // with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_program_name: string,
 // @brief ur_dashboard_msgs/GetProgramStateResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/GetProgramStateResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetProgramStateResponse in bytes.
// @details The inclusive bound is 781 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateResponse_Maximum_Wire_Bytes :: 781
// @brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateResponse.
// @details Exact identity UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateResponse_Codec_Identity :: "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed"
// @brief Original ROS type name for ur_dashboard_msgs/GetProgramStateResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateResponse_Native_Type :: "ur_dashboard_msgs/GetProgramStateResponse"
// @brief Selected original native identity for ur_dashboard_msgs/GetProgramStateResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetProgramStateResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetProgramStateResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetProgramStateResponse :: proc() -> Ros1Ur_dashboard_msgsGetProgramStateResponse {
 v: Ros1Ur_dashboard_msgsGetProgramStateResponse
 v.field_state = Ros1Ur_dashboard_msgsProgramState{}
 v.field_program_name = ""
 v.field_answer = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetProgramStateResponse.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetProgramStateResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetProgramStateResponse, w: ^Writer) -> bool {
 if !write_Ros1Ur_dashboard_msgsProgramState(&v.field_state,w) { return false }
 if !put_string(w,v.field_program_name,256) { return false }
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateResponse.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetProgramStateResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetProgramStateResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetProgramStateResponse()
 {
 b,ok:=read_Ros1Ur_dashboard_msgsProgramState(r,allocator); if !ok { return v,false }
 v.field_state=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_program_name=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetProgramStateResponse value.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetProgramStateResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetProgramStateResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=781}
 if !write_Ros1Ur_dashboard_msgsGetProgramStateResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=781}
 if !write_Ros1Ur_dashboard_msgsGetProgramStateResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateResponse value.
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
// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetProgramStateResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetProgramStateResponse,u32) {
 if len(bytes)<13 || len(bytes)>781 { return Ros1Ur_dashboard_msgsGetProgramStateResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetProgramStateResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetProgramStateResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetRobotModeRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeRequest.
// @details Exact identity UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeRequest_Codec_Identity :: "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609"
// @brief Original ROS type name for ur_dashboard_msgs/GetRobotModeRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeRequest_Native_Type :: "ur_dashboard_msgs/GetRobotModeRequest"
// @brief Selected original native identity for ur_dashboard_msgs/GetRobotModeRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetRobotModeRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetRobotModeRequest :: proc() -> Ros1Ur_dashboard_msgsGetRobotModeRequest {
 v: Ros1Ur_dashboard_msgsGetRobotModeRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetRobotModeRequest.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetRobotModeRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetRobotModeRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeRequest.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetRobotModeRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetRobotModeRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetRobotModeRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetRobotModeRequest value.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetRobotModeRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetRobotModeRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetRobotModeRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetRobotModeRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeRequest value.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetRobotModeRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetRobotModeRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsGetRobotModeRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetRobotModeRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetRobotModeRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/RobotMode value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode :: struct {
 // @brief ur_dashboard_msgs/RobotMode.mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
 field_mode: i8,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/RobotMode in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_dashboard_msgs/RobotMode.
// @details Exact identity UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_Codec_Identity :: "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066"
// @brief Original ROS type name for ur_dashboard_msgs/RobotMode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_Native_Type :: "ur_dashboard_msgs/RobotMode"
// @brief Selected original native identity for ur_dashboard_msgs/RobotMode.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_Native_Identity :: ""
// @brief ur_dashboard_msgs/RobotMode.NO_CONTROLLER: original int8 constant.
// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_NO_CONTROLLER :: i8(-1)
// @brief ur_dashboard_msgs/RobotMode.DISCONNECTED: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_DISCONNECTED :: i8(0)
// @brief ur_dashboard_msgs/RobotMode.CONFIRM_SAFETY: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_CONFIRM_SAFETY :: i8(1)
// @brief ur_dashboard_msgs/RobotMode.BOOTING: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_BOOTING :: i8(2)
// @brief ur_dashboard_msgs/RobotMode.POWER_OFF: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_POWER_OFF :: i8(3)
// @brief ur_dashboard_msgs/RobotMode.POWER_ON: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_POWER_ON :: i8(4)
// @brief ur_dashboard_msgs/RobotMode.IDLE: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_IDLE :: i8(5)
// @brief ur_dashboard_msgs/RobotMode.BACKDRIVE: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_BACKDRIVE :: i8(6)
// @brief ur_dashboard_msgs/RobotMode.RUNNING: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_RUNNING :: i8(7)
// @brief ur_dashboard_msgs/RobotMode.UPDATING_FIRMWARE: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRobotMode_UPDATING_FIRMWARE :: i8(8)
// @brief Construct the declared defaults of ur_dashboard_msgs/RobotMode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsRobotMode :: proc() -> Ros1Ur_dashboard_msgsRobotMode {
 v: Ros1Ur_dashboard_msgsRobotMode
 v.field_mode = 0
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/RobotMode.
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
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsRobotMode :: proc(v: ^Ros1Ur_dashboard_msgsRobotMode, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/RobotMode.
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
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsRobotMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsRobotMode,bool) {
 v:=init_Ros1Ur_dashboard_msgsRobotMode()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=i8(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/RobotMode value.
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
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsRobotMode :: proc(v: ^Ros1Ur_dashboard_msgsRobotMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_dashboard_msgsRobotMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_dashboard_msgsRobotMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/RobotMode value.
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
// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsRobotMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsRobotMode,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_dashboard_msgsRobotMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsRobotMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsRobotMode{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
// is identified by UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeResponse :: struct {
 // @brief ur_dashboard_msgs/GetRobotModeResponse.robot_mode: ur_dashboard_msgs/RobotMode.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_robot_mode: Ros1Ur_dashboard_msgsRobotMode,
 // @brief ur_dashboard_msgs/GetRobotModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/GetRobotModeResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetRobotModeResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeResponse.
// @details Exact identity UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeResponse_Codec_Identity :: "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f"
// @brief Original ROS type name for ur_dashboard_msgs/GetRobotModeResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeResponse_Native_Type :: "ur_dashboard_msgs/GetRobotModeResponse"
// @brief Selected original native identity for ur_dashboard_msgs/GetRobotModeResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetRobotModeResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetRobotModeResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetRobotModeResponse :: proc() -> Ros1Ur_dashboard_msgsGetRobotModeResponse {
 v: Ros1Ur_dashboard_msgsGetRobotModeResponse
 v.field_robot_mode = Ros1Ur_dashboard_msgsRobotMode{}
 v.field_answer = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetRobotModeResponse.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetRobotModeResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetRobotModeResponse, w: ^Writer) -> bool {
 if !write_Ros1Ur_dashboard_msgsRobotMode(&v.field_robot_mode,w) { return false }
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeResponse.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetRobotModeResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetRobotModeResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetRobotModeResponse()
 {
 b,ok:=read_Ros1Ur_dashboard_msgsRobotMode(r,allocator); if !ok { return v,false }
 v.field_robot_mode=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetRobotModeResponse value.
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
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetRobotModeResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetRobotModeResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Ur_dashboard_msgsGetRobotModeResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Ur_dashboard_msgsGetRobotModeResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetRobotModeResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetRobotModeResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Ur_dashboard_msgsGetRobotModeResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetRobotModeResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetRobotModeResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetSafetyModeRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeRequest.
// @details Exact identity UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeRequest_Codec_Identity :: "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b"
// @brief Original ROS type name for ur_dashboard_msgs/GetSafetyModeRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeRequest_Native_Type :: "ur_dashboard_msgs/GetSafetyModeRequest"
// @brief Selected original native identity for ur_dashboard_msgs/GetSafetyModeRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetSafetyModeRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetSafetyModeRequest :: proc() -> Ros1Ur_dashboard_msgsGetSafetyModeRequest {
 v: Ros1Ur_dashboard_msgsGetSafetyModeRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeRequest.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetSafetyModeRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetSafetyModeRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeRequest.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetSafetyModeRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetSafetyModeRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetSafetyModeRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetSafetyModeRequest value.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetSafetyModeRequest :: proc(v: ^Ros1Ur_dashboard_msgsGetSafetyModeRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetSafetyModeRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsGetSafetyModeRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeRequest value.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetSafetyModeRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetSafetyModeRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsGetSafetyModeRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetSafetyModeRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetSafetyModeRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/SafetyMode value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode :: struct {
 // @brief ur_dashboard_msgs/SafetyMode.mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
 field_mode: u8,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/SafetyMode in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_dashboard_msgs/SafetyMode.
// @details Exact identity UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_Codec_Identity :: "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7"
// @brief Original ROS type name for ur_dashboard_msgs/SafetyMode.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_Native_Type :: "ur_dashboard_msgs/SafetyMode"
// @brief Selected original native identity for ur_dashboard_msgs/SafetyMode.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_Native_Identity :: ""
// @brief ur_dashboard_msgs/SafetyMode.NORMAL: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_NORMAL :: u8(1)
// @brief ur_dashboard_msgs/SafetyMode.REDUCED: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_REDUCED :: u8(2)
// @brief ur_dashboard_msgs/SafetyMode.PROTECTIVE_STOP: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_PROTECTIVE_STOP :: u8(3)
// @brief ur_dashboard_msgs/SafetyMode.RECOVERY: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_RECOVERY :: u8(4)
// @brief ur_dashboard_msgs/SafetyMode.SAFEGUARD_STOP: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_SAFEGUARD_STOP :: u8(5)
// @brief ur_dashboard_msgs/SafetyMode.SYSTEM_EMERGENCY_STOP: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_SYSTEM_EMERGENCY_STOP :: u8(6)
// @brief ur_dashboard_msgs/SafetyMode.ROBOT_EMERGENCY_STOP: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_ROBOT_EMERGENCY_STOP :: u8(7)
// @brief ur_dashboard_msgs/SafetyMode.VIOLATION: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_VIOLATION :: u8(8)
// @brief ur_dashboard_msgs/SafetyMode.FAULT: original uint8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_FAULT :: u8(9)
// @brief ur_dashboard_msgs/SafetyMode.VALIDATE_JOINT_ID: original uint8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_VALIDATE_JOINT_ID :: u8(10)
// @brief ur_dashboard_msgs/SafetyMode.UNDEFINED_SAFETY_MODE: original uint8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_UNDEFINED_SAFETY_MODE :: u8(11)
// @brief ur_dashboard_msgs/SafetyMode.AUTOMATIC_MODE_SAFEGUARD_STOP: original uint8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_AUTOMATIC_MODE_SAFEGUARD_STOP :: u8(12)
// @brief ur_dashboard_msgs/SafetyMode.SYSTEM_THREE_POSITION_ENABLING_STOP: original uint8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSafetyMode_SYSTEM_THREE_POSITION_ENABLING_STOP :: u8(13)
// @brief Construct the declared defaults of ur_dashboard_msgs/SafetyMode.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsSafetyMode :: proc() -> Ros1Ur_dashboard_msgsSafetyMode {
 v: Ros1Ur_dashboard_msgsSafetyMode
 v.field_mode = 0
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/SafetyMode.
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
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsSafetyMode :: proc(v: ^Ros1Ur_dashboard_msgsSafetyMode, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/SafetyMode.
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
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsSafetyMode :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSafetyMode,bool) {
 v:=init_Ros1Ur_dashboard_msgsSafetyMode()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=u8(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/SafetyMode value.
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
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsSafetyMode :: proc(v: ^Ros1Ur_dashboard_msgsSafetyMode, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_dashboard_msgsSafetyMode(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_dashboard_msgsSafetyMode(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/SafetyMode value.
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
// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsSafetyMode :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSafetyMode,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_dashboard_msgsSafetyMode{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsSafetyMode(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsSafetyMode{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
// is identified by UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeResponse :: struct {
 // @brief ur_dashboard_msgs/GetSafetyModeResponse.safety_mode: ur_dashboard_msgs/SafetyMode.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_safety_mode: Ros1Ur_dashboard_msgsSafetyMode,
 // @brief ur_dashboard_msgs/GetSafetyModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/GetSafetyModeResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/GetSafetyModeResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeResponse.
// @details Exact identity UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeResponse_Codec_Identity :: "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15"
// @brief Original ROS type name for ur_dashboard_msgs/GetSafetyModeResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeResponse_Native_Type :: "ur_dashboard_msgs/GetSafetyModeResponse"
// @brief Selected original native identity for ur_dashboard_msgs/GetSafetyModeResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsGetSafetyModeResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/GetSafetyModeResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsGetSafetyModeResponse :: proc() -> Ros1Ur_dashboard_msgsGetSafetyModeResponse {
 v: Ros1Ur_dashboard_msgsGetSafetyModeResponse
 v.field_safety_mode = Ros1Ur_dashboard_msgsSafetyMode{}
 v.field_answer = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeResponse.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsGetSafetyModeResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetSafetyModeResponse, w: ^Writer) -> bool {
 if !write_Ros1Ur_dashboard_msgsSafetyMode(&v.field_safety_mode,w) { return false }
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeResponse.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsGetSafetyModeResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetSafetyModeResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsGetSafetyModeResponse()
 {
 b,ok:=read_Ros1Ur_dashboard_msgsSafetyMode(r,allocator); if !ok { return v,false }
 v.field_safety_mode=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/GetSafetyModeResponse value.
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsGetSafetyModeResponse :: proc(v: ^Ros1Ur_dashboard_msgsGetSafetyModeResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Ur_dashboard_msgsGetSafetyModeResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Ur_dashboard_msgsGetSafetyModeResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsGetSafetyModeResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsGetSafetyModeResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Ur_dashboard_msgsGetSafetyModeResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsGetSafetyModeResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsGetSafetyModeResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/IsInRemoteControlRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlRequest.
// @details Exact identity UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlRequest_Codec_Identity :: "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da"
// @brief Original ROS type name for ur_dashboard_msgs/IsInRemoteControlRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlRequest_Native_Type :: "ur_dashboard_msgs/IsInRemoteControlRequest"
// @brief Selected original native identity for ur_dashboard_msgs/IsInRemoteControlRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/IsInRemoteControlRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsIsInRemoteControlRequest :: proc() -> Ros1Ur_dashboard_msgsIsInRemoteControlRequest {
 v: Ros1Ur_dashboard_msgsIsInRemoteControlRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlRequest.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsIsInRemoteControlRequest :: proc(v: ^Ros1Ur_dashboard_msgsIsInRemoteControlRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlRequest.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsIsInRemoteControlRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsInRemoteControlRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsIsInRemoteControlRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsIsInRemoteControlRequest :: proc(v: ^Ros1Ur_dashboard_msgsIsInRemoteControlRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsIsInRemoteControlRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsInRemoteControlRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsIsInRemoteControlRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsIsInRemoteControlRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsIsInRemoteControlRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
// is identified by UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlResponse :: struct {
 // @brief ur_dashboard_msgs/IsInRemoteControlResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/IsInRemoteControlResponse.in_remote_control: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
 field_in_remote_control: bool,
 // @brief ur_dashboard_msgs/IsInRemoteControlResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/IsInRemoteControlResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlResponse.
// @details Exact identity UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlResponse_Codec_Identity :: "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a"
// @brief Original ROS type name for ur_dashboard_msgs/IsInRemoteControlResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlResponse_Native_Type :: "ur_dashboard_msgs/IsInRemoteControlResponse"
// @brief Selected original native identity for ur_dashboard_msgs/IsInRemoteControlResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsInRemoteControlResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/IsInRemoteControlResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsIsInRemoteControlResponse :: proc() -> Ros1Ur_dashboard_msgsIsInRemoteControlResponse {
 v: Ros1Ur_dashboard_msgsIsInRemoteControlResponse
 v.field_answer = ""
 v.field_in_remote_control = false
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlResponse.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsIsInRemoteControlResponse :: proc(v: ^Ros1Ur_dashboard_msgsIsInRemoteControlResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_in_remote_control) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlResponse.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsIsInRemoteControlResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsInRemoteControlResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsIsInRemoteControlResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_in_remote_control=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsIsInRemoteControlResponse :: proc(v: ^Ros1Ur_dashboard_msgsIsInRemoteControlResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsIsInRemoteControlResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsInRemoteControlResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Ur_dashboard_msgsIsInRemoteControlResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsIsInRemoteControlResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsIsInRemoteControlResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramRunningRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningRequest.
// @details Exact identity UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningRequest_Codec_Identity :: "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f"
// @brief Original ROS type name for ur_dashboard_msgs/IsProgramRunningRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningRequest_Native_Type :: "ur_dashboard_msgs/IsProgramRunningRequest"
// @brief Selected original native identity for ur_dashboard_msgs/IsProgramRunningRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/IsProgramRunningRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsIsProgramRunningRequest :: proc() -> Ros1Ur_dashboard_msgsIsProgramRunningRequest {
 v: Ros1Ur_dashboard_msgsIsProgramRunningRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningRequest.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsIsProgramRunningRequest :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramRunningRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningRequest.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsIsProgramRunningRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramRunningRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsIsProgramRunningRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/IsProgramRunningRequest value.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsIsProgramRunningRequest :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramRunningRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsIsProgramRunningRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsIsProgramRunningRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningRequest value.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsIsProgramRunningRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramRunningRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsIsProgramRunningRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsIsProgramRunningRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsIsProgramRunningRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningResponse value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and
// is identified by UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningResponse :: struct {
 // @brief ur_dashboard_msgs/IsProgramRunningResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/IsProgramRunningResponse.program_running: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
 field_program_running: bool,
 // @brief ur_dashboard_msgs/IsProgramRunningResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramRunningResponse in bytes.
// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningResponse_Maximum_Wire_Bytes :: 262
// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningResponse.
// @details Exact identity UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningResponse_Codec_Identity :: "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac"
// @brief Original ROS type name for ur_dashboard_msgs/IsProgramRunningResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningResponse_Native_Type :: "ur_dashboard_msgs/IsProgramRunningResponse"
// @brief Selected original native identity for ur_dashboard_msgs/IsProgramRunningResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramRunningResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/IsProgramRunningResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsIsProgramRunningResponse :: proc() -> Ros1Ur_dashboard_msgsIsProgramRunningResponse {
 v: Ros1Ur_dashboard_msgsIsProgramRunningResponse
 v.field_answer = ""
 v.field_program_running = false
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningResponse.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsIsProgramRunningResponse :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramRunningResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_program_running) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningResponse.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsIsProgramRunningResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramRunningResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsIsProgramRunningResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_program_running=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/IsProgramRunningResponse value.
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsIsProgramRunningResponse :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramRunningResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=262}
 if !write_Ros1Ur_dashboard_msgsIsProgramRunningResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=262}
 if !write_Ros1Ur_dashboard_msgsIsProgramRunningResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningResponse value.
// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsIsProgramRunningResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramRunningResponse,u32) {
 if len(bytes)<6 || len(bytes)>262 { return Ros1Ur_dashboard_msgsIsProgramRunningResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsIsProgramRunningResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsIsProgramRunningResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedRequest :: struct {
}
// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramSavedRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedRequest.
// @details Exact identity UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedRequest_Codec_Identity :: "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8"
// @brief Original ROS type name for ur_dashboard_msgs/IsProgramSavedRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedRequest_Native_Type :: "ur_dashboard_msgs/IsProgramSavedRequest"
// @brief Selected original native identity for ur_dashboard_msgs/IsProgramSavedRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/IsProgramSavedRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsIsProgramSavedRequest :: proc() -> Ros1Ur_dashboard_msgsIsProgramSavedRequest {
 v: Ros1Ur_dashboard_msgsIsProgramSavedRequest
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedRequest.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsIsProgramSavedRequest :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramSavedRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedRequest.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsIsProgramSavedRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramSavedRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsIsProgramSavedRequest()
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/IsProgramSavedRequest value.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsIsProgramSavedRequest :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramSavedRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_dashboard_msgsIsProgramSavedRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_dashboard_msgsIsProgramSavedRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedRequest value.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsIsProgramSavedRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramSavedRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_dashboard_msgsIsProgramSavedRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsIsProgramSavedRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsIsProgramSavedRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..522 bytes and
// is identified by UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedResponse :: struct {
 // @brief ur_dashboard_msgs/IsProgramSavedResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/IsProgramSavedResponse.program_name: string; each string is 0..256 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
 field_program_name: string,
 // @brief ur_dashboard_msgs/IsProgramSavedResponse.program_saved: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
 field_program_saved: bool,
 // @brief ur_dashboard_msgs/IsProgramSavedResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramSavedResponse in bytes.
// @details The inclusive bound is 522 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedResponse_Maximum_Wire_Bytes :: 522
// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedResponse.
// @details Exact identity UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedResponse_Codec_Identity :: "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52"
// @brief Original ROS type name for ur_dashboard_msgs/IsProgramSavedResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedResponse_Native_Type :: "ur_dashboard_msgs/IsProgramSavedResponse"
// @brief Selected original native identity for ur_dashboard_msgs/IsProgramSavedResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsIsProgramSavedResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/IsProgramSavedResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsIsProgramSavedResponse :: proc() -> Ros1Ur_dashboard_msgsIsProgramSavedResponse {
 v: Ros1Ur_dashboard_msgsIsProgramSavedResponse
 v.field_answer = ""
 v.field_program_name = ""
 v.field_program_saved = false
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedResponse.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsIsProgramSavedResponse :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramSavedResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_string(w,v.field_program_name,256) { return false }
 if !put_bool(w,v.field_program_saved) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedResponse.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsIsProgramSavedResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramSavedResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsIsProgramSavedResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_program_name=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_program_saved=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/IsProgramSavedResponse value.
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsIsProgramSavedResponse :: proc(v: ^Ros1Ur_dashboard_msgsIsProgramSavedResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=522}
 if !write_Ros1Ur_dashboard_msgsIsProgramSavedResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=522}
 if !write_Ros1Ur_dashboard_msgsIsProgramSavedResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedResponse value.
// @details Require the complete 10..522-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsIsProgramSavedResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsIsProgramSavedResponse,u32) {
 if len(bytes)<10 || len(bytes)>522 { return Ros1Ur_dashboard_msgsIsProgramSavedResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsIsProgramSavedResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsIsProgramSavedResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/LoadRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
// is identified by UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadRequest :: struct {
 // @brief ur_dashboard_msgs/LoadRequest.filename: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_filename: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/LoadRequest in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadRequest_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of ur_dashboard_msgs/LoadRequest.
// @details Exact identity UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadRequest_Codec_Identity :: "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd"
// @brief Original ROS type name for ur_dashboard_msgs/LoadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadRequest_Native_Type :: "ur_dashboard_msgs/LoadRequest"
// @brief Selected original native identity for ur_dashboard_msgs/LoadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/LoadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsLoadRequest :: proc() -> Ros1Ur_dashboard_msgsLoadRequest {
 v: Ros1Ur_dashboard_msgsLoadRequest
 v.field_filename = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/LoadRequest.
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
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsLoadRequest :: proc(v: ^Ros1Ur_dashboard_msgsLoadRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_filename,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/LoadRequest.
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
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsLoadRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsLoadRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsLoadRequest()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_filename=b
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/LoadRequest value.
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
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsLoadRequest :: proc(v: ^Ros1Ur_dashboard_msgsLoadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Ur_dashboard_msgsLoadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Ur_dashboard_msgsLoadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/LoadRequest value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsLoadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsLoadRequest,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Ur_dashboard_msgsLoadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsLoadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsLoadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/LoadResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadResponse :: struct {
 // @brief ur_dashboard_msgs/LoadResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/LoadResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/LoadResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of ur_dashboard_msgs/LoadResponse.
// @details Exact identity UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadResponse_Codec_Identity :: "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02"
// @brief Original ROS type name for ur_dashboard_msgs/LoadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadResponse_Native_Type :: "ur_dashboard_msgs/LoadResponse"
// @brief Selected original native identity for ur_dashboard_msgs/LoadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsLoadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/LoadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsLoadResponse :: proc() -> Ros1Ur_dashboard_msgsLoadResponse {
 v: Ros1Ur_dashboard_msgsLoadResponse
 v.field_answer = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/LoadResponse.
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
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsLoadResponse :: proc(v: ^Ros1Ur_dashboard_msgsLoadResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/LoadResponse.
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
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsLoadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsLoadResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsLoadResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/LoadResponse value.
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
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsLoadResponse :: proc(v: ^Ros1Ur_dashboard_msgsLoadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Ur_dashboard_msgsLoadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Ur_dashboard_msgsLoadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/LoadResponse value.
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
// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsLoadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsLoadResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Ur_dashboard_msgsLoadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsLoadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsLoadResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/PopupRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
// is identified by UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupRequest :: struct {
 // @brief ur_dashboard_msgs/PopupRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/PopupRequest in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupRequest_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of ur_dashboard_msgs/PopupRequest.
// @details Exact identity UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupRequest_Codec_Identity :: "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d"
// @brief Original ROS type name for ur_dashboard_msgs/PopupRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupRequest_Native_Type :: "ur_dashboard_msgs/PopupRequest"
// @brief Selected original native identity for ur_dashboard_msgs/PopupRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/PopupRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsPopupRequest :: proc() -> Ros1Ur_dashboard_msgsPopupRequest {
 v: Ros1Ur_dashboard_msgsPopupRequest
 v.field_message = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/PopupRequest.
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
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsPopupRequest :: proc(v: ^Ros1Ur_dashboard_msgsPopupRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/PopupRequest.
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
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsPopupRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsPopupRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsPopupRequest()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/PopupRequest value.
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
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsPopupRequest :: proc(v: ^Ros1Ur_dashboard_msgsPopupRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Ur_dashboard_msgsPopupRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Ur_dashboard_msgsPopupRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/PopupRequest value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsPopupRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsPopupRequest,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Ur_dashboard_msgsPopupRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsPopupRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsPopupRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/PopupResponse value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupResponse :: struct {
 // @brief ur_dashboard_msgs/PopupResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
 // @brief ur_dashboard_msgs/PopupResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/PopupResponse in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupResponse_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of ur_dashboard_msgs/PopupResponse.
// @details Exact identity UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupResponse_Codec_Identity :: "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14"
// @brief Original ROS type name for ur_dashboard_msgs/PopupResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupResponse_Native_Type :: "ur_dashboard_msgs/PopupResponse"
// @brief Selected original native identity for ur_dashboard_msgs/PopupResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsPopupResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/PopupResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsPopupResponse :: proc() -> Ros1Ur_dashboard_msgsPopupResponse {
 v: Ros1Ur_dashboard_msgsPopupResponse
 v.field_answer = ""
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/PopupResponse.
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
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsPopupResponse :: proc(v: ^Ros1Ur_dashboard_msgsPopupResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/PopupResponse.
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
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsPopupResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsPopupResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsPopupResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/PopupResponse value.
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
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsPopupResponse :: proc(v: ^Ros1Ur_dashboard_msgsPopupResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Ur_dashboard_msgsPopupResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Ur_dashboard_msgsPopupResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/PopupResponse value.
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
// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsPopupResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsPopupResponse,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Ur_dashboard_msgsPopupResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsPopupResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsPopupResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/RawRequestRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
// is identified by UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestRequest :: struct {
 // @brief ur_dashboard_msgs/RawRequestRequest.query: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
 field_query: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/RawRequestRequest in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestRequest_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of ur_dashboard_msgs/RawRequestRequest.
// @details Exact identity UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestRequest_Codec_Identity :: "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4"
// @brief Original ROS type name for ur_dashboard_msgs/RawRequestRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestRequest_Native_Type :: "ur_dashboard_msgs/RawRequestRequest"
// @brief Selected original native identity for ur_dashboard_msgs/RawRequestRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/RawRequestRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsRawRequestRequest :: proc() -> Ros1Ur_dashboard_msgsRawRequestRequest {
 v: Ros1Ur_dashboard_msgsRawRequestRequest
 v.field_query = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/RawRequestRequest.
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
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsRawRequestRequest :: proc(v: ^Ros1Ur_dashboard_msgsRawRequestRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_query,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestRequest.
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
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsRawRequestRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsRawRequestRequest,bool) {
 v:=init_Ros1Ur_dashboard_msgsRawRequestRequest()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_query=b
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/RawRequestRequest value.
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
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsRawRequestRequest :: proc(v: ^Ros1Ur_dashboard_msgsRawRequestRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Ur_dashboard_msgsRawRequestRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Ur_dashboard_msgsRawRequestRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/RawRequestRequest value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsRawRequestRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsRawRequestRequest,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Ur_dashboard_msgsRawRequestRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsRawRequestRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsRawRequestRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/RawRequestResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and
// is identified by UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestResponse :: struct {
 // @brief ur_dashboard_msgs/RawRequestResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
 field_answer: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/RawRequestResponse in bytes.
// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestResponse_Maximum_Wire_Bytes :: 260
// @brief Canonical codec identity of ur_dashboard_msgs/RawRequestResponse.
// @details Exact identity UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestResponse_Codec_Identity :: "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80"
// @brief Original ROS type name for ur_dashboard_msgs/RawRequestResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestResponse_Native_Type :: "ur_dashboard_msgs/RawRequestResponse"
// @brief Selected original native identity for ur_dashboard_msgs/RawRequestResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsRawRequestResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/RawRequestResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsRawRequestResponse :: proc() -> Ros1Ur_dashboard_msgsRawRequestResponse {
 v: Ros1Ur_dashboard_msgsRawRequestResponse
 v.field_answer = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/RawRequestResponse.
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
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsRawRequestResponse :: proc(v: ^Ros1Ur_dashboard_msgsRawRequestResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_answer,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestResponse.
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
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsRawRequestResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsRawRequestResponse,bool) {
 v:=init_Ros1Ur_dashboard_msgsRawRequestResponse()
 {
 b,ok:=get_string(r,256); if !ok { return v,false }
 v.field_answer=b
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/RawRequestResponse value.
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
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsRawRequestResponse :: proc(v: ^Ros1Ur_dashboard_msgsRawRequestResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=260}
 if !write_Ros1Ur_dashboard_msgsRawRequestResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=260}
 if !write_Ros1Ur_dashboard_msgsRawRequestResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/RawRequestResponse value.
// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsRawRequestResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsRawRequestResponse,u32) {
 if len(bytes)<4 || len(bytes)>260 { return Ros1Ur_dashboard_msgsRawRequestResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsRawRequestResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsRawRequestResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/SetModeGoal value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes and is
// identified by UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeGoal :: struct {
 // @brief ur_dashboard_msgs/SetModeGoal.target_robot_mode: ur_dashboard_msgs/RobotMode.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
 field_target_robot_mode: Ros1Ur_dashboard_msgsRobotMode,
 // @brief ur_dashboard_msgs/SetModeGoal.stop_program: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
 field_stop_program: bool,
 // @brief ur_dashboard_msgs/SetModeGoal.play_program: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
 field_play_program: bool,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeGoal in bytes.
// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeGoal_Maximum_Wire_Bytes :: 3
// @brief Canonical codec identity of ur_dashboard_msgs/SetModeGoal.
// @details Exact identity UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeGoal_Codec_Identity :: "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528"
// @brief Original ROS type name for ur_dashboard_msgs/SetModeGoal.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeGoal_Native_Type :: "ur_dashboard_msgs/SetModeGoal"
// @brief Selected original native identity for ur_dashboard_msgs/SetModeGoal.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeGoal_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/SetModeGoal.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsSetModeGoal :: proc() -> Ros1Ur_dashboard_msgsSetModeGoal {
 v: Ros1Ur_dashboard_msgsSetModeGoal
 v.field_target_robot_mode = Ros1Ur_dashboard_msgsRobotMode{}
 v.field_stop_program = false
 v.field_play_program = false
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/SetModeGoal.
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
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsSetModeGoal :: proc(v: ^Ros1Ur_dashboard_msgsSetModeGoal, w: ^Writer) -> bool {
 if !write_Ros1Ur_dashboard_msgsRobotMode(&v.field_target_robot_mode,w) { return false }
 if !put_bool(w,v.field_stop_program) { return false }
 if !put_bool(w,v.field_play_program) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeGoal.
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
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsSetModeGoal :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSetModeGoal,bool) {
 v:=init_Ros1Ur_dashboard_msgsSetModeGoal()
 {
 b,ok:=read_Ros1Ur_dashboard_msgsRobotMode(r,allocator); if !ok { return v,false }
 v.field_target_robot_mode=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_stop_program=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_play_program=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/SetModeGoal value.
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
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsSetModeGoal :: proc(v: ^Ros1Ur_dashboard_msgsSetModeGoal, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=3}
 if !write_Ros1Ur_dashboard_msgsSetModeGoal(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=3}
 if !write_Ros1Ur_dashboard_msgsSetModeGoal(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/SetModeGoal value.
// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsSetModeGoal :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSetModeGoal,u32) {
 if len(bytes)<3 || len(bytes)>3 { return Ros1Ur_dashboard_msgsSetModeGoal{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsSetModeGoal(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsSetModeGoal{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/SetModeResult value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and
// is identified by UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeResult :: struct {
 // @brief ur_dashboard_msgs/SetModeResult.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief ur_dashboard_msgs/SetModeResult.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeResult in bytes.
// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeResult_Maximum_Wire_Bytes :: 261
// @brief Canonical codec identity of ur_dashboard_msgs/SetModeResult.
// @details Exact identity UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeResult_Codec_Identity :: "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114"
// @brief Original ROS type name for ur_dashboard_msgs/SetModeResult.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeResult_Native_Type :: "ur_dashboard_msgs/SetModeResult"
// @brief Selected original native identity for ur_dashboard_msgs/SetModeResult.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeResult_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/SetModeResult.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsSetModeResult :: proc() -> Ros1Ur_dashboard_msgsSetModeResult {
 v: Ros1Ur_dashboard_msgsSetModeResult
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/SetModeResult.
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
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsSetModeResult :: proc(v: ^Ros1Ur_dashboard_msgsSetModeResult, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,256) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeResult.
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
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsSetModeResult :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSetModeResult,bool) {
 v:=init_Ros1Ur_dashboard_msgsSetModeResult()
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
// @brief Encode one complete ur_dashboard_msgs/SetModeResult value.
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
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsSetModeResult :: proc(v: ^Ros1Ur_dashboard_msgsSetModeResult, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=261}
 if !write_Ros1Ur_dashboard_msgsSetModeResult(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=261}
 if !write_Ros1Ur_dashboard_msgsSetModeResult(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/SetModeResult value.
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
// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsSetModeResult :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSetModeResult,u32) {
 if len(bytes)<5 || len(bytes)>261 { return Ros1Ur_dashboard_msgsSetModeResult{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsSetModeResult(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsSetModeResult{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_dashboard_msgs/SetModeFeedback value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
// identified by UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeFeedback :: struct {
 // @brief ur_dashboard_msgs/SetModeFeedback.current_robot_mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_robot_mode: i8,
 // @brief ur_dashboard_msgs/SetModeFeedback.current_safety_mode: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
 field_current_safety_mode: i8,
}
// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeFeedback in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeFeedback_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of ur_dashboard_msgs/SetModeFeedback.
// @details Exact identity UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeFeedback_Codec_Identity :: "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2"
// @brief Original ROS type name for ur_dashboard_msgs/SetModeFeedback.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeFeedback_Native_Type :: "ur_dashboard_msgs/SetModeFeedback"
// @brief Selected original native identity for ur_dashboard_msgs/SetModeFeedback.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_dashboard_msgsSetModeFeedback_Native_Identity :: ""
// @brief Construct the declared defaults of ur_dashboard_msgs/SetModeFeedback.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_dashboard_msgsSetModeFeedback :: proc() -> Ros1Ur_dashboard_msgsSetModeFeedback {
 v: Ros1Ur_dashboard_msgsSetModeFeedback
 v.field_current_robot_mode = 0
 v.field_current_safety_mode = 0
 return v
}
// @brief Append every canonical field of ur_dashboard_msgs/SetModeFeedback.
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
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_dashboard_msgsSetModeFeedback :: proc(v: ^Ros1Ur_dashboard_msgsSetModeFeedback, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_current_robot_mode),1) { return false }
 if !put_integer(w,u64(v.field_current_safety_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeFeedback.
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
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_dashboard_msgsSetModeFeedback :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSetModeFeedback,bool) {
 v:=init_Ros1Ur_dashboard_msgsSetModeFeedback()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_current_robot_mode=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_current_safety_mode=i8(b)
 }
 return v,true
}
// @brief Encode one complete ur_dashboard_msgs/SetModeFeedback value.
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
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_dashboard_msgsSetModeFeedback :: proc(v: ^Ros1Ur_dashboard_msgsSetModeFeedback, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Ur_dashboard_msgsSetModeFeedback(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Ur_dashboard_msgsSetModeFeedback(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_dashboard_msgs/SetModeFeedback value.
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
// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_dashboard_msgsSetModeFeedback :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_dashboard_msgsSetModeFeedback,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Ur_dashboard_msgsSetModeFeedback{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_dashboard_msgsSetModeFeedback(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_dashboard_msgsSetModeFeedback{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/Analog value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
// identified by UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog :: struct {
 // @brief ur_msgs/Analog.pin: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
 field_pin: u8,
 // @brief ur_msgs/Analog.domain: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
 field_domain: u8,
 // @brief ur_msgs/Analog.state: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
 field_state: f32,
}
// @brief Maximum canonical extent of ur_msgs/Analog in bytes.
// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog_Maximum_Wire_Bytes :: 6
// @brief Canonical codec identity of ur_msgs/Analog.
// @details Exact identity UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog_Codec_Identity :: "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7"
// @brief Original ROS type name for ur_msgs/Analog.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog_Native_Type :: "ur_msgs/Analog"
// @brief Selected original native identity for ur_msgs/Analog.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog_Native_Identity :: ""
// @brief ur_msgs/Analog.CURRENT: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog_CURRENT :: u8(0)
// @brief ur_msgs/Analog.VOLTAGE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsAnalog_VOLTAGE :: u8(1)
// @brief Construct the declared defaults of ur_msgs/Analog.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsAnalog :: proc() -> Ros1Ur_msgsAnalog {
 v: Ros1Ur_msgsAnalog
 v.field_pin = 0
 v.field_domain = 0
 v.field_state = 0
 return v
}
// @brief Append every canonical field of ur_msgs/Analog.
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
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsAnalog :: proc(v: ^Ros1Ur_msgsAnalog, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pin),1) { return false }
 if !put_integer(w,u64(v.field_domain),1) { return false }
 if !put_float32(w,v.field_state) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/Analog.
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
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsAnalog :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsAnalog,bool) {
 v:=init_Ros1Ur_msgsAnalog()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_domain=u8(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_state=f32(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/Analog value.
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
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsAnalog :: proc(v: ^Ros1Ur_msgsAnalog, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=6}
 if !write_Ros1Ur_msgsAnalog(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=6}
 if !write_Ros1Ur_msgsAnalog(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/Analog value.
// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsAnalog; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsAnalog :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsAnalog,u32) {
 if len(bytes)<6 || len(bytes)>6 { return Ros1Ur_msgsAnalog{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsAnalog(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsAnalog{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/Digital value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is
// identified by UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsDigital :: struct {
 // @brief ur_msgs/Digital.pin: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
 field_pin: u8,
 // @brief ur_msgs/Digital.state: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
 field_state: bool,
}
// @brief Maximum canonical extent of ur_msgs/Digital in bytes.
// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsDigital_Maximum_Wire_Bytes :: 2
// @brief Canonical codec identity of ur_msgs/Digital.
// @details Exact identity UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsDigital_Codec_Identity :: "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c"
// @brief Original ROS type name for ur_msgs/Digital.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsDigital_Native_Type :: "ur_msgs/Digital"
// @brief Selected original native identity for ur_msgs/Digital.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsDigital_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/Digital.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsDigital :: proc() -> Ros1Ur_msgsDigital {
 v: Ros1Ur_msgsDigital
 v.field_pin = 0
 v.field_state = false
 return v
}
// @brief Append every canonical field of ur_msgs/Digital.
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
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsDigital :: proc(v: ^Ros1Ur_msgsDigital, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_pin),1) { return false }
 if !put_bool(w,v.field_state) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/Digital.
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
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsDigital :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsDigital,bool) {
 v:=init_Ros1Ur_msgsDigital()
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
// @brief Encode one complete ur_msgs/Digital value.
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
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsDigital :: proc(v: ^Ros1Ur_msgsDigital, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2}
 if !write_Ros1Ur_msgsDigital(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2}
 if !write_Ros1Ur_msgsDigital(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/Digital value.
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
// @see Ros1Ur_msgsDigital; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsDigital :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsDigital,u32) {
 if len(bytes)<2 || len(bytes)>2 { return Ros1Ur_msgsDigital{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsDigital(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsDigital{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionRequest value.
// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is
// identified by UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionRequest :: struct {
}
// @brief Maximum canonical extent of ur_msgs/GetRobotSoftwareVersionRequest in bytes.
// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionRequest_Maximum_Wire_Bytes :: 0
// @brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionRequest.
// @details Exact identity UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionRequest_Codec_Identity :: "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8"
// @brief Original ROS type name for ur_msgs/GetRobotSoftwareVersionRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionRequest_Native_Type :: "ur_msgs/GetRobotSoftwareVersionRequest"
// @brief Selected original native identity for ur_msgs/GetRobotSoftwareVersionRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/GetRobotSoftwareVersionRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsGetRobotSoftwareVersionRequest :: proc() -> Ros1Ur_msgsGetRobotSoftwareVersionRequest {
 v: Ros1Ur_msgsGetRobotSoftwareVersionRequest
 return v
}
// @brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionRequest.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsGetRobotSoftwareVersionRequest :: proc(v: ^Ros1Ur_msgsGetRobotSoftwareVersionRequest, w: ^Writer) -> bool {
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionRequest.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsGetRobotSoftwareVersionRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsGetRobotSoftwareVersionRequest,bool) {
 v:=init_Ros1Ur_msgsGetRobotSoftwareVersionRequest()
 return v,true
}
// @brief Encode one complete ur_msgs/GetRobotSoftwareVersionRequest value.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsGetRobotSoftwareVersionRequest :: proc(v: ^Ros1Ur_msgsGetRobotSoftwareVersionRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=0}
 if !write_Ros1Ur_msgsGetRobotSoftwareVersionRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=0}
 if !write_Ros1Ur_msgsGetRobotSoftwareVersionRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionRequest value.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsGetRobotSoftwareVersionRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsGetRobotSoftwareVersionRequest,u32) {
 if len(bytes)<0 || len(bytes)>0 { return Ros1Ur_msgsGetRobotSoftwareVersionRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsGetRobotSoftwareVersionRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsGetRobotSoftwareVersionRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionResponse value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
// is identified by UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionResponse :: struct {
 // @brief ur_msgs/GetRobotSoftwareVersionResponse.major: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
 field_major: u32,
 // @brief ur_msgs/GetRobotSoftwareVersionResponse.minor: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
 field_minor: u32,
 // @brief ur_msgs/GetRobotSoftwareVersionResponse.bugfix: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
 field_bugfix: u32,
 // @brief ur_msgs/GetRobotSoftwareVersionResponse.build: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
 field_build: u32,
}
// @brief Maximum canonical extent of ur_msgs/GetRobotSoftwareVersionResponse in bytes.
// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionResponse_Maximum_Wire_Bytes :: 16
// @brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionResponse.
// @details Exact identity UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionResponse_Codec_Identity :: "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64"
// @brief Original ROS type name for ur_msgs/GetRobotSoftwareVersionResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionResponse_Native_Type :: "ur_msgs/GetRobotSoftwareVersionResponse"
// @brief Selected original native identity for ur_msgs/GetRobotSoftwareVersionResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsGetRobotSoftwareVersionResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/GetRobotSoftwareVersionResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsGetRobotSoftwareVersionResponse :: proc() -> Ros1Ur_msgsGetRobotSoftwareVersionResponse {
 v: Ros1Ur_msgsGetRobotSoftwareVersionResponse
 v.field_major = 0
 v.field_minor = 0
 v.field_bugfix = 0
 v.field_build = 0
 return v
}
// @brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionResponse.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsGetRobotSoftwareVersionResponse :: proc(v: ^Ros1Ur_msgsGetRobotSoftwareVersionResponse, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_major),4) { return false }
 if !put_integer(w,u64(v.field_minor),4) { return false }
 if !put_integer(w,u64(v.field_bugfix),4) { return false }
 if !put_integer(w,u64(v.field_build),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionResponse.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsGetRobotSoftwareVersionResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsGetRobotSoftwareVersionResponse,bool) {
 v:=init_Ros1Ur_msgsGetRobotSoftwareVersionResponse()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_major=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_minor=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_bugfix=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_build=u32(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/GetRobotSoftwareVersionResponse value.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsGetRobotSoftwareVersionResponse :: proc(v: ^Ros1Ur_msgsGetRobotSoftwareVersionResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=16}
 if !write_Ros1Ur_msgsGetRobotSoftwareVersionResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=16}
 if !write_Ros1Ur_msgsGetRobotSoftwareVersionResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionResponse value.
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
// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsGetRobotSoftwareVersionResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsGetRobotSoftwareVersionResponse,u32) {
 if len(bytes)<16 || len(bytes)>16 { return Ros1Ur_msgsGetRobotSoftwareVersionResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsGetRobotSoftwareVersionResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsGetRobotSoftwareVersionResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/IOStates value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..404 bytes and
// is identified by UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsIOStates :: struct {
 // @brief ur_msgs/IOStates.digital_in_states: ur_msgs/Digital; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
 field_digital_in_states: []Ros1Ur_msgsDigital,
 // @brief ur_msgs/IOStates.digital_out_states: ur_msgs/Digital; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
 field_digital_out_states: []Ros1Ur_msgsDigital,
 // @brief ur_msgs/IOStates.flag_states: ur_msgs/Digital; 0..32 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
 field_flag_states: []Ros1Ur_msgsDigital,
 // @brief ur_msgs/IOStates.analog_in_states: ur_msgs/Analog; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
 field_analog_in_states: []Ros1Ur_msgsAnalog,
 // @brief ur_msgs/IOStates.analog_out_states: ur_msgs/Analog; 0..16 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
 field_analog_out_states: []Ros1Ur_msgsAnalog,
}
// @brief Maximum canonical extent of ur_msgs/IOStates in bytes.
// @details The inclusive bound is 404 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsIOStates_Maximum_Wire_Bytes :: 404
// @brief Canonical codec identity of ur_msgs/IOStates.
// @details Exact identity UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsIOStates_Codec_Identity :: "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033"
// @brief Original ROS type name for ur_msgs/IOStates.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsIOStates_Native_Type :: "ur_msgs/IOStates"
// @brief Selected original native identity for ur_msgs/IOStates.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsIOStates_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/IOStates.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsIOStates :: proc() -> Ros1Ur_msgsIOStates {
 v: Ros1Ur_msgsIOStates
 v.field_digital_in_states = nil
 v.field_digital_out_states = nil
 v.field_flag_states = nil
 v.field_analog_in_states = nil
 v.field_analog_out_states = nil
 return v
}
// @brief Append every canonical field of ur_msgs/IOStates.
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
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsIOStates :: proc(v: ^Ros1Ur_msgsIOStates, w: ^Writer) -> bool {
 if len(v.field_digital_in_states)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_digital_in_states)),4) { return false }
 for e in v.field_digital_in_states {
 item:=e
 if !write_Ros1Ur_msgsDigital(&item,w) { return false }
 }
 if len(v.field_digital_out_states)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_digital_out_states)),4) { return false }
 for e in v.field_digital_out_states {
 item:=e
 if !write_Ros1Ur_msgsDigital(&item,w) { return false }
 }
 if len(v.field_flag_states)>32 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_flag_states)),4) { return false }
 for e in v.field_flag_states {
 item:=e
 if !write_Ros1Ur_msgsDigital(&item,w) { return false }
 }
 if len(v.field_analog_in_states)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_analog_in_states)),4) { return false }
 for e in v.field_analog_in_states {
 item:=e
 if !write_Ros1Ur_msgsAnalog(&item,w) { return false }
 }
 if len(v.field_analog_out_states)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_analog_out_states)),4) { return false }
 for e in v.field_analog_out_states {
 item:=e
 if !write_Ros1Ur_msgsAnalog(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/IOStates.
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
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsIOStates :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsIOStates,bool) {
 v:=init_Ros1Ur_msgsIOStates()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_digital_in_states=make([]Ros1Ur_msgsDigital,int(n),allocator)
 }
 for &e in v.field_digital_in_states {
 {
 b,ok:=read_Ros1Ur_msgsDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_digital_out_states=make([]Ros1Ur_msgsDigital,int(n),allocator)
 }
 for &e in v.field_digital_out_states {
 {
 b,ok:=read_Ros1Ur_msgsDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>32 { r.code=22; return v,false }
 v.field_flag_states=make([]Ros1Ur_msgsDigital,int(n),allocator)
 }
 for &e in v.field_flag_states {
 {
 b,ok:=read_Ros1Ur_msgsDigital(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_analog_in_states=make([]Ros1Ur_msgsAnalog,int(n),allocator)
 }
 for &e in v.field_analog_in_states {
 {
 b,ok:=read_Ros1Ur_msgsAnalog(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_analog_out_states=make([]Ros1Ur_msgsAnalog,int(n),allocator)
 }
 for &e in v.field_analog_out_states {
 {
 b,ok:=read_Ros1Ur_msgsAnalog(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete ur_msgs/IOStates value.
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
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsIOStates :: proc(v: ^Ros1Ur_msgsIOStates, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=404}
 if !write_Ros1Ur_msgsIOStates(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=404}
 if !write_Ros1Ur_msgsIOStates(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/IOStates value.
// @details Require the complete 20..404-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsIOStates; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsIOStates :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsIOStates,u32) {
 if len(bytes)<20 || len(bytes)>404 { return Ros1Ur_msgsIOStates{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsIOStates(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsIOStates{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/MasterboardDataMsg value.
// @details All 16 declared fields are retained in source order. The canonical representation occupies 62..62 bytes and
// is identified by UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsMasterboardDataMsg :: struct {
 // @brief ur_msgs/MasterboardDataMsg.digital_input_bits: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_digital_input_bits: u32,
 // @brief ur_msgs/MasterboardDataMsg.digital_output_bits: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_digital_output_bits: u32,
 // @brief ur_msgs/MasterboardDataMsg.analog_input_range0: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input_range0: i8,
 // @brief ur_msgs/MasterboardDataMsg.analog_input_range1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input_range1: i8,
 // @brief ur_msgs/MasterboardDataMsg.analog_input0: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input0: f64,
 // @brief ur_msgs/MasterboardDataMsg.analog_input1: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input1: f64,
 // @brief ur_msgs/MasterboardDataMsg.analog_output_domain0: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_output_domain0: i8,
 // @brief ur_msgs/MasterboardDataMsg.analog_output_domain1: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_output_domain1: i8,
 // @brief ur_msgs/MasterboardDataMsg.analog_output0: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_output0: f64,
 // @brief ur_msgs/MasterboardDataMsg.analog_output1: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_output1: f64,
 // @brief ur_msgs/MasterboardDataMsg.masterboard_temperature: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_masterboard_temperature: f32,
 // @brief ur_msgs/MasterboardDataMsg.robot_voltage_48V: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_robot_voltage_48V: f32,
 // @brief ur_msgs/MasterboardDataMsg.robot_current: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_robot_current: f32,
 // @brief ur_msgs/MasterboardDataMsg.master_io_current: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_master_io_current: f32,
 // @brief ur_msgs/MasterboardDataMsg.master_safety_state: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_master_safety_state: u8,
 // @brief ur_msgs/MasterboardDataMsg.master_onoff_state: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_master_onoff_state: u8,
}
// @brief Maximum canonical extent of ur_msgs/MasterboardDataMsg in bytes.
// @details The inclusive bound is 62 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsMasterboardDataMsg_Maximum_Wire_Bytes :: 62
// @brief Canonical codec identity of ur_msgs/MasterboardDataMsg.
// @details Exact identity UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsMasterboardDataMsg_Codec_Identity :: "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f"
// @brief Original ROS type name for ur_msgs/MasterboardDataMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsMasterboardDataMsg_Native_Type :: "ur_msgs/MasterboardDataMsg"
// @brief Selected original native identity for ur_msgs/MasterboardDataMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsMasterboardDataMsg_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/MasterboardDataMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsMasterboardDataMsg :: proc() -> Ros1Ur_msgsMasterboardDataMsg {
 v: Ros1Ur_msgsMasterboardDataMsg
 v.field_digital_input_bits = 0
 v.field_digital_output_bits = 0
 v.field_analog_input_range0 = 0
 v.field_analog_input_range1 = 0
 v.field_analog_input0 = 0
 v.field_analog_input1 = 0
 v.field_analog_output_domain0 = 0
 v.field_analog_output_domain1 = 0
 v.field_analog_output0 = 0
 v.field_analog_output1 = 0
 v.field_masterboard_temperature = 0
 v.field_robot_voltage_48V = 0
 v.field_robot_current = 0
 v.field_master_io_current = 0
 v.field_master_safety_state = 0
 v.field_master_onoff_state = 0
 return v
}
// @brief Append every canonical field of ur_msgs/MasterboardDataMsg.
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
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsMasterboardDataMsg :: proc(v: ^Ros1Ur_msgsMasterboardDataMsg, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_digital_input_bits),4) { return false }
 if !put_integer(w,u64(v.field_digital_output_bits),4) { return false }
 if !put_integer(w,u64(v.field_analog_input_range0),1) { return false }
 if !put_integer(w,u64(v.field_analog_input_range1),1) { return false }
 if !put_float64(w,v.field_analog_input0) { return false }
 if !put_float64(w,v.field_analog_input1) { return false }
 if !put_integer(w,u64(v.field_analog_output_domain0),1) { return false }
 if !put_integer(w,u64(v.field_analog_output_domain1),1) { return false }
 if !put_float64(w,v.field_analog_output0) { return false }
 if !put_float64(w,v.field_analog_output1) { return false }
 if !put_float32(w,v.field_masterboard_temperature) { return false }
 if !put_float32(w,v.field_robot_voltage_48V) { return false }
 if !put_float32(w,v.field_robot_current) { return false }
 if !put_float32(w,v.field_master_io_current) { return false }
 if !put_integer(w,u64(v.field_master_safety_state),1) { return false }
 if !put_integer(w,u64(v.field_master_onoff_state),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/MasterboardDataMsg.
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
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsMasterboardDataMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsMasterboardDataMsg,bool) {
 v:=init_Ros1Ur_msgsMasterboardDataMsg()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_digital_input_bits=u32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_digital_output_bits=u32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_analog_input_range0=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_analog_input_range1=i8(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_analog_input0=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_analog_input1=f64(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_analog_output_domain0=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_analog_output_domain1=i8(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_analog_output0=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_analog_output1=f64(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_masterboard_temperature=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_robot_voltage_48V=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_robot_current=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_master_io_current=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_master_safety_state=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_master_onoff_state=u8(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/MasterboardDataMsg value.
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
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsMasterboardDataMsg :: proc(v: ^Ros1Ur_msgsMasterboardDataMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=62}
 if !write_Ros1Ur_msgsMasterboardDataMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=62}
 if !write_Ros1Ur_msgsMasterboardDataMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/MasterboardDataMsg value.
// @details Require the complete 62..62-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsMasterboardDataMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsMasterboardDataMsg,u32) {
 if len(bytes)<62 || len(bytes)>62 { return Ros1Ur_msgsMasterboardDataMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsMasterboardDataMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsMasterboardDataMsg{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/RobotModeDataMsg value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 15..15 bytes and
// is identified by UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotModeDataMsg :: struct {
 // @brief ur_msgs/RobotModeDataMsg.timestamp: uint64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_timestamp: u64,
 // @brief ur_msgs/RobotModeDataMsg.is_robot_connected: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_robot_connected: bool,
 // @brief ur_msgs/RobotModeDataMsg.is_real_robot_enabled: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_real_robot_enabled: bool,
 // @brief ur_msgs/RobotModeDataMsg.is_power_on_robot: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_power_on_robot: bool,
 // @brief ur_msgs/RobotModeDataMsg.is_emergency_stopped: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_emergency_stopped: bool,
 // @brief ur_msgs/RobotModeDataMsg.is_protective_stopped: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_protective_stopped: bool,
 // @brief ur_msgs/RobotModeDataMsg.is_program_running: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_program_running: bool,
 // @brief ur_msgs/RobotModeDataMsg.is_program_paused: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_is_program_paused: bool,
}
// @brief Maximum canonical extent of ur_msgs/RobotModeDataMsg in bytes.
// @details The inclusive bound is 15 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotModeDataMsg_Maximum_Wire_Bytes :: 15
// @brief Canonical codec identity of ur_msgs/RobotModeDataMsg.
// @details Exact identity UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotModeDataMsg_Codec_Identity :: "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231"
// @brief Original ROS type name for ur_msgs/RobotModeDataMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotModeDataMsg_Native_Type :: "ur_msgs/RobotModeDataMsg"
// @brief Selected original native identity for ur_msgs/RobotModeDataMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotModeDataMsg_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/RobotModeDataMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsRobotModeDataMsg :: proc() -> Ros1Ur_msgsRobotModeDataMsg {
 v: Ros1Ur_msgsRobotModeDataMsg
 v.field_timestamp = 0
 v.field_is_robot_connected = false
 v.field_is_real_robot_enabled = false
 v.field_is_power_on_robot = false
 v.field_is_emergency_stopped = false
 v.field_is_protective_stopped = false
 v.field_is_program_running = false
 v.field_is_program_paused = false
 return v
}
// @brief Append every canonical field of ur_msgs/RobotModeDataMsg.
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
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsRobotModeDataMsg :: proc(v: ^Ros1Ur_msgsRobotModeDataMsg, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_timestamp),8) { return false }
 if !put_bool(w,v.field_is_robot_connected) { return false }
 if !put_bool(w,v.field_is_real_robot_enabled) { return false }
 if !put_bool(w,v.field_is_power_on_robot) { return false }
 if !put_bool(w,v.field_is_emergency_stopped) { return false }
 if !put_bool(w,v.field_is_protective_stopped) { return false }
 if !put_bool(w,v.field_is_program_running) { return false }
 if !put_bool(w,v.field_is_program_paused) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/RobotModeDataMsg.
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
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsRobotModeDataMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsRobotModeDataMsg,bool) {
 v:=init_Ros1Ur_msgsRobotModeDataMsg()
 {
 b,ok:=get_integer(r,8); if !ok { return v,false }
 v.field_timestamp=u64(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_robot_connected=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_real_robot_enabled=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_power_on_robot=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_emergency_stopped=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_protective_stopped=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_program_running=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_program_paused=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/RobotModeDataMsg value.
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
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsRobotModeDataMsg :: proc(v: ^Ros1Ur_msgsRobotModeDataMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=15}
 if !write_Ros1Ur_msgsRobotModeDataMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=15}
 if !write_Ros1Ur_msgsRobotModeDataMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/RobotModeDataMsg value.
// @details Require the complete 15..15-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsRobotModeDataMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsRobotModeDataMsg,u32) {
 if len(bytes)<15 || len(bytes)>15 { return Ros1Ur_msgsRobotModeDataMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsRobotModeDataMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsRobotModeDataMsg{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/RobotStateRTMsg value.
// @details All 19 declared fields are retained in source order. The canonical representation occupies 96..768 bytes and
// is identified by UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotStateRTMsg :: struct {
 // @brief ur_msgs/RobotStateRTMsg.time: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_time: f64,
 // @brief ur_msgs/RobotStateRTMsg.q_target: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_q_target: []f64,
 // @brief ur_msgs/RobotStateRTMsg.qd_target: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_qd_target: []f64,
 // @brief ur_msgs/RobotStateRTMsg.qdd_target: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_qdd_target: []f64,
 // @brief ur_msgs/RobotStateRTMsg.i_target: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_i_target: []f64,
 // @brief ur_msgs/RobotStateRTMsg.m_target: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_m_target: []f64,
 // @brief ur_msgs/RobotStateRTMsg.q_actual: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_q_actual: []f64,
 // @brief ur_msgs/RobotStateRTMsg.qd_actual: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_qd_actual: []f64,
 // @brief ur_msgs/RobotStateRTMsg.i_actual: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_i_actual: []f64,
 // @brief ur_msgs/RobotStateRTMsg.tool_acc_values: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_acc_values: []f64,
 // @brief ur_msgs/RobotStateRTMsg.tcp_force: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_force: []f64,
 // @brief ur_msgs/RobotStateRTMsg.tool_vector: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_vector: []f64,
 // @brief ur_msgs/RobotStateRTMsg.tcp_speed: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tcp_speed: []f64,
 // @brief ur_msgs/RobotStateRTMsg.digital_input_bits: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_digital_input_bits: f64,
 // @brief ur_msgs/RobotStateRTMsg.motor_temperatures: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_motor_temperatures: []f64,
 // @brief ur_msgs/RobotStateRTMsg.controller_timer: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_controller_timer: f64,
 // @brief ur_msgs/RobotStateRTMsg.test_value: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_test_value: f64,
 // @brief ur_msgs/RobotStateRTMsg.robot_mode: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_robot_mode: f64,
 // @brief ur_msgs/RobotStateRTMsg.joint_modes: float64; 0..6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
 field_joint_modes: []f64,
}
// @brief Maximum canonical extent of ur_msgs/RobotStateRTMsg in bytes.
// @details The inclusive bound is 768 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotStateRTMsg_Maximum_Wire_Bytes :: 768
// @brief Canonical codec identity of ur_msgs/RobotStateRTMsg.
// @details Exact identity UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotStateRTMsg_Codec_Identity :: "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7"
// @brief Original ROS type name for ur_msgs/RobotStateRTMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotStateRTMsg_Native_Type :: "ur_msgs/RobotStateRTMsg"
// @brief Selected original native identity for ur_msgs/RobotStateRTMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsRobotStateRTMsg_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/RobotStateRTMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsRobotStateRTMsg :: proc() -> Ros1Ur_msgsRobotStateRTMsg {
 v: Ros1Ur_msgsRobotStateRTMsg
 v.field_time = 0
 v.field_q_target = nil
 v.field_qd_target = nil
 v.field_qdd_target = nil
 v.field_i_target = nil
 v.field_m_target = nil
 v.field_q_actual = nil
 v.field_qd_actual = nil
 v.field_i_actual = nil
 v.field_tool_acc_values = nil
 v.field_tcp_force = nil
 v.field_tool_vector = nil
 v.field_tcp_speed = nil
 v.field_digital_input_bits = 0
 v.field_motor_temperatures = nil
 v.field_controller_timer = 0
 v.field_test_value = 0
 v.field_robot_mode = 0
 v.field_joint_modes = nil
 return v
}
// @brief Append every canonical field of ur_msgs/RobotStateRTMsg.
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
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsRobotStateRTMsg :: proc(v: ^Ros1Ur_msgsRobotStateRTMsg, w: ^Writer) -> bool {
 if !put_float64(w,v.field_time) { return false }
 if len(v.field_q_target)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_q_target)),4) { return false }
 for e in v.field_q_target {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_qd_target)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_qd_target)),4) { return false }
 for e in v.field_qd_target {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_qdd_target)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_qdd_target)),4) { return false }
 for e in v.field_qdd_target {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_i_target)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_i_target)),4) { return false }
 for e in v.field_i_target {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_m_target)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_m_target)),4) { return false }
 for e in v.field_m_target {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_q_actual)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_q_actual)),4) { return false }
 for e in v.field_q_actual {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_qd_actual)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_qd_actual)),4) { return false }
 for e in v.field_qd_actual {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_i_actual)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_i_actual)),4) { return false }
 for e in v.field_i_actual {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tool_acc_values)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tool_acc_values)),4) { return false }
 for e in v.field_tool_acc_values {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tcp_force)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tcp_force)),4) { return false }
 for e in v.field_tcp_force {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tool_vector)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tool_vector)),4) { return false }
 for e in v.field_tool_vector {
 if !put_float64(w,e) { return false }
 }
 if len(v.field_tcp_speed)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_tcp_speed)),4) { return false }
 for e in v.field_tcp_speed {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_digital_input_bits) { return false }
 if len(v.field_motor_temperatures)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_motor_temperatures)),4) { return false }
 for e in v.field_motor_temperatures {
 if !put_float64(w,e) { return false }
 }
 if !put_float64(w,v.field_controller_timer) { return false }
 if !put_float64(w,v.field_test_value) { return false }
 if !put_float64(w,v.field_robot_mode) { return false }
 if len(v.field_joint_modes)>6 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_joint_modes)),4) { return false }
 for e in v.field_joint_modes {
 if !put_float64(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/RobotStateRTMsg.
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
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsRobotStateRTMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsRobotStateRTMsg,bool) {
 v:=init_Ros1Ur_msgsRobotStateRTMsg()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_time=f64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_q_target=make([]f64,int(n),allocator)
 }
 for &e in v.field_q_target {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_qd_target=make([]f64,int(n),allocator)
 }
 for &e in v.field_qd_target {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_qdd_target=make([]f64,int(n),allocator)
 }
 for &e in v.field_qdd_target {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_i_target=make([]f64,int(n),allocator)
 }
 for &e in v.field_i_target {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_m_target=make([]f64,int(n),allocator)
 }
 for &e in v.field_m_target {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_q_actual=make([]f64,int(n),allocator)
 }
 for &e in v.field_q_actual {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_qd_actual=make([]f64,int(n),allocator)
 }
 for &e in v.field_qd_actual {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_i_actual=make([]f64,int(n),allocator)
 }
 for &e in v.field_i_actual {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_tool_acc_values=make([]f64,int(n),allocator)
 }
 for &e in v.field_tool_acc_values {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_tcp_force=make([]f64,int(n),allocator)
 }
 for &e in v.field_tcp_force {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_tool_vector=make([]f64,int(n),allocator)
 }
 for &e in v.field_tool_vector {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_tcp_speed=make([]f64,int(n),allocator)
 }
 for &e in v.field_tcp_speed {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_digital_input_bits=f64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_motor_temperatures=make([]f64,int(n),allocator)
 }
 for &e in v.field_motor_temperatures {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_controller_timer=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_test_value=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_robot_mode=f64(b)
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>6 { r.code=22; return v,false }
 v.field_joint_modes=make([]f64,int(n),allocator)
 }
 for &e in v.field_joint_modes {
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 e=f64(b)
 }
 }
 return v,true
}
// @brief Encode one complete ur_msgs/RobotStateRTMsg value.
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
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsRobotStateRTMsg :: proc(v: ^Ros1Ur_msgsRobotStateRTMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=768}
 if !write_Ros1Ur_msgsRobotStateRTMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=768}
 if !write_Ros1Ur_msgsRobotStateRTMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/RobotStateRTMsg value.
// @details Require the complete 96..768-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsRobotStateRTMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsRobotStateRTMsg,u32) {
 if len(bytes)<96 || len(bytes)>768 { return Ros1Ur_msgsRobotStateRTMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsRobotStateRTMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsRobotStateRTMsg{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetAnalogOutputRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
// identified by UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputRequest :: struct {
 // @brief ur_msgs/SetAnalogOutputRequest.data: ur_msgs/Analog.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
 field_data: Ros1Ur_msgsAnalog,
}
// @brief Maximum canonical extent of ur_msgs/SetAnalogOutputRequest in bytes.
// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputRequest_Maximum_Wire_Bytes :: 6
// @brief Canonical codec identity of ur_msgs/SetAnalogOutputRequest.
// @details Exact identity UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputRequest_Codec_Identity :: "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789"
// @brief Original ROS type name for ur_msgs/SetAnalogOutputRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputRequest_Native_Type :: "ur_msgs/SetAnalogOutputRequest"
// @brief Selected original native identity for ur_msgs/SetAnalogOutputRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetAnalogOutputRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetAnalogOutputRequest :: proc() -> Ros1Ur_msgsSetAnalogOutputRequest {
 v: Ros1Ur_msgsSetAnalogOutputRequest
 v.field_data = Ros1Ur_msgsAnalog{}
 return v
}
// @brief Append every canonical field of ur_msgs/SetAnalogOutputRequest.
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
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetAnalogOutputRequest :: proc(v: ^Ros1Ur_msgsSetAnalogOutputRequest, w: ^Writer) -> bool {
 if !write_Ros1Ur_msgsAnalog(&v.field_data,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputRequest.
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
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetAnalogOutputRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetAnalogOutputRequest,bool) {
 v:=init_Ros1Ur_msgsSetAnalogOutputRequest()
 {
 b,ok:=read_Ros1Ur_msgsAnalog(r,allocator); if !ok { return v,false }
 v.field_data=b
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetAnalogOutputRequest value.
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
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetAnalogOutputRequest :: proc(v: ^Ros1Ur_msgsSetAnalogOutputRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=6}
 if !write_Ros1Ur_msgsSetAnalogOutputRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=6}
 if !write_Ros1Ur_msgsSetAnalogOutputRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetAnalogOutputRequest value.
// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetAnalogOutputRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetAnalogOutputRequest,u32) {
 if len(bytes)<6 || len(bytes)>6 { return Ros1Ur_msgsSetAnalogOutputRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetAnalogOutputRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetAnalogOutputRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetAnalogOutputResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputResponse :: struct {
 // @brief ur_msgs/SetAnalogOutputResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_msgs/SetAnalogOutputResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_msgs/SetAnalogOutputResponse.
// @details Exact identity UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputResponse_Codec_Identity :: "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580"
// @brief Original ROS type name for ur_msgs/SetAnalogOutputResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputResponse_Native_Type :: "ur_msgs/SetAnalogOutputResponse"
// @brief Selected original native identity for ur_msgs/SetAnalogOutputResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetAnalogOutputResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetAnalogOutputResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetAnalogOutputResponse :: proc() -> Ros1Ur_msgsSetAnalogOutputResponse {
 v: Ros1Ur_msgsSetAnalogOutputResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_msgs/SetAnalogOutputResponse.
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
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetAnalogOutputResponse :: proc(v: ^Ros1Ur_msgsSetAnalogOutputResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputResponse.
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
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetAnalogOutputResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetAnalogOutputResponse,bool) {
 v:=init_Ros1Ur_msgsSetAnalogOutputResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetAnalogOutputResponse value.
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
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetAnalogOutputResponse :: proc(v: ^Ros1Ur_msgsSetAnalogOutputResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_msgsSetAnalogOutputResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_msgsSetAnalogOutputResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetAnalogOutputResponse value.
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
// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetAnalogOutputResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetAnalogOutputResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_msgsSetAnalogOutputResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetAnalogOutputResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetAnalogOutputResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetForceModeRequest value.
// @details All 13 declared fields are retained in source order. The canonical representation occupies 207..335 bytes
// and is identified by UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest :: struct {
 // @brief ur_msgs/SetForceModeRequest.task_frame: geometry_msgs/PoseStamped.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_task_frame: Ros1Geometry_msgsPoseStamped,
 // @brief ur_msgs/SetForceModeRequest.selection_vector_x: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_selection_vector_x: bool,
 // @brief ur_msgs/SetForceModeRequest.selection_vector_y: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_selection_vector_y: bool,
 // @brief ur_msgs/SetForceModeRequest.selection_vector_z: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_selection_vector_z: bool,
 // @brief ur_msgs/SetForceModeRequest.selection_vector_rx: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_selection_vector_rx: bool,
 // @brief ur_msgs/SetForceModeRequest.selection_vector_ry: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_selection_vector_ry: bool,
 // @brief ur_msgs/SetForceModeRequest.selection_vector_rz: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_selection_vector_rz: bool,
 // @brief ur_msgs/SetForceModeRequest.wrench: geometry_msgs/Wrench.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_wrench: Ros1Geometry_msgsWrench,
 // @brief ur_msgs/SetForceModeRequest.type: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_type: u8,
 // @brief ur_msgs/SetForceModeRequest.speed_limits: geometry_msgs/Twist.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed_limits: Ros1Geometry_msgsTwist,
 // @brief ur_msgs/SetForceModeRequest.deviation_limits: float32; exactly 6 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_deviation_limits: [6]f32,
 // @brief ur_msgs/SetForceModeRequest.damping_factor: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_damping_factor: f32,
 // @brief ur_msgs/SetForceModeRequest.gain_scaling: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
 field_gain_scaling: f32,
}
// @brief Maximum canonical extent of ur_msgs/SetForceModeRequest in bytes.
// @details The inclusive bound is 335 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_Maximum_Wire_Bytes :: 335
// @brief Canonical codec identity of ur_msgs/SetForceModeRequest.
// @details Exact identity UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_Codec_Identity :: "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b"
// @brief Original ROS type name for ur_msgs/SetForceModeRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_Native_Type :: "ur_msgs/SetForceModeRequest"
// @brief Selected original native identity for ur_msgs/SetForceModeRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_Native_Identity :: ""
// @brief ur_msgs/SetForceModeRequest.TCP_TO_ORIGIN: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_TCP_TO_ORIGIN :: u8(1)
// @brief ur_msgs/SetForceModeRequest.NO_TRANSFORM: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_NO_TRANSFORM :: u8(2)
// @brief ur_msgs/SetForceModeRequest.TCP_VELOCITY_TO_X_Y: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeRequest_TCP_VELOCITY_TO_X_Y :: u8(3)
// @brief Construct the declared defaults of ur_msgs/SetForceModeRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetForceModeRequest :: proc() -> Ros1Ur_msgsSetForceModeRequest {
 v: Ros1Ur_msgsSetForceModeRequest
 v.field_task_frame = Ros1Geometry_msgsPoseStamped{}
 v.field_selection_vector_x = false
 v.field_selection_vector_y = false
 v.field_selection_vector_z = false
 v.field_selection_vector_rx = false
 v.field_selection_vector_ry = false
 v.field_selection_vector_rz = false
 v.field_wrench = Ros1Geometry_msgsWrench{}
 v.field_type = 0
 v.field_speed_limits = Ros1Geometry_msgsTwist{}
 v.field_deviation_limits = [6]f32{0,0,0,0,0,0}
 v.field_damping_factor = 0
 v.field_gain_scaling = 0
 return v
}
// @brief Append every canonical field of ur_msgs/SetForceModeRequest.
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
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetForceModeRequest :: proc(v: ^Ros1Ur_msgsSetForceModeRequest, w: ^Writer) -> bool {
 if !write_Ros1Geometry_msgsPoseStamped(&v.field_task_frame,w) { return false }
 if !put_bool(w,v.field_selection_vector_x) { return false }
 if !put_bool(w,v.field_selection_vector_y) { return false }
 if !put_bool(w,v.field_selection_vector_z) { return false }
 if !put_bool(w,v.field_selection_vector_rx) { return false }
 if !put_bool(w,v.field_selection_vector_ry) { return false }
 if !put_bool(w,v.field_selection_vector_rz) { return false }
 if !write_Ros1Geometry_msgsWrench(&v.field_wrench,w) { return false }
 if !put_integer(w,u64(v.field_type),1) { return false }
 if !write_Ros1Geometry_msgsTwist(&v.field_speed_limits,w) { return false }
 for e in v.field_deviation_limits {
 if !put_float32(w,e) { return false }
 }
 if !put_float32(w,v.field_damping_factor) { return false }
 if !put_float32(w,v.field_gain_scaling) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetForceModeRequest.
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
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetForceModeRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetForceModeRequest,bool) {
 v:=init_Ros1Ur_msgsSetForceModeRequest()
 {
 b,ok:=read_Ros1Geometry_msgsPoseStamped(r,allocator); if !ok { return v,false }
 v.field_task_frame=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_selection_vector_x=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_selection_vector_y=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_selection_vector_z=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_selection_vector_rx=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_selection_vector_ry=bool(b)
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_selection_vector_rz=bool(b)
 }
 {
 b,ok:=read_Ros1Geometry_msgsWrench(r,allocator); if !ok { return v,false }
 v.field_wrench=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_type=u8(b)
 }
 {
 b,ok:=read_Ros1Geometry_msgsTwist(r,allocator); if !ok { return v,false }
 v.field_speed_limits=b
 }
 for &e in v.field_deviation_limits {
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 e=f32(b)
 }
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_damping_factor=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_gain_scaling=f32(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetForceModeRequest value.
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
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetForceModeRequest :: proc(v: ^Ros1Ur_msgsSetForceModeRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=335}
 if !write_Ros1Ur_msgsSetForceModeRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=335}
 if !write_Ros1Ur_msgsSetForceModeRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetForceModeRequest value.
// @details Require the complete 207..335-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetForceModeRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetForceModeRequest,u32) {
 if len(bytes)<207 || len(bytes)>335 { return Ros1Ur_msgsSetForceModeRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetForceModeRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetForceModeRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetForceModeResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeResponse :: struct {
 // @brief ur_msgs/SetForceModeResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_msgs/SetForceModeResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_msgs/SetForceModeResponse.
// @details Exact identity UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeResponse_Codec_Identity :: "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c"
// @brief Original ROS type name for ur_msgs/SetForceModeResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeResponse_Native_Type :: "ur_msgs/SetForceModeResponse"
// @brief Selected original native identity for ur_msgs/SetForceModeResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetForceModeResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetForceModeResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetForceModeResponse :: proc() -> Ros1Ur_msgsSetForceModeResponse {
 v: Ros1Ur_msgsSetForceModeResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_msgs/SetForceModeResponse.
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
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetForceModeResponse :: proc(v: ^Ros1Ur_msgsSetForceModeResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetForceModeResponse.
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
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetForceModeResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetForceModeResponse,bool) {
 v:=init_Ros1Ur_msgsSetForceModeResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetForceModeResponse value.
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
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetForceModeResponse :: proc(v: ^Ros1Ur_msgsSetForceModeResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_msgsSetForceModeResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_msgsSetForceModeResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetForceModeResponse value.
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
// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetForceModeResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetForceModeResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_msgsSetForceModeResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetForceModeResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetForceModeResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetIORequest value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is
// identified by UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest :: struct {
 // @brief ur_msgs/SetIORequest.fun: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_fun: i8,
 // @brief ur_msgs/SetIORequest.pin: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_pin: i8,
 // @brief ur_msgs/SetIORequest.state: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
 field_state: f32,
}
// @brief Maximum canonical extent of ur_msgs/SetIORequest in bytes.
// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_Maximum_Wire_Bytes :: 6
// @brief Canonical codec identity of ur_msgs/SetIORequest.
// @details Exact identity UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_Codec_Identity :: "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872"
// @brief Original ROS type name for ur_msgs/SetIORequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_Native_Type :: "ur_msgs/SetIORequest"
// @brief Selected original native identity for ur_msgs/SetIORequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_Native_Identity :: ""
// @brief ur_msgs/SetIORequest.PIN_AOUT0: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_AOUT0 :: i8(0)
// @brief ur_msgs/SetIORequest.PIN_AOUT1: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_AOUT1 :: i8(1)
// @brief ur_msgs/SetIORequest.PIN_DOUT0: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT0 :: i8(0)
// @brief ur_msgs/SetIORequest.PIN_DOUT1: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT1 :: i8(1)
// @brief ur_msgs/SetIORequest.PIN_DOUT2: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT2 :: i8(2)
// @brief ur_msgs/SetIORequest.PIN_DOUT3: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT3 :: i8(3)
// @brief ur_msgs/SetIORequest.PIN_DOUT4: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT4 :: i8(4)
// @brief ur_msgs/SetIORequest.PIN_DOUT5: original int8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT5 :: i8(5)
// @brief ur_msgs/SetIORequest.PIN_DOUT6: original int8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT6 :: i8(6)
// @brief ur_msgs/SetIORequest.PIN_DOUT7: original int8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_DOUT7 :: i8(7)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT0: original int8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT0 :: i8(8)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT1: original int8 constant.
// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT1 :: i8(9)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT2: original int8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT2 :: i8(10)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT3: original int8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT3 :: i8(11)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT4: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT4 :: i8(12)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT5: original int8 constant.
// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT5 :: i8(13)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT6: original int8 constant.
// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT6 :: i8(14)
// @brief ur_msgs/SetIORequest.PIN_CONF_OUT7: original int8 constant.
// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_CONF_OUT7 :: i8(15)
// @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT0: original int8 constant.
// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT0 :: i8(16)
// @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT1: original int8 constant.
// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_PIN_TOOL_DOUT1 :: i8(17)
// @brief ur_msgs/SetIORequest.FUN_SET_DIGITAL_OUT: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_FUN_SET_DIGITAL_OUT :: i8(1)
// @brief ur_msgs/SetIORequest.FUN_SET_FLAG: original int8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_FUN_SET_FLAG :: i8(2)
// @brief ur_msgs/SetIORequest.FUN_SET_ANALOG_OUT: original int8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_FUN_SET_ANALOG_OUT :: i8(3)
// @brief ur_msgs/SetIORequest.FUN_SET_TOOL_VOLTAGE: original int8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_FUN_SET_TOOL_VOLTAGE :: i8(4)
// @brief ur_msgs/SetIORequest.STATE_OFF: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_STATE_OFF :: i8(0)
// @brief ur_msgs/SetIORequest.STATE_ON: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_STATE_ON :: i8(1)
// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_0V: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_0V :: i8(0)
// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_12V: original int8 constant.
// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_12V :: i8(12)
// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_24V: original int8 constant.
// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIORequest_STATE_TOOL_VOLTAGE_24V :: i8(24)
// @brief Construct the declared defaults of ur_msgs/SetIORequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetIORequest :: proc() -> Ros1Ur_msgsSetIORequest {
 v: Ros1Ur_msgsSetIORequest
 v.field_fun = 0
 v.field_pin = 0
 v.field_state = 0
 return v
}
// @brief Append every canonical field of ur_msgs/SetIORequest.
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
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetIORequest :: proc(v: ^Ros1Ur_msgsSetIORequest, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_fun),1) { return false }
 if !put_integer(w,u64(v.field_pin),1) { return false }
 if !put_float32(w,v.field_state) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetIORequest.
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
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetIORequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetIORequest,bool) {
 v:=init_Ros1Ur_msgsSetIORequest()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_fun=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_pin=i8(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_state=f32(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetIORequest value.
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
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetIORequest :: proc(v: ^Ros1Ur_msgsSetIORequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=6}
 if !write_Ros1Ur_msgsSetIORequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=6}
 if !write_Ros1Ur_msgsSetIORequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetIORequest value.
// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsSetIORequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetIORequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetIORequest,u32) {
 if len(bytes)<6 || len(bytes)>6 { return Ros1Ur_msgsSetIORequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetIORequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetIORequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetIOResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIOResponse :: struct {
 // @brief ur_msgs/SetIOResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_msgs/SetIOResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIOResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_msgs/SetIOResponse.
// @details Exact identity UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIOResponse_Codec_Identity :: "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61"
// @brief Original ROS type name for ur_msgs/SetIOResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIOResponse_Native_Type :: "ur_msgs/SetIOResponse"
// @brief Selected original native identity for ur_msgs/SetIOResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetIOResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetIOResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetIOResponse :: proc() -> Ros1Ur_msgsSetIOResponse {
 v: Ros1Ur_msgsSetIOResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_msgs/SetIOResponse.
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
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetIOResponse :: proc(v: ^Ros1Ur_msgsSetIOResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetIOResponse.
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
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetIOResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetIOResponse,bool) {
 v:=init_Ros1Ur_msgsSetIOResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetIOResponse value.
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
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetIOResponse :: proc(v: ^Ros1Ur_msgsSetIOResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_msgsSetIOResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_msgsSetIOResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetIOResponse value.
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
// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetIOResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetIOResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_msgsSetIOResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetIOResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetIOResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetPayloadRequest value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..28 bytes and
// is identified by UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadRequest :: struct {
 // @brief ur_msgs/SetPayloadRequest.mass: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_mass: f32,
 // @brief ur_msgs/SetPayloadRequest.center_of_gravity: geometry_msgs/Vector3.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
 field_center_of_gravity: Ros1Geometry_msgsVector3,
}
// @brief Maximum canonical extent of ur_msgs/SetPayloadRequest in bytes.
// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadRequest_Maximum_Wire_Bytes :: 28
// @brief Canonical codec identity of ur_msgs/SetPayloadRequest.
// @details Exact identity UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadRequest_Codec_Identity :: "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3"
// @brief Original ROS type name for ur_msgs/SetPayloadRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadRequest_Native_Type :: "ur_msgs/SetPayloadRequest"
// @brief Selected original native identity for ur_msgs/SetPayloadRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetPayloadRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetPayloadRequest :: proc() -> Ros1Ur_msgsSetPayloadRequest {
 v: Ros1Ur_msgsSetPayloadRequest
 v.field_mass = 0
 v.field_center_of_gravity = Ros1Geometry_msgsVector3{}
 return v
}
// @brief Append every canonical field of ur_msgs/SetPayloadRequest.
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
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetPayloadRequest :: proc(v: ^Ros1Ur_msgsSetPayloadRequest, w: ^Writer) -> bool {
 if !put_float32(w,v.field_mass) { return false }
 if !write_Ros1Geometry_msgsVector3(&v.field_center_of_gravity,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetPayloadRequest.
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
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetPayloadRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetPayloadRequest,bool) {
 v:=init_Ros1Ur_msgsSetPayloadRequest()
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_mass=f32(b)
 }
 {
 b,ok:=read_Ros1Geometry_msgsVector3(r,allocator); if !ok { return v,false }
 v.field_center_of_gravity=b
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetPayloadRequest value.
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
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetPayloadRequest :: proc(v: ^Ros1Ur_msgsSetPayloadRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=28}
 if !write_Ros1Ur_msgsSetPayloadRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=28}
 if !write_Ros1Ur_msgsSetPayloadRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetPayloadRequest value.
// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetPayloadRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetPayloadRequest,u32) {
 if len(bytes)<28 || len(bytes)>28 { return Ros1Ur_msgsSetPayloadRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetPayloadRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetPayloadRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetPayloadResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadResponse :: struct {
 // @brief ur_msgs/SetPayloadResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_msgs/SetPayloadResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_msgs/SetPayloadResponse.
// @details Exact identity UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadResponse_Codec_Identity :: "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73"
// @brief Original ROS type name for ur_msgs/SetPayloadResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadResponse_Native_Type :: "ur_msgs/SetPayloadResponse"
// @brief Selected original native identity for ur_msgs/SetPayloadResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetPayloadResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetPayloadResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetPayloadResponse :: proc() -> Ros1Ur_msgsSetPayloadResponse {
 v: Ros1Ur_msgsSetPayloadResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_msgs/SetPayloadResponse.
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
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetPayloadResponse :: proc(v: ^Ros1Ur_msgsSetPayloadResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetPayloadResponse.
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
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetPayloadResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetPayloadResponse,bool) {
 v:=init_Ros1Ur_msgsSetPayloadResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetPayloadResponse value.
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
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetPayloadResponse :: proc(v: ^Ros1Ur_msgsSetPayloadResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_msgsSetPayloadResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_msgsSetPayloadResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetPayloadResponse value.
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
// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetPayloadResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetPayloadResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_msgsSetPayloadResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetPayloadResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetPayloadResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionRequest value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
// identified by UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionRequest :: struct {
 // @brief ur_msgs/SetSpeedSliderFractionRequest.speed_slider_fraction: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
 field_speed_slider_fraction: f64,
}
// @brief Maximum canonical extent of ur_msgs/SetSpeedSliderFractionRequest in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionRequest_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionRequest.
// @details Exact identity UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionRequest_Codec_Identity :: "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32"
// @brief Original ROS type name for ur_msgs/SetSpeedSliderFractionRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionRequest_Native_Type :: "ur_msgs/SetSpeedSliderFractionRequest"
// @brief Selected original native identity for ur_msgs/SetSpeedSliderFractionRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionRequest_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetSpeedSliderFractionRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetSpeedSliderFractionRequest :: proc() -> Ros1Ur_msgsSetSpeedSliderFractionRequest {
 v: Ros1Ur_msgsSetSpeedSliderFractionRequest
 v.field_speed_slider_fraction = 0
 return v
}
// @brief Append every canonical field of ur_msgs/SetSpeedSliderFractionRequest.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetSpeedSliderFractionRequest :: proc(v: ^Ros1Ur_msgsSetSpeedSliderFractionRequest, w: ^Writer) -> bool {
 if !put_float64(w,v.field_speed_slider_fraction) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionRequest.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetSpeedSliderFractionRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetSpeedSliderFractionRequest,bool) {
 v:=init_Ros1Ur_msgsSetSpeedSliderFractionRequest()
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_speed_slider_fraction=f64(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetSpeedSliderFractionRequest value.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetSpeedSliderFractionRequest :: proc(v: ^Ros1Ur_msgsSetSpeedSliderFractionRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros1Ur_msgsSetSpeedSliderFractionRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros1Ur_msgsSetSpeedSliderFractionRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionRequest value.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetSpeedSliderFractionRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetSpeedSliderFractionRequest,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros1Ur_msgsSetSpeedSliderFractionRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetSpeedSliderFractionRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetSpeedSliderFractionRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionResponse value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is
// identified by UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionResponse :: struct {
 // @brief ur_msgs/SetSpeedSliderFractionResponse.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
}
// @brief Maximum canonical extent of ur_msgs/SetSpeedSliderFractionResponse in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionResponse_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionResponse.
// @details Exact identity UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionResponse_Codec_Identity :: "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0"
// @brief Original ROS type name for ur_msgs/SetSpeedSliderFractionResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionResponse_Native_Type :: "ur_msgs/SetSpeedSliderFractionResponse"
// @brief Selected original native identity for ur_msgs/SetSpeedSliderFractionResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsSetSpeedSliderFractionResponse_Native_Identity :: ""
// @brief Construct the declared defaults of ur_msgs/SetSpeedSliderFractionResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsSetSpeedSliderFractionResponse :: proc() -> Ros1Ur_msgsSetSpeedSliderFractionResponse {
 v: Ros1Ur_msgsSetSpeedSliderFractionResponse
 v.field_success = false
 return v
}
// @brief Append every canonical field of ur_msgs/SetSpeedSliderFractionResponse.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsSetSpeedSliderFractionResponse :: proc(v: ^Ros1Ur_msgsSetSpeedSliderFractionResponse, w: ^Writer) -> bool {
 if !put_bool(w,v.field_success) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionResponse.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsSetSpeedSliderFractionResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetSpeedSliderFractionResponse,bool) {
 v:=init_Ros1Ur_msgsSetSpeedSliderFractionResponse()
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/SetSpeedSliderFractionResponse value.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsSetSpeedSliderFractionResponse :: proc(v: ^Ros1Ur_msgsSetSpeedSliderFractionResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros1Ur_msgsSetSpeedSliderFractionResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros1Ur_msgsSetSpeedSliderFractionResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionResponse value.
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
// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsSetSpeedSliderFractionResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsSetSpeedSliderFractionResponse,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros1Ur_msgsSetSpeedSliderFractionResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsSetSpeedSliderFractionResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsSetSpeedSliderFractionResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 1 ur_msgs/ToolDataMsg value.
// @details All 9 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and
// is identified by UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg :: struct {
 // @brief ur_msgs/ToolDataMsg.analog_input_range2: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input_range2: i8,
 // @brief ur_msgs/ToolDataMsg.analog_input_range3: int8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input_range3: i8,
 // @brief ur_msgs/ToolDataMsg.analog_input2: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input2: f64,
 // @brief ur_msgs/ToolDataMsg.analog_input3: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_analog_input3: f64,
 // @brief ur_msgs/ToolDataMsg.tool_voltage_48v: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_voltage_48v: f32,
 // @brief ur_msgs/ToolDataMsg.tool_output_voltage: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_output_voltage: u8,
 // @brief ur_msgs/ToolDataMsg.tool_current: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_current: f32,
 // @brief ur_msgs/ToolDataMsg.tool_temperature: float32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_temperature: f32,
 // @brief ur_msgs/ToolDataMsg.tool_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 // field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 // conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 // ownership follow the enclosing decode function.
 // @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
 field_tool_mode: u8,
}
// @brief Maximum canonical extent of ur_msgs/ToolDataMsg in bytes.
// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_Maximum_Wire_Bytes :: 32
// @brief Canonical codec identity of ur_msgs/ToolDataMsg.
// @details Exact identity UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390 binds field order,
// shape and bounds. It does not replace the native type identity.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_Codec_Identity :: "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390"
// @brief Original ROS type name for ur_msgs/ToolDataMsg.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_Native_Type :: "ur_msgs/ToolDataMsg"
// @brief Selected original native identity for ur_msgs/ToolDataMsg.
// @details Absent: this source profile establishes no native identity.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_Native_Identity :: ""
// @brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_CURRENT: original int8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_CURRENT :: i8(0)
// @brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_VOLTAGE: original int8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_ANALOG_INPUT_RANGE_VOLTAGE :: i8(1)
// @brief ur_msgs/ToolDataMsg.TOOL_BOOTLOADER_MODE: original uint8 constant.
// @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_TOOL_BOOTLOADER_MODE :: u8(249)
// @brief ur_msgs/ToolDataMsg.TOOL_RUNNING_MODE: original uint8 constant.
// @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_TOOL_RUNNING_MODE :: u8(253)
// @brief ur_msgs/ToolDataMsg.TOOL_IDLE_MODE: original uint8 constant.
// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
Ros1Ur_msgsToolDataMsg_TOOL_IDLE_MODE :: u8(255)
// @brief Construct the declared defaults of ur_msgs/ToolDataMsg.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and string
// defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
init_Ros1Ur_msgsToolDataMsg :: proc() -> Ros1Ur_msgsToolDataMsg {
 v: Ros1Ur_msgsToolDataMsg
 v.field_analog_input_range2 = 0
 v.field_analog_input_range3 = 0
 v.field_analog_input2 = 0
 v.field_analog_input3 = 0
 v.field_tool_voltage_48v = 0
 v.field_tool_output_voltage = 0
 v.field_tool_current = 0
 v.field_tool_temperature = 0
 v.field_tool_mode = 0
 return v
}
// @brief Append every canonical field of ur_msgs/ToolDataMsg.
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
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
write_Ros1Ur_msgsToolDataMsg :: proc(v: ^Ros1Ur_msgsToolDataMsg, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_analog_input_range2),1) { return false }
 if !put_integer(w,u64(v.field_analog_input_range3),1) { return false }
 if !put_float64(w,v.field_analog_input2) { return false }
 if !put_float64(w,v.field_analog_input3) { return false }
 if !put_float32(w,v.field_tool_voltage_48v) { return false }
 if !put_integer(w,u64(v.field_tool_output_voltage),1) { return false }
 if !put_float32(w,v.field_tool_current) { return false }
 if !put_float32(w,v.field_tool_temperature) { return false }
 if !put_integer(w,u64(v.field_tool_mode),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of ur_msgs/ToolDataMsg.
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
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
read_Ros1Ur_msgsToolDataMsg :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros1Ur_msgsToolDataMsg,bool) {
 v:=init_Ros1Ur_msgsToolDataMsg()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_analog_input_range2=i8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_analog_input_range3=i8(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_analog_input2=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_analog_input3=f64(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_tool_voltage_48v=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tool_output_voltage=u8(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_tool_current=f32(b)
 }
 {
 b,ok:=get_float32(r); if !ok { return v,false }
 v.field_tool_temperature=f32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_tool_mode=u8(b)
 }
 return v,true
}
// @brief Encode one complete ur_msgs/ToolDataMsg value.
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
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
encode_Ros1Ur_msgsToolDataMsg :: proc(v: ^Ros1Ur_msgsToolDataMsg, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=32}
 if !write_Ros1Ur_msgsToolDataMsg(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=32}
 if !write_Ros1Ur_msgsToolDataMsg(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete ur_msgs/ToolDataMsg value.
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
// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/odin/API-CONTRACT.md
decode_Ros1Ur_msgsToolDataMsg :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros1Ur_msgsToolDataMsg,u32) {
 if len(bytes)<32 || len(bytes)>32 { return Ros1Ur_msgsToolDataMsg{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros1Ur_msgsToolDataMsg(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros1Ur_msgsToolDataMsg{},reader.code }
 return value,0
}
