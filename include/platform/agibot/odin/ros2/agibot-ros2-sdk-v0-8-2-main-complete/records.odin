// @file records.odin
// @brief Full agibot odin codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_2_main values in odin. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
package roswasm
// Generated complete bounded values; no I/O or authority.
import "base:runtime"
// @brief Complete ROS 2 aimdk_msgs/msg/AgentPropertyIdType value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType :: struct {
 // @brief aimdk_msgs/msg/AgentPropertyIdType.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
 field_value: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/AgentPropertyIdType in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of aimdk_msgs/msg/AgentPropertyIdType.
// @details Exact identity UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_Codec_Identity :: "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b"
// @brief Original ROS type name for aimdk_msgs/msg/AgentPropertyIdType.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_Native_Type :: "aimdk_msgs/msg/AgentPropertyIdType"
// @brief Selected original native identity for aimdk_msgs/msg/AgentPropertyIdType.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_Native_Identity :: ""
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_UNDEFINED: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_UNDEFINED :: u8(0)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_LANGUAGE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE :: u8(1)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_RUN_MODE: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_RUN_MODE :: u8(2)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_GREET: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_GREET :: u8(3)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_HEAD_FOLLOW: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_HEAD_FOLLOW :: u8(4)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_DUPLEX_TIMEOUT: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_DUPLEX_TIMEOUT :: u8(5)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_ENVIRONMENT_SWITCH: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_ENVIRONMENT_SWITCH :: u8(6)
// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_WELCOME_STATUS: original uint8 constant.
// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_WELCOME_STATUS :: u8(7)
// @brief Construct the declared defaults of aimdk_msgs/msg/AgentPropertyIdType.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc() -> Ros2Aimdk_msgsMsgAgentPropertyIdType {
 v: Ros2Aimdk_msgsMsgAgentPropertyIdType
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/AgentPropertyIdType.
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
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc(v: ^Ros2Aimdk_msgsMsgAgentPropertyIdType, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentPropertyIdType.
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
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAgentPropertyIdType,bool) {
 v:=init_Ros2Aimdk_msgsMsgAgentPropertyIdType()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/AgentPropertyIdType value.
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
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc(v: ^Ros2Aimdk_msgsMsgAgentPropertyIdType, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Aimdk_msgsMsgAgentPropertyIdType(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Aimdk_msgsMsgAgentPropertyIdType(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/AgentPropertyIdType value.
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
// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAgentPropertyIdType,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Aimdk_msgsMsgAgentPropertyIdType{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgAgentPropertyIdType(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgAgentPropertyIdType{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/AgentPropertiesValue value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..133 bytes
// and is identified by UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertiesValue :: struct {
 // @brief aimdk_msgs/msg/AgentPropertiesValue.key: aimdk_msgs/msg/AgentPropertyIdType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
 field_key: Ros2Aimdk_msgsMsgAgentPropertyIdType,
 // @brief aimdk_msgs/msg/AgentPropertiesValue.value: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
 field_value: string,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/AgentPropertiesValue in bytes.
// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertiesValue_Maximum_Wire_Bytes :: 133
// @brief Canonical codec identity of aimdk_msgs/msg/AgentPropertiesValue.
// @details Exact identity UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertiesValue_Codec_Identity :: "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a"
// @brief Original ROS type name for aimdk_msgs/msg/AgentPropertiesValue.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertiesValue_Native_Type :: "aimdk_msgs/msg/AgentPropertiesValue"
// @brief Selected original native identity for aimdk_msgs/msg/AgentPropertiesValue.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentPropertiesValue_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/AgentPropertiesValue.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc() -> Ros2Aimdk_msgsMsgAgentPropertiesValue {
 v: Ros2Aimdk_msgsMsgAgentPropertiesValue
 v.field_key = Ros2Aimdk_msgsMsgAgentPropertyIdType{}
 v.field_value = ""
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/AgentPropertiesValue.
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
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc(v: ^Ros2Aimdk_msgsMsgAgentPropertiesValue, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgAgentPropertyIdType(&v.field_key,w) { return false }
 if !put_string(w,v.field_value,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentPropertiesValue.
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
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAgentPropertiesValue,bool) {
 v:=init_Ros2Aimdk_msgsMsgAgentPropertiesValue()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgAgentPropertyIdType(r,allocator); if !ok { return v,false }
 v.field_key=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_value=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/AgentPropertiesValue value.
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
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc(v: ^Ros2Aimdk_msgsMsgAgentPropertiesValue, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=133}
 if !write_Ros2Aimdk_msgsMsgAgentPropertiesValue(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=133}
 if !write_Ros2Aimdk_msgsMsgAgentPropertiesValue(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/AgentPropertiesValue value.
// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAgentPropertiesValue,u32) {
 if len(bytes)<5 || len(bytes)>133 { return Ros2Aimdk_msgsMsgAgentPropertiesValue{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgAgentPropertiesValue(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgAgentPropertiesValue{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/AgentProperties value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..536 bytes
// and is identified by UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentProperties :: struct {
 // @brief aimdk_msgs/msg/AgentProperties.properties: aimdk_msgs/msg/AgentPropertiesValue; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
 field_properties: []Ros2Aimdk_msgsMsgAgentPropertiesValue,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/AgentProperties in bytes.
// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentProperties_Maximum_Wire_Bytes :: 536
// @brief Canonical codec identity of aimdk_msgs/msg/AgentProperties.
// @details Exact identity UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentProperties_Codec_Identity :: "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f"
// @brief Original ROS type name for aimdk_msgs/msg/AgentProperties.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentProperties_Native_Type :: "aimdk_msgs/msg/AgentProperties"
// @brief Selected original native identity for aimdk_msgs/msg/AgentProperties.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAgentProperties_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/AgentProperties.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgAgentProperties :: proc() -> Ros2Aimdk_msgsMsgAgentProperties {
 v: Ros2Aimdk_msgsMsgAgentProperties
 v.field_properties = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/AgentProperties.
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
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgAgentProperties :: proc(v: ^Ros2Aimdk_msgsMsgAgentProperties, w: ^Writer) -> bool {
 if len(v.field_properties)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_properties)),4) { return false }
 for e in v.field_properties {
 item:=e
 if !write_Ros2Aimdk_msgsMsgAgentPropertiesValue(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentProperties.
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
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgAgentProperties :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAgentProperties,bool) {
 v:=init_Ros2Aimdk_msgsMsgAgentProperties()
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_properties=make([]Ros2Aimdk_msgsMsgAgentPropertiesValue,int(n),allocator)
 }
 for &e in v.field_properties {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgAgentPropertiesValue(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/AgentProperties value.
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
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgAgentProperties :: proc(v: ^Ros2Aimdk_msgsMsgAgentProperties, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=536}
 if !write_Ros2Aimdk_msgsMsgAgentProperties(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=536}
 if !write_Ros2Aimdk_msgsMsgAgentProperties(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/AgentProperties value.
// @details Require the complete 4..536-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgAgentProperties :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAgentProperties,u32) {
 if len(bytes)<4 || len(bytes)>536 { return Ros2Aimdk_msgsMsgAgentProperties{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgAgentProperties(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgAgentProperties{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/AudioVadStateType value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType :: struct {
 // @brief aimdk_msgs/msg/AudioVadStateType.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
 field_value: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/AudioVadStateType in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of aimdk_msgs/msg/AudioVadStateType.
// @details Exact identity UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_Codec_Identity :: "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526"
// @brief Original ROS type name for aimdk_msgs/msg/AudioVadStateType.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_Native_Type :: "aimdk_msgs/msg/AudioVadStateType"
// @brief Selected original native identity for aimdk_msgs/msg/AudioVadStateType.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_Native_Identity :: ""
// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_NONE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_NONE :: u8(0)
// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_BEGIN: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_BEGIN :: u8(1)
// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_PROCESSING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_PROCESSING :: u8(2)
// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_END: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_END :: u8(3)
// @brief Construct the declared defaults of aimdk_msgs/msg/AudioVadStateType.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgAudioVadStateType :: proc() -> Ros2Aimdk_msgsMsgAudioVadStateType {
 v: Ros2Aimdk_msgsMsgAudioVadStateType
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/AudioVadStateType.
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
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgAudioVadStateType :: proc(v: ^Ros2Aimdk_msgsMsgAudioVadStateType, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/AudioVadStateType.
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
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgAudioVadStateType :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAudioVadStateType,bool) {
 v:=init_Ros2Aimdk_msgsMsgAudioVadStateType()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/AudioVadStateType value.
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
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgAudioVadStateType :: proc(v: ^Ros2Aimdk_msgsMsgAudioVadStateType, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Aimdk_msgsMsgAudioVadStateType(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Aimdk_msgsMsgAudioVadStateType(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/AudioVadStateType value.
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
// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgAudioVadStateType :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgAudioVadStateType,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Aimdk_msgsMsgAudioVadStateType{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgAudioVadStateType(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgAudioVadStateType{},reader.code }
 return value,0
}
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
// @brief Complete ROS 2 aimdk_msgs/msg/FaceEmojiStatus value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 47..2415 bytes
// and is identified by UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus :: struct {
 // @brief aimdk_msgs/msg/FaceEmojiStatus.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.e_path: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_e_path: string,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.e_path_list: string; 0..16 elements; each string is 0..128 bytes; strict
 // UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_e_path_list: []string,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.e_id: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_e_id: u8,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_mode: u8,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.priority: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_priority: i32,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.status: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_status: u8,
 // @brief aimdk_msgs/msg/FaceEmojiStatus.time_to_end_ms: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
 field_time_to_end_ms: f64,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/FaceEmojiStatus in bytes.
// @details The inclusive bound is 2415 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_Maximum_Wire_Bytes :: 2415
// @brief Canonical codec identity of aimdk_msgs/msg/FaceEmojiStatus.
// @details Exact identity UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_Codec_Identity :: "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7"
// @brief Original ROS type name for aimdk_msgs/msg/FaceEmojiStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_Native_Type :: "aimdk_msgs/msg/FaceEmojiStatus"
// @brief Selected original native identity for aimdk_msgs/msg/FaceEmojiStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_Native_Identity :: ""
// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_IDLE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_IDLE :: u8(0)
// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_START: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_START :: u8(1)
// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_RUNNING: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_RUNNING :: u8(2)
// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_FINISHED: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_FINISHED :: u8(3)
// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_STOPPED: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_STOPPED :: u8(4)
// @brief Construct the declared defaults of aimdk_msgs/msg/FaceEmojiStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc() -> Ros2Aimdk_msgsMsgFaceEmojiStatus {
 v: Ros2Aimdk_msgsMsgFaceEmojiStatus
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_e_path = ""
 v.field_e_path_list = nil
 v.field_e_id = 0
 v.field_mode = 0
 v.field_priority = 0
 v.field_status = 0
 v.field_time_to_end_ms = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/FaceEmojiStatus.
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
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc(v: ^Ros2Aimdk_msgsMsgFaceEmojiStatus, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_e_path,128) { return false }
 if len(v.field_e_path_list)>16 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_e_path_list)),4) { return false }
 for e in v.field_e_path_list {
 if !put_string(w,e,128) { return false }
 }
 if !put_integer(w,u64(v.field_e_id),1) { return false }
 if !put_integer(w,u64(v.field_mode),1) { return false }
 if !put_integer(w,u64(v.field_priority),4) { return false }
 if !put_integer(w,u64(v.field_status),1) { return false }
 if !put_float64(w,v.field_time_to_end_ms) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/FaceEmojiStatus.
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
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgFaceEmojiStatus,bool) {
 v:=init_Ros2Aimdk_msgsMsgFaceEmojiStatus()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_e_path=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>16 { r.code=22; return v,false }
 v.field_e_path_list=make([]string,int(n),allocator)
 }
 for &e in v.field_e_path_list {
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_e_id=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=u8(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority=i32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_status=u8(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_time_to_end_ms=f64(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/FaceEmojiStatus value.
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
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc(v: ^Ros2Aimdk_msgsMsgFaceEmojiStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2415}
 if !write_Ros2Aimdk_msgsMsgFaceEmojiStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2415}
 if !write_Ros2Aimdk_msgsMsgFaceEmojiStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/FaceEmojiStatus value.
// @details Require the complete 47..2415-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgFaceEmojiStatus,u32) {
 if len(bytes)<47 || len(bytes)>2415 { return Ros2Aimdk_msgsMsgFaceEmojiStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgFaceEmojiStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgFaceEmojiStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/HandCommand value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
// and is identified by UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommand :: struct {
 // @brief aimdk_msgs/msg/HandCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/HandCommand.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief aimdk_msgs/msg/HandCommand.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief aimdk_msgs/msg/HandCommand.acceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
 field_acceleration: f64,
 // @brief aimdk_msgs/msg/HandCommand.deceleration: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
 field_deceleration: f64,
 // @brief aimdk_msgs/msg/HandCommand.effort: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
 field_effort: f64,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/HandCommand in bytes.
// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommand_Maximum_Wire_Bytes :: 172
// @brief Canonical codec identity of aimdk_msgs/msg/HandCommand.
// @details Exact identity UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommand_Codec_Identity :: "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8"
// @brief Original ROS type name for aimdk_msgs/msg/HandCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommand_Native_Type :: "aimdk_msgs/msg/HandCommand"
// @brief Selected original native identity for aimdk_msgs/msg/HandCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommand_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/HandCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgHandCommand :: proc() -> Ros2Aimdk_msgsMsgHandCommand {
 v: Ros2Aimdk_msgsMsgHandCommand
 v.field_name = ""
 v.field_position = 0
 v.field_velocity = 0
 v.field_acceleration = 0
 v.field_deceleration = 0
 v.field_effort = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/HandCommand.
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
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgHandCommand :: proc(v: ^Ros2Aimdk_msgsMsgHandCommand, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_acceleration) { return false }
 if !put_float64(w,v.field_deceleration) { return false }
 if !put_float64(w,v.field_effort) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandCommand.
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
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgHandCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandCommand,bool) {
 v:=init_Ros2Aimdk_msgsMsgHandCommand()
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
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_deceleration=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_effort=f64(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/HandCommand value.
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
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgHandCommand :: proc(v: ^Ros2Aimdk_msgsMsgHandCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=172}
 if !write_Ros2Aimdk_msgsMsgHandCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=172}
 if !write_Ros2Aimdk_msgsMsgHandCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/HandCommand value.
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
// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgHandCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandCommand,u32) {
 if len(bytes)<44 || len(bytes)>172 { return Ros2Aimdk_msgsMsgHandCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgHandCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgHandCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/HandType value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType :: struct {
 // @brief aimdk_msgs/msg/HandType.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
 field_value: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/HandType in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of aimdk_msgs/msg/HandType.
// @details Exact identity UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_Codec_Identity :: "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6"
// @brief Original ROS type name for aimdk_msgs/msg/HandType.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_Native_Type :: "aimdk_msgs/msg/HandType"
// @brief Selected original native identity for aimdk_msgs/msg/HandType.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_Native_Identity :: ""
// @brief aimdk_msgs/msg/HandType.NONE: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_NONE :: u8(0)
// @brief aimdk_msgs/msg/HandType.NIMBLE_HANDS: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS :: u8(1)
// @brief aimdk_msgs/msg/HandType.CLAW: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_CLAW :: u8(2)
// @brief aimdk_msgs/msg/HandType.ERROR: original uint8 constant.
// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandType_ERROR :: u8(255)
// @brief Construct the declared defaults of aimdk_msgs/msg/HandType.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgHandType :: proc() -> Ros2Aimdk_msgsMsgHandType {
 v: Ros2Aimdk_msgsMsgHandType
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/HandType.
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
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgHandType :: proc(v: ^Ros2Aimdk_msgsMsgHandType, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandType.
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
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgHandType :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandType,bool) {
 v:=init_Ros2Aimdk_msgsMsgHandType()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/HandType value.
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
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgHandType :: proc(v: ^Ros2Aimdk_msgsMsgHandType, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Aimdk_msgsMsgHandType(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Aimdk_msgsMsgHandType(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/HandType value.
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
// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgHandType :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandType,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Aimdk_msgsMsgHandType{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgHandType(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgHandType{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/HandCommandArray value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 34..1538 bytes
// and is identified by UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommandArray :: struct {
 // @brief aimdk_msgs/msg/HandCommandArray.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/HandCommandArray.left_hand_type: aimdk_msgs/msg/HandType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_left_hand_type: Ros2Aimdk_msgsMsgHandType,
 // @brief aimdk_msgs/msg/HandCommandArray.left_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_left_hands: []Ros2Aimdk_msgsMsgHandCommand,
 // @brief aimdk_msgs/msg/HandCommandArray.right_hand_type: aimdk_msgs/msg/HandType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_right_hand_type: Ros2Aimdk_msgsMsgHandType,
 // @brief aimdk_msgs/msg/HandCommandArray.right_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
 field_right_hands: []Ros2Aimdk_msgsMsgHandCommand,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/HandCommandArray in bytes.
// @details The inclusive bound is 1538 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommandArray_Maximum_Wire_Bytes :: 1538
// @brief Canonical codec identity of aimdk_msgs/msg/HandCommandArray.
// @details Exact identity UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommandArray_Codec_Identity :: "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e"
// @brief Original ROS type name for aimdk_msgs/msg/HandCommandArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommandArray_Native_Type :: "aimdk_msgs/msg/HandCommandArray"
// @brief Selected original native identity for aimdk_msgs/msg/HandCommandArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandCommandArray_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/HandCommandArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgHandCommandArray :: proc() -> Ros2Aimdk_msgsMsgHandCommandArray {
 v: Ros2Aimdk_msgsMsgHandCommandArray
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_left_hand_type = Ros2Aimdk_msgsMsgHandType{}
 v.field_left_hands = nil
 v.field_right_hand_type = Ros2Aimdk_msgsMsgHandType{}
 v.field_right_hands = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/HandCommandArray.
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
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgHandCommandArray :: proc(v: ^Ros2Aimdk_msgsMsgHandCommandArray, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgHandType(&v.field_left_hand_type,w) { return false }
 if len(v.field_left_hands)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_left_hands)),4) { return false }
 for e in v.field_left_hands {
 item:=e
 if !write_Ros2Aimdk_msgsMsgHandCommand(&item,w) { return false }
 }
 if !write_Ros2Aimdk_msgsMsgHandType(&v.field_right_hand_type,w) { return false }
 if len(v.field_right_hands)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_right_hands)),4) { return false }
 for e in v.field_right_hands {
 item:=e
 if !write_Ros2Aimdk_msgsMsgHandCommand(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandCommandArray.
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
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgHandCommandArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandCommandArray,bool) {
 v:=init_Ros2Aimdk_msgsMsgHandCommandArray()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandType(r,allocator); if !ok { return v,false }
 v.field_left_hand_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_left_hands=make([]Ros2Aimdk_msgsMsgHandCommand,int(n),allocator)
 }
 for &e in v.field_left_hands {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandCommand(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandType(r,allocator); if !ok { return v,false }
 v.field_right_hand_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_right_hands=make([]Ros2Aimdk_msgsMsgHandCommand,int(n),allocator)
 }
 for &e in v.field_right_hands {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandCommand(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/HandCommandArray value.
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
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgHandCommandArray :: proc(v: ^Ros2Aimdk_msgsMsgHandCommandArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1538}
 if !write_Ros2Aimdk_msgsMsgHandCommandArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1538}
 if !write_Ros2Aimdk_msgsMsgHandCommandArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/HandCommandArray value.
// @details Require the complete 34..1538-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgHandCommandArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandCommandArray,u32) {
 if len(bytes)<34 || len(bytes)>1538 { return Ros2Aimdk_msgsMsgHandCommandArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgHandCommandArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgHandCommandArray{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/HandState value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 36..164 bytes
// and is identified by UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandState :: struct {
 // @brief aimdk_msgs/msg/HandState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/HandState.position: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
 field_position: f64,
 // @brief aimdk_msgs/msg/HandState.velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
 field_velocity: f64,
 // @brief aimdk_msgs/msg/HandState.effort: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
 field_effort: f64,
 // @brief aimdk_msgs/msg/HandState.state: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
 field_state: i32,
 // @brief aimdk_msgs/msg/HandState.faultcode: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
 field_faultcode: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/HandState in bytes.
// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandState_Maximum_Wire_Bytes :: 164
// @brief Canonical codec identity of aimdk_msgs/msg/HandState.
// @details Exact identity UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandState_Codec_Identity :: "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c"
// @brief Original ROS type name for aimdk_msgs/msg/HandState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandState_Native_Type :: "aimdk_msgs/msg/HandState"
// @brief Selected original native identity for aimdk_msgs/msg/HandState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandState_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/HandState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgHandState :: proc() -> Ros2Aimdk_msgsMsgHandState {
 v: Ros2Aimdk_msgsMsgHandState
 v.field_name = ""
 v.field_position = 0
 v.field_velocity = 0
 v.field_effort = 0
 v.field_state = 0
 v.field_faultcode = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/HandState.
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
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgHandState :: proc(v: ^Ros2Aimdk_msgsMsgHandState, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_float64(w,v.field_position) { return false }
 if !put_float64(w,v.field_velocity) { return false }
 if !put_float64(w,v.field_effort) { return false }
 if !put_integer(w,u64(v.field_state),4) { return false }
 if !put_integer(w,u64(v.field_faultcode),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandState.
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
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgHandState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandState,bool) {
 v:=init_Ros2Aimdk_msgsMsgHandState()
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
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_state=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_faultcode=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/HandState value.
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
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgHandState :: proc(v: ^Ros2Aimdk_msgsMsgHandState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=164}
 if !write_Ros2Aimdk_msgsMsgHandState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=164}
 if !write_Ros2Aimdk_msgsMsgHandState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/HandState value.
// @details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgHandState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandState,u32) {
 if len(bytes)<36 || len(bytes)>164 { return Ros2Aimdk_msgsMsgHandState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgHandState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgHandState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/HandStateArray value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 34..1474 bytes
// and is identified by UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandStateArray :: struct {
 // @brief aimdk_msgs/msg/HandStateArray.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/HandStateArray.left_hand_type: aimdk_msgs/msg/HandType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_left_hand_type: Ros2Aimdk_msgsMsgHandType,
 // @brief aimdk_msgs/msg/HandStateArray.left_hands: aimdk_msgs/msg/HandState; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_left_hands: []Ros2Aimdk_msgsMsgHandState,
 // @brief aimdk_msgs/msg/HandStateArray.right_hand_type: aimdk_msgs/msg/HandType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_right_hand_type: Ros2Aimdk_msgsMsgHandType,
 // @brief aimdk_msgs/msg/HandStateArray.right_hands: aimdk_msgs/msg/HandState; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
 field_right_hands: []Ros2Aimdk_msgsMsgHandState,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/HandStateArray in bytes.
// @details The inclusive bound is 1474 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandStateArray_Maximum_Wire_Bytes :: 1474
// @brief Canonical codec identity of aimdk_msgs/msg/HandStateArray.
// @details Exact identity UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandStateArray_Codec_Identity :: "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d"
// @brief Original ROS type name for aimdk_msgs/msg/HandStateArray.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandStateArray_Native_Type :: "aimdk_msgs/msg/HandStateArray"
// @brief Selected original native identity for aimdk_msgs/msg/HandStateArray.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgHandStateArray_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/HandStateArray.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgHandStateArray :: proc() -> Ros2Aimdk_msgsMsgHandStateArray {
 v: Ros2Aimdk_msgsMsgHandStateArray
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_left_hand_type = Ros2Aimdk_msgsMsgHandType{}
 v.field_left_hands = nil
 v.field_right_hand_type = Ros2Aimdk_msgsMsgHandType{}
 v.field_right_hands = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/HandStateArray.
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
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgHandStateArray :: proc(v: ^Ros2Aimdk_msgsMsgHandStateArray, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgHandType(&v.field_left_hand_type,w) { return false }
 if len(v.field_left_hands)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_left_hands)),4) { return false }
 for e in v.field_left_hands {
 item:=e
 if !write_Ros2Aimdk_msgsMsgHandState(&item,w) { return false }
 }
 if !write_Ros2Aimdk_msgsMsgHandType(&v.field_right_hand_type,w) { return false }
 if len(v.field_right_hands)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_right_hands)),4) { return false }
 for e in v.field_right_hands {
 item:=e
 if !write_Ros2Aimdk_msgsMsgHandState(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandStateArray.
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
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgHandStateArray :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandStateArray,bool) {
 v:=init_Ros2Aimdk_msgsMsgHandStateArray()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandType(r,allocator); if !ok { return v,false }
 v.field_left_hand_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_left_hands=make([]Ros2Aimdk_msgsMsgHandState,int(n),allocator)
 }
 for &e in v.field_left_hands {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandType(r,allocator); if !ok { return v,false }
 v.field_right_hand_type=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_right_hands=make([]Ros2Aimdk_msgsMsgHandState,int(n),allocator)
 }
 for &e in v.field_right_hands {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/HandStateArray value.
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
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgHandStateArray :: proc(v: ^Ros2Aimdk_msgsMsgHandStateArray, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1474}
 if !write_Ros2Aimdk_msgsMsgHandStateArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1474}
 if !write_Ros2Aimdk_msgsMsgHandStateArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/HandStateArray value.
// @details Require the complete 34..1474-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgHandStateArray :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgHandStateArray,u32) {
 if len(bytes)<34 || len(bytes)>1474 { return Ros2Aimdk_msgsMsgHandStateArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgHandStateArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgHandStateArray{},reader.code }
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
// @details All 7 declared fields are retained in source order. The canonical representation occupies 31..159 bytes
// and is identified by UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f.
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
 // @brief aimdk_msgs/msg/JointState.coil_temp: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_coil_temp: u8,
 // @brief aimdk_msgs/msg/JointState.motor_temp: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_motor_temp: u8,
 // @brief aimdk_msgs/msg/JointState.motor_vol: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
 field_motor_vol: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/JointState in bytes.
// @details The inclusive bound is 159 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState_Maximum_Wire_Bytes :: 159
// @brief Canonical codec identity of aimdk_msgs/msg/JointState.
// @details Exact identity UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointState_Codec_Identity :: "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f"
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
 v.field_coil_temp = 0
 v.field_motor_temp = 0
 v.field_motor_vol = 0
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
 if !put_integer(w,u64(v.field_coil_temp),1) { return false }
 if !put_integer(w,u64(v.field_motor_temp),1) { return false }
 if !put_integer(w,u64(v.field_motor_vol),1) { return false }
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
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_coil_temp=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_motor_temp=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_motor_vol=u8(b)
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
 measure:=Writer{measuring=true,limit=159}
 if !write_Ros2Aimdk_msgsMsgJointState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=159}
 if !write_Ros2Aimdk_msgsMsgJointState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/JointState value.
// @details Require the complete 31..159-byte canonical representation. Reject truncation, invalid fields and
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
 if len(bytes)<31 || len(bytes)>159 { return Ros2Aimdk_msgsMsgJointState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgJointState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgJointState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/JointStateArray value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..10332
// bytes and is identified by UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa.
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
// @details The inclusive bound is 10332 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray_Maximum_Wire_Bytes :: 10332
// @brief Canonical codec identity of aimdk_msgs/msg/JointStateArray.
// @details Exact identity UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgJointStateArray_Codec_Identity :: "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa"
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
 measure:=Writer{measuring=true,limit=10332}
 if !write_Ros2Aimdk_msgsMsgJointStateArray(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=10332}
 if !write_Ros2Aimdk_msgsMsgJointStateArray(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/JointStateArray value.
// @details Require the complete 28..10332-byte canonical representation. Reject truncation, invalid fields and
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
 if len(bytes)<28 || len(bytes)>10332 { return Ros2Aimdk_msgsMsgJointStateArray{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgJointStateArray(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgJointStateArray{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McAction value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction :: struct {
 // @brief aimdk_msgs/msg/McAction.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McAction in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of aimdk_msgs/msg/McAction.
// @details Exact identity UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_Codec_Identity :: "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b"
// @brief Original ROS type name for aimdk_msgs/msg/McAction.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_Native_Type :: "aimdk_msgs/msg/McAction"
// @brief Selected original native identity for aimdk_msgs/msg/McAction.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_Native_Identity :: ""
// @brief aimdk_msgs/msg/McAction.PASSIVE_DEFAULT: original int32 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_PASSIVE_DEFAULT :: i32(1)
// @brief aimdk_msgs/msg/McAction.SOFT_EMERGENCY_STOP: original int32 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_SOFT_EMERGENCY_STOP :: i32(2)
// @brief aimdk_msgs/msg/McAction.DAMPING_DEFAULT: original int32 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_DAMPING_DEFAULT :: i32(3)
// @brief aimdk_msgs/msg/McAction.ZERO_TORQUE_DEFAULT: original int32 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_ZERO_TORQUE_DEFAULT :: i32(4)
// @brief aimdk_msgs/msg/McAction.JOINT_DEFAULT: original int32 constant.
// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_JOINT_DEFAULT :: i32(100)
// @brief aimdk_msgs/msg/McAction.JOINT_FREEZE: original int32 constant.
// @details Exact admitted value 101. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_JOINT_FREEZE :: i32(101)
// @brief aimdk_msgs/msg/McAction.STAND_DEFAULT: original int32 constant.
// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_STAND_DEFAULT :: i32(200)
// @brief aimdk_msgs/msg/McAction.STAND_BODY_CONTROL: original int32 constant.
// @details Exact admitted value 201. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_STAND_BODY_CONTROL :: i32(201)
// @brief aimdk_msgs/msg/McAction.LOCOMOTION_DEFAULT: original int32 constant.
// @details Exact admitted value 300. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_LOCOMOTION_DEFAULT :: i32(300)
// @brief aimdk_msgs/msg/McAction.RUN_DEFAULT: original int32 constant.
// @details Exact admitted value 301. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_RUN_DEFAULT :: i32(301)
// @brief aimdk_msgs/msg/McAction.LOCOMOTION_STEP: original int32 constant.
// @details Exact admitted value 302. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_LOCOMOTION_STEP :: i32(302)
// @brief aimdk_msgs/msg/McAction.VR_REMOTE_CONTROLLER: original int32 constant.
// @details Exact admitted value 400. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_VR_REMOTE_CONTROLLER :: i32(400)
// @brief aimdk_msgs/msg/McAction.SIT_DOWN_DEFAULT: original int32 constant.
// @details Exact admitted value 2000. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_SIT_DOWN_DEFAULT :: i32(2000)
// @brief aimdk_msgs/msg/McAction.CROUCH_DOWN_DEFAULT: original int32 constant.
// @details Exact admitted value 2002. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_CROUCH_DOWN_DEFAULT :: i32(2002)
// @brief aimdk_msgs/msg/McAction.LIE_DOWN_DEFAULT: original int32 constant.
// @details Exact admitted value 2004. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_LIE_DOWN_DEFAULT :: i32(2004)
// @brief aimdk_msgs/msg/McAction.STAND_UP_DEFAULT: original int32 constant.
// @details Exact admitted value 2005. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_STAND_UP_DEFAULT :: i32(2005)
// @brief aimdk_msgs/msg/McAction.ASCEND_STAIRS: original int32 constant.
// @details Exact admitted value 2006. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_ASCEND_STAIRS :: i32(2006)
// @brief aimdk_msgs/msg/McAction.DESCEND_STAIRS: original int32 constant.
// @details Exact admitted value 2008. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcAction_DESCEND_STAIRS :: i32(2008)
// @brief Construct the declared defaults of aimdk_msgs/msg/McAction.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcAction :: proc() -> Ros2Aimdk_msgsMsgMcAction {
 v: Ros2Aimdk_msgsMsgMcAction
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McAction.
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
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcAction :: proc(v: ^Ros2Aimdk_msgsMsgMcAction, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McAction.
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
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcAction :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcAction,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcAction()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McAction value.
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
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcAction :: proc(v: ^Ros2Aimdk_msgsMsgMcAction, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcAction(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcAction(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McAction value.
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
// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcAction :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcAction,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Aimdk_msgsMsgMcAction{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcAction(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcAction{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McActionCommand value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
// and is identified by UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionCommand :: struct {
 // @brief aimdk_msgs/msg/McActionCommand.action: aimdk_msgs/msg/McAction.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
 field_action: Ros2Aimdk_msgsMsgMcAction,
 // @brief aimdk_msgs/msg/McActionCommand.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
 field_action_desc: string,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McActionCommand in bytes.
// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionCommand_Maximum_Wire_Bytes :: 136
// @brief Canonical codec identity of aimdk_msgs/msg/McActionCommand.
// @details Exact identity UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionCommand_Codec_Identity :: "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648"
// @brief Original ROS type name for aimdk_msgs/msg/McActionCommand.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionCommand_Native_Type :: "aimdk_msgs/msg/McActionCommand"
// @brief Selected original native identity for aimdk_msgs/msg/McActionCommand.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionCommand_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/McActionCommand.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcActionCommand :: proc() -> Ros2Aimdk_msgsMsgMcActionCommand {
 v: Ros2Aimdk_msgsMsgMcActionCommand
 v.field_action = Ros2Aimdk_msgsMsgMcAction{}
 v.field_action_desc = ""
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McActionCommand.
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
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcActionCommand :: proc(v: ^Ros2Aimdk_msgsMsgMcActionCommand, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMcAction(&v.field_action,w) { return false }
 if !put_string(w,v.field_action_desc,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionCommand.
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
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcActionCommand :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcActionCommand,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcActionCommand()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcAction(r,allocator); if !ok { return v,false }
 v.field_action=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_action_desc=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McActionCommand value.
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
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcActionCommand :: proc(v: ^Ros2Aimdk_msgsMsgMcActionCommand, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=136}
 if !write_Ros2Aimdk_msgsMsgMcActionCommand(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=136}
 if !write_Ros2Aimdk_msgsMsgMcActionCommand(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McActionCommand value.
// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcActionCommand :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcActionCommand,u32) {
 if len(bytes)<8 || len(bytes)>136 { return Ros2Aimdk_msgsMsgMcActionCommand{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcActionCommand(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcActionCommand{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McActionStatus value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus :: struct {
 // @brief aimdk_msgs/msg/McActionStatus.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McActionStatus in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of aimdk_msgs/msg/McActionStatus.
// @details Exact identity UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_Codec_Identity :: "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48"
// @brief Original ROS type name for aimdk_msgs/msg/McActionStatus.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_Native_Type :: "aimdk_msgs/msg/McActionStatus"
// @brief Selected original native identity for aimdk_msgs/msg/McActionStatus.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_Native_Identity :: ""
// @brief aimdk_msgs/msg/McActionStatus.IDLE: original int32 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_IDLE :: i32(0)
// @brief aimdk_msgs/msg/McActionStatus.RUNNING: original int32 constant.
// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_RUNNING :: i32(100)
// @brief aimdk_msgs/msg/McActionStatus.TRANSITION: original int32 constant.
// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionStatus_TRANSITION :: i32(200)
// @brief Construct the declared defaults of aimdk_msgs/msg/McActionStatus.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcActionStatus :: proc() -> Ros2Aimdk_msgsMsgMcActionStatus {
 v: Ros2Aimdk_msgsMsgMcActionStatus
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McActionStatus.
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
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcActionStatus :: proc(v: ^Ros2Aimdk_msgsMsgMcActionStatus, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionStatus.
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
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcActionStatus :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcActionStatus,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcActionStatus()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McActionStatus value.
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
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcActionStatus :: proc(v: ^Ros2Aimdk_msgsMsgMcActionStatus, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcActionStatus(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcActionStatus(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McActionStatus value.
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
// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcActionStatus :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcActionStatus,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Aimdk_msgsMsgMcActionStatus{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcActionStatus(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcActionStatus{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McActionInfo value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionInfo :: struct {
 // @brief aimdk_msgs/msg/McActionInfo.current_action: aimdk_msgs/msg/McAction.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
 field_current_action: Ros2Aimdk_msgsMsgMcAction,
 // @brief aimdk_msgs/msg/McActionInfo.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
 field_action_desc: string,
 // @brief aimdk_msgs/msg/McActionInfo.status: aimdk_msgs/msg/McActionStatus.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
 field_status: Ros2Aimdk_msgsMsgMcActionStatus,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McActionInfo in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionInfo_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of aimdk_msgs/msg/McActionInfo.
// @details Exact identity UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionInfo_Codec_Identity :: "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9"
// @brief Original ROS type name for aimdk_msgs/msg/McActionInfo.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionInfo_Native_Type :: "aimdk_msgs/msg/McActionInfo"
// @brief Selected original native identity for aimdk_msgs/msg/McActionInfo.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcActionInfo_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/McActionInfo.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcActionInfo :: proc() -> Ros2Aimdk_msgsMsgMcActionInfo {
 v: Ros2Aimdk_msgsMsgMcActionInfo
 v.field_current_action = Ros2Aimdk_msgsMsgMcAction{}
 v.field_action_desc = ""
 v.field_status = Ros2Aimdk_msgsMsgMcActionStatus{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McActionInfo.
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
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcActionInfo :: proc(v: ^Ros2Aimdk_msgsMsgMcActionInfo, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMcAction(&v.field_current_action,w) { return false }
 if !put_string(w,v.field_action_desc,128) { return false }
 if !write_Ros2Aimdk_msgsMsgMcActionStatus(&v.field_status,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionInfo.
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
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcActionInfo :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcActionInfo,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcActionInfo()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcAction(r,allocator); if !ok { return v,false }
 v.field_current_action=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_action_desc=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcActionStatus(r,allocator); if !ok { return v,false }
 v.field_status=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McActionInfo value.
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
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcActionInfo :: proc(v: ^Ros2Aimdk_msgsMsgMcActionInfo, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Aimdk_msgsMsgMcActionInfo(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Aimdk_msgsMsgMcActionInfo(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McActionInfo value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcActionInfo :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcActionInfo,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Aimdk_msgsMsgMcActionInfo{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcActionInfo(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcActionInfo{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McControlArea value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea :: struct {
 // @brief aimdk_msgs/msg/McControlArea.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McControlArea in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of aimdk_msgs/msg/McControlArea.
// @details Exact identity UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_Codec_Identity :: "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9"
// @brief Original ROS type name for aimdk_msgs/msg/McControlArea.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_Native_Type :: "aimdk_msgs/msg/McControlArea"
// @brief Selected original native identity for aimdk_msgs/msg/McControlArea.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_Native_Identity :: ""
// @brief aimdk_msgs/msg/McControlArea.NONE: original int32 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_NONE :: i32(0)
// @brief aimdk_msgs/msg/McControlArea.LEFT_HAND: original int32 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_LEFT_HAND :: i32(1)
// @brief aimdk_msgs/msg/McControlArea.RIGHT_HAND: original int32 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_RIGHT_HAND :: i32(2)
// @brief aimdk_msgs/msg/McControlArea.HEAD: original int32 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_HEAD :: i32(4)
// @brief aimdk_msgs/msg/McControlArea.WAIST: original int32 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcControlArea_WAIST :: i32(8)
// @brief Construct the declared defaults of aimdk_msgs/msg/McControlArea.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcControlArea :: proc() -> Ros2Aimdk_msgsMsgMcControlArea {
 v: Ros2Aimdk_msgsMsgMcControlArea
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McControlArea.
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
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcControlArea :: proc(v: ^Ros2Aimdk_msgsMsgMcControlArea, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McControlArea.
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
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcControlArea :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcControlArea,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcControlArea()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McControlArea value.
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
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcControlArea :: proc(v: ^Ros2Aimdk_msgsMsgMcControlArea, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcControlArea(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcControlArea(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McControlArea value.
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
// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcControlArea :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcControlArea,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Aimdk_msgsMsgMcControlArea{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcControlArea(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcControlArea{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McInputAction value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction :: struct {
 // @brief aimdk_msgs/msg/McInputAction.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McInputAction in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of aimdk_msgs/msg/McInputAction.
// @details Exact identity UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_Codec_Identity :: "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9"
// @brief Original ROS type name for aimdk_msgs/msg/McInputAction.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_Native_Type :: "aimdk_msgs/msg/McInputAction"
// @brief Selected original native identity for aimdk_msgs/msg/McInputAction.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_Native_Identity :: ""
// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_ADD: original int32 constant.
// @details Exact admitted value 1001. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ADD :: i32(1001)
// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_MODIFY: original int32 constant.
// @details Exact admitted value 1002. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_MODIFY :: i32(1002)
// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_DELETE: original int32 constant.
// @details Exact admitted value 1003. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DELETE :: i32(1003)
// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_ENABLE: original int32 constant.
// @details Exact admitted value 2001. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ENABLE :: i32(2001)
// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_DISABLE: original int32 constant.
// @details Exact admitted value 2002. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DISABLE :: i32(2002)
// @brief Construct the declared defaults of aimdk_msgs/msg/McInputAction.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcInputAction :: proc() -> Ros2Aimdk_msgsMsgMcInputAction {
 v: Ros2Aimdk_msgsMsgMcInputAction
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McInputAction.
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
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcInputAction :: proc(v: ^Ros2Aimdk_msgsMsgMcInputAction, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McInputAction.
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
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcInputAction :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcInputAction,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcInputAction()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McInputAction value.
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
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcInputAction :: proc(v: ^Ros2Aimdk_msgsMsgMcInputAction, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcInputAction(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcInputAction(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McInputAction value.
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
// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcInputAction :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcInputAction,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Aimdk_msgsMsgMcInputAction{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcInputAction(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcInputAction{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McInputSource value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
// and is identified by UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputSource :: struct {
 // @brief aimdk_msgs/msg/McInputSource.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
 field_name: string,
 // @brief aimdk_msgs/msg/McInputSource.priority: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
 field_priority: i32,
 // @brief aimdk_msgs/msg/McInputSource.timeout: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
 field_timeout: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McInputSource in bytes.
// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputSource_Maximum_Wire_Bytes :: 140
// @brief Canonical codec identity of aimdk_msgs/msg/McInputSource.
// @details Exact identity UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputSource_Codec_Identity :: "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd"
// @brief Original ROS type name for aimdk_msgs/msg/McInputSource.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputSource_Native_Type :: "aimdk_msgs/msg/McInputSource"
// @brief Selected original native identity for aimdk_msgs/msg/McInputSource.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcInputSource_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/McInputSource.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcInputSource :: proc() -> Ros2Aimdk_msgsMsgMcInputSource {
 v: Ros2Aimdk_msgsMsgMcInputSource
 v.field_name = ""
 v.field_priority = 0
 v.field_timeout = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McInputSource.
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
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcInputSource :: proc(v: ^Ros2Aimdk_msgsMsgMcInputSource, w: ^Writer) -> bool {
 if !put_string(w,v.field_name,128) { return false }
 if !put_integer(w,u64(v.field_priority),4) { return false }
 if !put_integer(w,u64(v.field_timeout),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McInputSource.
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
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcInputSource :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcInputSource,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcInputSource()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_name=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority=i32(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_timeout=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McInputSource value.
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
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcInputSource :: proc(v: ^Ros2Aimdk_msgsMsgMcInputSource, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=140}
 if !write_Ros2Aimdk_msgsMsgMcInputSource(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=140}
 if !write_Ros2Aimdk_msgsMsgMcInputSource(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McInputSource value.
// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcInputSource :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcInputSource,u32) {
 if len(bytes)<12 || len(bytes)>140 { return Ros2Aimdk_msgsMsgMcInputSource{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcInputSource(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcInputSource{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McLocomotionVelocity value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 52..308 bytes
// and is identified by UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcLocomotionVelocity :: struct {
 // @brief aimdk_msgs/msg/McLocomotionVelocity.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/McLocomotionVelocity.source: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
 field_source: string,
 // @brief aimdk_msgs/msg/McLocomotionVelocity.forward_velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
 field_forward_velocity: f64,
 // @brief aimdk_msgs/msg/McLocomotionVelocity.lateral_velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
 field_lateral_velocity: f64,
 // @brief aimdk_msgs/msg/McLocomotionVelocity.angular_velocity: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
 field_angular_velocity: f64,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McLocomotionVelocity in bytes.
// @details The inclusive bound is 308 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcLocomotionVelocity_Maximum_Wire_Bytes :: 308
// @brief Canonical codec identity of aimdk_msgs/msg/McLocomotionVelocity.
// @details Exact identity UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcLocomotionVelocity_Codec_Identity :: "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00"
// @brief Original ROS type name for aimdk_msgs/msg/McLocomotionVelocity.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcLocomotionVelocity_Native_Type :: "aimdk_msgs/msg/McLocomotionVelocity"
// @brief Selected original native identity for aimdk_msgs/msg/McLocomotionVelocity.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcLocomotionVelocity_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/McLocomotionVelocity.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc() -> Ros2Aimdk_msgsMsgMcLocomotionVelocity {
 v: Ros2Aimdk_msgsMsgMcLocomotionVelocity
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_source = ""
 v.field_forward_velocity = 0
 v.field_lateral_velocity = 0
 v.field_angular_velocity = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McLocomotionVelocity.
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
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc(v: ^Ros2Aimdk_msgsMsgMcLocomotionVelocity, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !put_string(w,v.field_source,128) { return false }
 if !put_float64(w,v.field_forward_velocity) { return false }
 if !put_float64(w,v.field_lateral_velocity) { return false }
 if !put_float64(w,v.field_angular_velocity) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McLocomotionVelocity.
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
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcLocomotionVelocity,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcLocomotionVelocity()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_source=b
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_forward_velocity=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_lateral_velocity=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_angular_velocity=f64(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McLocomotionVelocity value.
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
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc(v: ^Ros2Aimdk_msgsMsgMcLocomotionVelocity, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=308}
 if !write_Ros2Aimdk_msgsMsgMcLocomotionVelocity(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=308}
 if !write_Ros2Aimdk_msgsMsgMcLocomotionVelocity(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McLocomotionVelocity value.
// @details Require the complete 52..308-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcLocomotionVelocity,u32) {
 if len(bytes)<52 || len(bytes)>308 { return Ros2Aimdk_msgsMsgMcLocomotionVelocity{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcLocomotionVelocity(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcLocomotionVelocity{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/McPresetMotion value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes and
// is identified by UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion :: struct {
 // @brief aimdk_msgs/msg/McPresetMotion.value: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
 field_value: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/McPresetMotion in bytes.
// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_Maximum_Wire_Bytes :: 4
// @brief Canonical codec identity of aimdk_msgs/msg/McPresetMotion.
// @details Exact identity UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_Codec_Identity :: "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153"
// @brief Original ROS type name for aimdk_msgs/msg/McPresetMotion.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_Native_Type :: "aimdk_msgs/msg/McPresetMotion"
// @brief Selected original native identity for aimdk_msgs/msg/McPresetMotion.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_Native_Identity :: ""
// @brief aimdk_msgs/msg/McPresetMotion.RAISE_HAND: original int32 constant.
// @details Exact admitted value 1001. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_RAISE_HAND :: i32(1001)
// @brief aimdk_msgs/msg/McPresetMotion.WAVE_HAND: original int32 constant.
// @details Exact admitted value 1002. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_WAVE_HAND :: i32(1002)
// @brief aimdk_msgs/msg/McPresetMotion.SHAKE_HAND: original int32 constant.
// @details Exact admitted value 1003. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HAND :: i32(1003)
// @brief aimdk_msgs/msg/McPresetMotion.FLYING_KISS_HAND: original int32 constant.
// @details Exact admitted value 1004. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_FLYING_KISS_HAND :: i32(1004)
// @brief aimdk_msgs/msg/McPresetMotion.CLAP_HAND: original int32 constant.
// @details Exact admitted value 1008. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_CLAP_HAND :: i32(1008)
// @brief aimdk_msgs/msg/McPresetMotion.TURN_WAVE_HAND: original int32 constant.
// @details Exact admitted value 2001. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_TURN_WAVE_HAND :: i32(2001)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BOW: original int32 constant.
// @details Exact admitted value 3001. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BOW :: i32(3001)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_LIKE: original int32 constant.
// @details Exact admitted value 3002. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIKE :: i32(3002)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_YE: original int32 constant.
// @details Exact admitted value 3003. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_YE :: i32(3003)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SWEATHEART: original int32 constant.
// @details Exact admitted value 3004. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SWEATHEART :: i32(3004)
// @brief aimdk_msgs/msg/McPresetMotion.SALUTE: original int32 constant.
// @details Exact admitted value 1013. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_SALUTE :: i32(1013)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SAD: original int32 constant.
// @details Exact admitted value 3006. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SAD :: i32(3006)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_LIGHTWAVE: original int32 constant.
// @details Exact admitted value 3007. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIGHTWAVE :: i32(3007)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_HUG: original int32 constant.
// @details Exact admitted value 3008. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HUG :: i32(3008)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_HANDX: original int32 constant.
// @details Exact admitted value 3009. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HANDX :: i32(3009)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_CHESTWAVE: original int32 constant.
// @details Exact admitted value 3010. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHESTWAVE :: i32(3010)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_CHEER: original int32 constant.
// @details Exact admitted value 3011. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHEER :: i32(3011)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BLOWKISS: original int32 constant.
// @details Exact admitted value 3012. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BLOWKISS :: i32(3012)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BASSDANCE1: original int32 constant.
// @details Exact admitted value 3013. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE1 :: i32(3013)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BASSDANCE2: original int32 constant.
// @details Exact admitted value 3014. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE2 :: i32(3014)
// @brief aimdk_msgs/msg/McPresetMotion.HITCLAP: original int32 constant.
// @details Exact admitted value 3015. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_HITCLAP :: i32(3015)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SPEAK: original int32 constant.
// @details Exact admitted value 3016. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SPEAK :: i32(3016)
// @brief aimdk_msgs/msg/McPresetMotion.CLIPFIST: original int32 constant.
// @details Exact admitted value 1009. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_CLIPFIST :: i32(1009)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_PHOTOPOSTURE: original int32 constant.
// @details Exact admitted value 3018. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOPOSTURE :: i32(3018)
// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_PHOTOTRIPPLEPOSTURE: original int32 constant.
// @details Exact admitted value 3019. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOTRIPPLEPOSTURE :: i32(3019)
// @brief aimdk_msgs/msg/McPresetMotion.POINT_HEAD: original int32 constant.
// @details Exact admitted value 4001. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_POINT_HEAD :: i32(4001)
// @brief aimdk_msgs/msg/McPresetMotion.SHAKE_HEAD: original int32 constant.
// @details Exact admitted value 4002. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HEAD :: i32(4002)
// @brief Construct the declared defaults of aimdk_msgs/msg/McPresetMotion.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgMcPresetMotion :: proc() -> Ros2Aimdk_msgsMsgMcPresetMotion {
 v: Ros2Aimdk_msgsMsgMcPresetMotion
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/McPresetMotion.
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
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgMcPresetMotion :: proc(v: ^Ros2Aimdk_msgsMsgMcPresetMotion, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/McPresetMotion.
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
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgMcPresetMotion :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcPresetMotion,bool) {
 v:=init_Ros2Aimdk_msgsMsgMcPresetMotion()
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_value=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/McPresetMotion value.
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
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgMcPresetMotion :: proc(v: ^Ros2Aimdk_msgsMsgMcPresetMotion, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcPresetMotion(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=4}
 if !write_Ros2Aimdk_msgsMsgMcPresetMotion(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/McPresetMotion value.
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
// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgMcPresetMotion :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgMcPresetMotion,u32) {
 if len(bytes)<4 || len(bytes)>4 { return Ros2Aimdk_msgsMsgMcPresetMotion{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgMcPresetMotion(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgMcPresetMotion{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/TtsPriorityLevel value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and
// is identified by UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel :: struct {
 // @brief aimdk_msgs/msg/TtsPriorityLevel.value: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
 field_value: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/TtsPriorityLevel in bytes.
// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_Maximum_Wire_Bytes :: 1
// @brief Canonical codec identity of aimdk_msgs/msg/TtsPriorityLevel.
// @details Exact identity UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_Codec_Identity :: "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a"
// @brief Original ROS type name for aimdk_msgs/msg/TtsPriorityLevel.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_Native_Type :: "aimdk_msgs/msg/TtsPriorityLevel"
// @brief Selected original native identity for aimdk_msgs/msg/TtsPriorityLevel.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_Native_Identity :: ""
// @brief aimdk_msgs/msg/TtsPriorityLevel.UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_UNKNOWN :: u8(0)
// @brief aimdk_msgs/msg/TtsPriorityLevel.BACKGROUND_L1: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_BACKGROUND_L1 :: u8(1)
// @brief aimdk_msgs/msg/TtsPriorityLevel.SERVICE_L2: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_SERVICE_L2 :: u8(2)
// @brief aimdk_msgs/msg/TtsPriorityLevel.MISSION_L4: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_MISSION_L4 :: u8(4)
// @brief aimdk_msgs/msg/TtsPriorityLevel.INTERACTION_L6: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_INTERACTION_L6 :: u8(6)
// @brief aimdk_msgs/msg/TtsPriorityLevel.WARNING_L8: original uint8 constant.
// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_WARNING_L8 :: u8(8)
// @brief aimdk_msgs/msg/TtsPriorityLevel.SAFETY_L10: original uint8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTtsPriorityLevel_SAFETY_L10 :: u8(10)
// @brief Construct the declared defaults of aimdk_msgs/msg/TtsPriorityLevel.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc() -> Ros2Aimdk_msgsMsgTtsPriorityLevel {
 v: Ros2Aimdk_msgsMsgTtsPriorityLevel
 v.field_value = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/TtsPriorityLevel.
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
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc(v: ^Ros2Aimdk_msgsMsgTtsPriorityLevel, w: ^Writer) -> bool {
 if !put_integer(w,u64(v.field_value),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/TtsPriorityLevel.
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
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgTtsPriorityLevel,bool) {
 v:=init_Ros2Aimdk_msgsMsgTtsPriorityLevel()
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_value=u8(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/TtsPriorityLevel value.
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
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc(v: ^Ros2Aimdk_msgsMsgTtsPriorityLevel, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1}
 if !write_Ros2Aimdk_msgsMsgTtsPriorityLevel(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1}
 if !write_Ros2Aimdk_msgsMsgTtsPriorityLevel(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/TtsPriorityLevel value.
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
// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgTtsPriorityLevel,u32) {
 if len(bytes)<1 || len(bytes)>1 { return Ros2Aimdk_msgsMsgTtsPriorityLevel{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgTtsPriorityLevel(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgTtsPriorityLevel{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/PlayMediaFileRequest value.
// @details All 7 declared fields are retained in source order. The canonical representation occupies 22..406 bytes
// and is identified by UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayMediaFileRequest :: struct {
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.file_name: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_file_name: string,
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.sample_rate: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_sample_rate: u32,
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel,
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.priority_weight: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_priority_weight: u32,
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_domain: string,
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_trace_id: string,
 // @brief aimdk_msgs/msg/PlayMediaFileRequest.is_interrupted: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
 field_is_interrupted: bool,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/PlayMediaFileRequest in bytes.
// @details The inclusive bound is 406 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayMediaFileRequest_Maximum_Wire_Bytes :: 406
// @brief Canonical codec identity of aimdk_msgs/msg/PlayMediaFileRequest.
// @details Exact identity UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayMediaFileRequest_Codec_Identity :: "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254"
// @brief Original ROS type name for aimdk_msgs/msg/PlayMediaFileRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayMediaFileRequest_Native_Type :: "aimdk_msgs/msg/PlayMediaFileRequest"
// @brief Selected original native identity for aimdk_msgs/msg/PlayMediaFileRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayMediaFileRequest_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/PlayMediaFileRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc() -> Ros2Aimdk_msgsMsgPlayMediaFileRequest {
 v: Ros2Aimdk_msgsMsgPlayMediaFileRequest
 v.field_file_name = ""
 v.field_sample_rate = 0
 v.field_priority_level = Ros2Aimdk_msgsMsgTtsPriorityLevel{}
 v.field_priority_weight = 0
 v.field_domain = ""
 v.field_trace_id = ""
 v.field_is_interrupted = false
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/PlayMediaFileRequest.
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
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc(v: ^Ros2Aimdk_msgsMsgPlayMediaFileRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_file_name,128) { return false }
 if !put_integer(w,u64(v.field_sample_rate),4) { return false }
 if !write_Ros2Aimdk_msgsMsgTtsPriorityLevel(&v.field_priority_level,w) { return false }
 if !put_integer(w,u64(v.field_priority_weight),4) { return false }
 if !put_string(w,v.field_domain,128) { return false }
 if !put_string(w,v.field_trace_id,128) { return false }
 if !put_bool(w,v.field_is_interrupted) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayMediaFileRequest.
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
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPlayMediaFileRequest,bool) {
 v:=init_Ros2Aimdk_msgsMsgPlayMediaFileRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_file_name=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_sample_rate=u32(b)
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgTtsPriorityLevel(r,allocator); if !ok { return v,false }
 v.field_priority_level=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority_weight=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_domain=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_trace_id=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_interrupted=bool(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/PlayMediaFileRequest value.
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
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc(v: ^Ros2Aimdk_msgsMsgPlayMediaFileRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=406}
 if !write_Ros2Aimdk_msgsMsgPlayMediaFileRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=406}
 if !write_Ros2Aimdk_msgsMsgPlayMediaFileRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/PlayMediaFileRequest value.
// @details Require the complete 22..406-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPlayMediaFileRequest,u32) {
 if len(bytes)<22 || len(bytes)>406 { return Ros2Aimdk_msgsMsgPlayMediaFileRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgPlayMediaFileRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgPlayMediaFileRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/PlayTtsRequest value.
// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..402 bytes
// and is identified by UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsRequest :: struct {
 // @brief aimdk_msgs/msg/PlayTtsRequest.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_text: string,
 // @brief aimdk_msgs/msg/PlayTtsRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel,
 // @brief aimdk_msgs/msg/PlayTtsRequest.priority_weight: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_priority_weight: u32,
 // @brief aimdk_msgs/msg/PlayTtsRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_domain: string,
 // @brief aimdk_msgs/msg/PlayTtsRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_trace_id: string,
 // @brief aimdk_msgs/msg/PlayTtsRequest.is_interrupted: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
 field_is_interrupted: bool,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/PlayTtsRequest in bytes.
// @details The inclusive bound is 402 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsRequest_Maximum_Wire_Bytes :: 402
// @brief Canonical codec identity of aimdk_msgs/msg/PlayTtsRequest.
// @details Exact identity UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsRequest_Codec_Identity :: "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd"
// @brief Original ROS type name for aimdk_msgs/msg/PlayTtsRequest.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsRequest_Native_Type :: "aimdk_msgs/msg/PlayTtsRequest"
// @brief Selected original native identity for aimdk_msgs/msg/PlayTtsRequest.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsRequest_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/PlayTtsRequest.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc() -> Ros2Aimdk_msgsMsgPlayTtsRequest {
 v: Ros2Aimdk_msgsMsgPlayTtsRequest
 v.field_text = ""
 v.field_priority_level = Ros2Aimdk_msgsMsgTtsPriorityLevel{}
 v.field_priority_weight = 0
 v.field_domain = ""
 v.field_trace_id = ""
 v.field_is_interrupted = false
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/PlayTtsRequest.
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
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc(v: ^Ros2Aimdk_msgsMsgPlayTtsRequest, w: ^Writer) -> bool {
 if !put_string(w,v.field_text,128) { return false }
 if !write_Ros2Aimdk_msgsMsgTtsPriorityLevel(&v.field_priority_level,w) { return false }
 if !put_integer(w,u64(v.field_priority_weight),4) { return false }
 if !put_string(w,v.field_domain,128) { return false }
 if !put_string(w,v.field_trace_id,128) { return false }
 if !put_bool(w,v.field_is_interrupted) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayTtsRequest.
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
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPlayTtsRequest,bool) {
 v:=init_Ros2Aimdk_msgsMsgPlayTtsRequest()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_text=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgTtsPriorityLevel(r,allocator); if !ok { return v,false }
 v.field_priority_level=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority_weight=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_domain=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_trace_id=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_interrupted=bool(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/PlayTtsRequest value.
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
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc(v: ^Ros2Aimdk_msgsMsgPlayTtsRequest, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=402}
 if !write_Ros2Aimdk_msgsMsgPlayTtsRequest(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=402}
 if !write_Ros2Aimdk_msgsMsgPlayTtsRequest(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/PlayTtsRequest value.
// @details Require the complete 18..402-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPlayTtsRequest,u32) {
 if len(bytes)<18 || len(bytes)>402 { return Ros2Aimdk_msgsMsgPlayTtsRequest{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgPlayTtsRequest(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgPlayTtsRequest{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/PlayTtsResponse value.
// @details All 8 declared fields are retained in source order. The canonical representation occupies 26..538 bytes
// and is identified by UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsResponse :: struct {
 // @brief aimdk_msgs/msg/PlayTtsResponse.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_text: string,
 // @brief aimdk_msgs/msg/PlayTtsResponse.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel,
 // @brief aimdk_msgs/msg/PlayTtsResponse.priority_weight: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_priority_weight: u32,
 // @brief aimdk_msgs/msg/PlayTtsResponse.domain: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 // NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_domain: string,
 // @brief aimdk_msgs/msg/PlayTtsResponse.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_trace_id: string,
 // @brief aimdk_msgs/msg/PlayTtsResponse.is_success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_is_success: bool,
 // @brief aimdk_msgs/msg/PlayTtsResponse.error_message: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_error_message: string,
 // @brief aimdk_msgs/msg/PlayTtsResponse.estimated_duration: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
 field_estimated_duration: u32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/PlayTtsResponse in bytes.
// @details The inclusive bound is 538 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsResponse_Maximum_Wire_Bytes :: 538
// @brief Canonical codec identity of aimdk_msgs/msg/PlayTtsResponse.
// @details Exact identity UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsResponse_Codec_Identity :: "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3"
// @brief Original ROS type name for aimdk_msgs/msg/PlayTtsResponse.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsResponse_Native_Type :: "aimdk_msgs/msg/PlayTtsResponse"
// @brief Selected original native identity for aimdk_msgs/msg/PlayTtsResponse.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPlayTtsResponse_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/PlayTtsResponse.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc() -> Ros2Aimdk_msgsMsgPlayTtsResponse {
 v: Ros2Aimdk_msgsMsgPlayTtsResponse
 v.field_text = ""
 v.field_priority_level = Ros2Aimdk_msgsMsgTtsPriorityLevel{}
 v.field_priority_weight = 0
 v.field_domain = ""
 v.field_trace_id = ""
 v.field_is_success = false
 v.field_error_message = ""
 v.field_estimated_duration = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/PlayTtsResponse.
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
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc(v: ^Ros2Aimdk_msgsMsgPlayTtsResponse, w: ^Writer) -> bool {
 if !put_string(w,v.field_text,128) { return false }
 if !write_Ros2Aimdk_msgsMsgTtsPriorityLevel(&v.field_priority_level,w) { return false }
 if !put_integer(w,u64(v.field_priority_weight),4) { return false }
 if !put_string(w,v.field_domain,128) { return false }
 if !put_string(w,v.field_trace_id,128) { return false }
 if !put_bool(w,v.field_is_success) { return false }
 if !put_string(w,v.field_error_message,128) { return false }
 if !put_integer(w,u64(v.field_estimated_duration),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayTtsResponse.
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
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPlayTtsResponse,bool) {
 v:=init_Ros2Aimdk_msgsMsgPlayTtsResponse()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_text=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgTtsPriorityLevel(r,allocator); if !ok { return v,false }
 v.field_priority_level=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority_weight=u32(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_domain=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_trace_id=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_success=bool(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_error_message=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_estimated_duration=u32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/PlayTtsResponse value.
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
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc(v: ^Ros2Aimdk_msgsMsgPlayTtsResponse, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=538}
 if !write_Ros2Aimdk_msgsMsgPlayTtsResponse(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=538}
 if !write_Ros2Aimdk_msgsMsgPlayTtsResponse(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/PlayTtsResponse value.
// @details Require the complete 26..538-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPlayTtsResponse,u32) {
 if len(bytes)<26 || len(bytes)>538 { return Ros2Aimdk_msgsMsgPlayTtsResponse{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgPlayTtsResponse(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgPlayTtsResponse{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/PmuState value.
// @details All 33 declared fields are retained in source order. The canonical representation occupies 201..1097
// bytes and is identified by UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPmuState :: struct {
 // @brief aimdk_msgs/msg/PmuState.pmu_software_version: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_pmu_software_version: string,
 // @brief aimdk_msgs/msg/PmuState.pmu_hardware_version: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_pmu_hardware_version: string,
 // @brief aimdk_msgs/msg/PmuState.pmu_protocol_version: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_pmu_protocol_version: string,
 // @brief aimdk_msgs/msg/PmuState.pmu_bool_status: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_pmu_bool_status: u32,
 // @brief aimdk_msgs/msg/PmuState.head_power_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_head_power_current: f64,
 // @brief aimdk_msgs/msg/PmuState.output_48v_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_output_48v_current: f64,
 // @brief aimdk_msgs/msg/PmuState.rk3588_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_rk3588_current: f64,
 // @brief aimdk_msgs/msg/PmuState.output_12v_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_output_12v_current: f64,
 // @brief aimdk_msgs/msg/PmuState.bus_48v_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bus_48v_current: f64,
 // @brief aimdk_msgs/msg/PmuState.orin_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_orin_current: f64,
 // @brief aimdk_msgs/msg/PmuState.bus_48v_pmos_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bus_48v_pmos_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.battery_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.fan_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_fan_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.output_12v_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_output_12v_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.output_48v_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_output_48v_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.bus_48v_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bus_48v_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.head_power_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_head_power_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.orin_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_orin_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.rk3588_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_rk3588_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.bms_manufacturer: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bms_manufacturer: string,
 // @brief aimdk_msgs/msg/PmuState.bms_serial_number: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bms_serial_number: string,
 // @brief aimdk_msgs/msg/PmuState.bms_hardware_version: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bms_hardware_version: string,
 // @brief aimdk_msgs/msg/PmuState.bms_software_version: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bms_software_version: string,
 // @brief aimdk_msgs/msg/PmuState.bms_status_bits: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_bms_status_bits: u32,
 // @brief aimdk_msgs/msg/PmuState.battery_balance_line_resistance: uint16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_balance_line_resistance: u16,
 // @brief aimdk_msgs/msg/PmuState.battery_pack_voltage: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_pack_voltage: f64,
 // @brief aimdk_msgs/msg/PmuState.battery_current: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_current: f64,
 // @brief aimdk_msgs/msg/PmuState.battery_output_power: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_output_power: f64,
 // @brief aimdk_msgs/msg/PmuState.battery_temperature: float64.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_temperature: f64,
 // @brief aimdk_msgs/msg/PmuState.battery_remaining_capacity: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_remaining_capacity: u32,
 // @brief aimdk_msgs/msg/PmuState.battery_remaining_capacity_percentage: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_remaining_capacity_percentage: u8,
 // @brief aimdk_msgs/msg/PmuState.battery_cycle_count: uint16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_cycle_count: u16,
 // @brief aimdk_msgs/msg/PmuState.battery_cycle_total_capacity: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
 field_battery_cycle_total_capacity: u32,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/PmuState in bytes.
// @details The inclusive bound is 1097 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPmuState_Maximum_Wire_Bytes :: 1097
// @brief Canonical codec identity of aimdk_msgs/msg/PmuState.
// @details Exact identity UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPmuState_Codec_Identity :: "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c"
// @brief Original ROS type name for aimdk_msgs/msg/PmuState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPmuState_Native_Type :: "aimdk_msgs/msg/PmuState"
// @brief Selected original native identity for aimdk_msgs/msg/PmuState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgPmuState_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/PmuState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgPmuState :: proc() -> Ros2Aimdk_msgsMsgPmuState {
 v: Ros2Aimdk_msgsMsgPmuState
 v.field_pmu_software_version = ""
 v.field_pmu_hardware_version = ""
 v.field_pmu_protocol_version = ""
 v.field_pmu_bool_status = 0
 v.field_head_power_current = 0
 v.field_output_48v_current = 0
 v.field_rk3588_current = 0
 v.field_output_12v_current = 0
 v.field_bus_48v_current = 0
 v.field_orin_current = 0
 v.field_bus_48v_pmos_voltage = 0
 v.field_battery_voltage = 0
 v.field_fan_voltage = 0
 v.field_output_12v_voltage = 0
 v.field_output_48v_voltage = 0
 v.field_bus_48v_voltage = 0
 v.field_head_power_voltage = 0
 v.field_orin_voltage = 0
 v.field_rk3588_voltage = 0
 v.field_bms_manufacturer = ""
 v.field_bms_serial_number = ""
 v.field_bms_hardware_version = ""
 v.field_bms_software_version = ""
 v.field_bms_status_bits = 0
 v.field_battery_balance_line_resistance = 0
 v.field_battery_pack_voltage = 0
 v.field_battery_current = 0
 v.field_battery_output_power = 0
 v.field_battery_temperature = 0
 v.field_battery_remaining_capacity = 0
 v.field_battery_remaining_capacity_percentage = 0
 v.field_battery_cycle_count = 0
 v.field_battery_cycle_total_capacity = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/PmuState.
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
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgPmuState :: proc(v: ^Ros2Aimdk_msgsMsgPmuState, w: ^Writer) -> bool {
 if !put_string(w,v.field_pmu_software_version,128) { return false }
 if !put_string(w,v.field_pmu_hardware_version,128) { return false }
 if !put_string(w,v.field_pmu_protocol_version,128) { return false }
 if !put_integer(w,u64(v.field_pmu_bool_status),4) { return false }
 if !put_float64(w,v.field_head_power_current) { return false }
 if !put_float64(w,v.field_output_48v_current) { return false }
 if !put_float64(w,v.field_rk3588_current) { return false }
 if !put_float64(w,v.field_output_12v_current) { return false }
 if !put_float64(w,v.field_bus_48v_current) { return false }
 if !put_float64(w,v.field_orin_current) { return false }
 if !put_float64(w,v.field_bus_48v_pmos_voltage) { return false }
 if !put_float64(w,v.field_battery_voltage) { return false }
 if !put_float64(w,v.field_fan_voltage) { return false }
 if !put_float64(w,v.field_output_12v_voltage) { return false }
 if !put_float64(w,v.field_output_48v_voltage) { return false }
 if !put_float64(w,v.field_bus_48v_voltage) { return false }
 if !put_float64(w,v.field_head_power_voltage) { return false }
 if !put_float64(w,v.field_orin_voltage) { return false }
 if !put_float64(w,v.field_rk3588_voltage) { return false }
 if !put_string(w,v.field_bms_manufacturer,128) { return false }
 if !put_string(w,v.field_bms_serial_number,128) { return false }
 if !put_string(w,v.field_bms_hardware_version,128) { return false }
 if !put_string(w,v.field_bms_software_version,128) { return false }
 if !put_integer(w,u64(v.field_bms_status_bits),4) { return false }
 if !put_integer(w,u64(v.field_battery_balance_line_resistance),2) { return false }
 if !put_float64(w,v.field_battery_pack_voltage) { return false }
 if !put_float64(w,v.field_battery_current) { return false }
 if !put_float64(w,v.field_battery_output_power) { return false }
 if !put_float64(w,v.field_battery_temperature) { return false }
 if !put_integer(w,u64(v.field_battery_remaining_capacity),4) { return false }
 if !put_integer(w,u64(v.field_battery_remaining_capacity_percentage),1) { return false }
 if !put_integer(w,u64(v.field_battery_cycle_count),2) { return false }
 if !put_integer(w,u64(v.field_battery_cycle_total_capacity),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/PmuState.
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
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgPmuState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPmuState,bool) {
 v:=init_Ros2Aimdk_msgsMsgPmuState()
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_pmu_software_version=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_pmu_hardware_version=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_pmu_protocol_version=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_pmu_bool_status=u32(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_head_power_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_output_48v_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_rk3588_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_output_12v_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_bus_48v_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_orin_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_bus_48v_pmos_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_battery_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_fan_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_output_12v_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_output_48v_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_bus_48v_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_head_power_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_orin_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_rk3588_voltage=f64(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_bms_manufacturer=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_bms_serial_number=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_bms_hardware_version=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_bms_software_version=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_bms_status_bits=u32(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_battery_balance_line_resistance=u16(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_battery_pack_voltage=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_battery_current=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_battery_output_power=f64(b)
 }
 {
 b,ok:=get_float64(r); if !ok { return v,false }
 v.field_battery_temperature=f64(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_battery_remaining_capacity=u32(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_battery_remaining_capacity_percentage=u8(b)
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_battery_cycle_count=u16(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_battery_cycle_total_capacity=u32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/PmuState value.
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
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgPmuState :: proc(v: ^Ros2Aimdk_msgsMsgPmuState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=1097}
 if !write_Ros2Aimdk_msgsMsgPmuState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=1097}
 if !write_Ros2Aimdk_msgsMsgPmuState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/PmuState value.
// @details Require the complete 201..1097-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgPmuState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgPmuState,u32) {
 if len(bytes)<201 || len(bytes)>1097 { return Ros2Aimdk_msgsMsgPmuState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgPmuState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgPmuState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/ProcessedAudioOutput value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 33..417 bytes
// and is identified by UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessedAudioOutput :: struct {
 // @brief aimdk_msgs/msg/ProcessedAudioOutput.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/ProcessedAudioOutput.stream_id: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
 field_stream_id: u32,
 // @brief aimdk_msgs/msg/ProcessedAudioOutput.audio_vad_state: aimdk_msgs/msg/AudioVadStateType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
 field_audio_vad_state: Ros2Aimdk_msgsMsgAudioVadStateType,
 // @brief aimdk_msgs/msg/ProcessedAudioOutput.audio_data: uint8; 0..256 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
 field_audio_data: []u8,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/ProcessedAudioOutput in bytes.
// @details The inclusive bound is 417 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessedAudioOutput_Maximum_Wire_Bytes :: 417
// @brief Canonical codec identity of aimdk_msgs/msg/ProcessedAudioOutput.
// @details Exact identity UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessedAudioOutput_Codec_Identity :: "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30"
// @brief Original ROS type name for aimdk_msgs/msg/ProcessedAudioOutput.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessedAudioOutput_Native_Type :: "aimdk_msgs/msg/ProcessedAudioOutput"
// @brief Selected original native identity for aimdk_msgs/msg/ProcessedAudioOutput.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgProcessedAudioOutput_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/msg/ProcessedAudioOutput.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc() -> Ros2Aimdk_msgsMsgProcessedAudioOutput {
 v: Ros2Aimdk_msgsMsgProcessedAudioOutput
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_stream_id = 0
 v.field_audio_vad_state = Ros2Aimdk_msgsMsgAudioVadStateType{}
 v.field_audio_data = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/ProcessedAudioOutput.
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
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc(v: ^Ros2Aimdk_msgsMsgProcessedAudioOutput, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_stream_id),4) { return false }
 if !write_Ros2Aimdk_msgsMsgAudioVadStateType(&v.field_audio_vad_state,w) { return false }
 if len(v.field_audio_data)>256 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_audio_data)),4) { return false }
 for e in v.field_audio_data {
 if !put_integer(w,u64(e),1) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/ProcessedAudioOutput.
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
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgProcessedAudioOutput,bool) {
 v:=init_Ros2Aimdk_msgsMsgProcessedAudioOutput()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_stream_id=u32(b)
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgAudioVadStateType(r,allocator); if !ok { return v,false }
 v.field_audio_vad_state=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>256 { r.code=22; return v,false }
 v.field_audio_data=make([]u8,int(n),allocator)
 }
 for &e in v.field_audio_data {
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 e=u8(b)
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/ProcessedAudioOutput value.
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
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc(v: ^Ros2Aimdk_msgsMsgProcessedAudioOutput, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=417}
 if !write_Ros2Aimdk_msgsMsgProcessedAudioOutput(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=417}
 if !write_Ros2Aimdk_msgsMsgProcessedAudioOutput(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/ProcessedAudioOutput value.
// @details Require the complete 33..417-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgProcessedAudioOutput,u32) {
 if len(bytes)<33 || len(bytes)>417 { return Ros2Aimdk_msgsMsgProcessedAudioOutput{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgProcessedAudioOutput(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgProcessedAudioOutput{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/msg/TouchState value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 97..225 bytes
// and is identified by UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState :: struct {
 // @brief aimdk_msgs/msg/TouchState.header: aimdk_msgs/msg/MessageHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader,
 // @brief aimdk_msgs/msg/TouchState.event_type: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
 field_event_type: u8,
 // @brief aimdk_msgs/msg/TouchState.data: uint32; exactly 8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
 field_data: [8]u32,
 // @brief aimdk_msgs/msg/TouchState.threshold: uint32; exactly 8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
 field_threshold: [8]u32,
 // @brief aimdk_msgs/msg/TouchState.is_touched: bool; exactly 8 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
 field_is_touched: [8]bool,
}
// @brief Maximum canonical extent of aimdk_msgs/msg/TouchState in bytes.
// @details The inclusive bound is 225 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_Maximum_Wire_Bytes :: 225
// @brief Canonical codec identity of aimdk_msgs/msg/TouchState.
// @details Exact identity UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_Codec_Identity :: "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564"
// @brief Original ROS type name for aimdk_msgs/msg/TouchState.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_Native_Type :: "aimdk_msgs/msg/TouchState"
// @brief Selected original native identity for aimdk_msgs/msg/TouchState.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_Native_Identity :: ""
// @brief aimdk_msgs/msg/TouchState.UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_UNKNOWN :: u8(0)
// @brief aimdk_msgs/msg/TouchState.IDLE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_IDLE :: u8(1)
// @brief aimdk_msgs/msg/TouchState.TOUCH: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_TOUCH :: u8(2)
// @brief aimdk_msgs/msg/TouchState.SLIDE: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_SLIDE :: u8(3)
// @brief aimdk_msgs/msg/TouchState.PAT_ONCE: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_PAT_ONCE :: u8(4)
// @brief aimdk_msgs/msg/TouchState.PAT_TWICE: original uint8 constant.
// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_PAT_TWICE :: u8(5)
// @brief aimdk_msgs/msg/TouchState.PAT_TRIPLE: original uint8 constant.
// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsMsgTouchState_PAT_TRIPLE :: u8(6)
// @brief Construct the declared defaults of aimdk_msgs/msg/TouchState.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsMsgTouchState :: proc() -> Ros2Aimdk_msgsMsgTouchState {
 v: Ros2Aimdk_msgsMsgTouchState
 v.field_header = Ros2Aimdk_msgsMsgMessageHeader{}
 v.field_event_type = 0
 v.field_data = [8]u32{0,0,0,0,0,0,0,0}
 v.field_threshold = [8]u32{0,0,0,0,0,0,0,0}
 v.field_is_touched = [8]bool{false,false,false,false,false,false,false,false}
 return v
}
// @brief Append every canonical field of aimdk_msgs/msg/TouchState.
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
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsMsgTouchState :: proc(v: ^Ros2Aimdk_msgsMsgTouchState, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgMessageHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_event_type),1) { return false }
 for e in v.field_data {
 if !put_integer(w,u64(e),4) { return false }
 }
 for e in v.field_threshold {
 if !put_integer(w,u64(e),4) { return false }
 }
 for e in v.field_is_touched {
 if !put_bool(w,e) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/msg/TouchState.
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
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsMsgTouchState :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgTouchState,bool) {
 v:=init_Ros2Aimdk_msgsMsgTouchState()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMessageHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_event_type=u8(b)
 }
 for &e in v.field_data {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 for &e in v.field_threshold {
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 e=u32(b)
 }
 }
 for &e in v.field_is_touched {
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 e=bool(b)
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/msg/TouchState value.
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
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsMsgTouchState :: proc(v: ^Ros2Aimdk_msgsMsgTouchState, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=225}
 if !write_Ros2Aimdk_msgsMsgTouchState(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=225}
 if !write_Ros2Aimdk_msgsMsgTouchState(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/msg/TouchState value.
// @details Require the complete 97..225-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsMsgTouchState :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsMsgTouchState,u32) {
 if len(bytes)<97 || len(bytes)>225 { return Ros2Aimdk_msgsMsgTouchState{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsMsgTouchState(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsMsgTouchState{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetAllJointState_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Request :: struct {
 // @brief aimdk_msgs/srv/GetAllJointState_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetAllJointState_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/srv/GetAllJointState_Request.
// @details Exact identity UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Request_Codec_Identity :: "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260"
// @brief Original ROS type name for aimdk_msgs/srv/GetAllJointState_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Request_Native_Type :: "aimdk_msgs/srv/GetAllJointState_Request"
// @brief Selected original native identity for aimdk_msgs/srv/GetAllJointState_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetAllJointState_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetAllJointState_Request :: proc() -> Ros2Aimdk_msgsSrvGetAllJointState_Request {
 v: Ros2Aimdk_msgsSrvGetAllJointState_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetAllJointState_Request.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetAllJointState_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetAllJointState_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetAllJointState_Request.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetAllJointState_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetAllJointState_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetAllJointState_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetAllJointState_Request value.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetAllJointState_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetAllJointState_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetAllJointState_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetAllJointState_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetAllJointState_Request value.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetAllJointState_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetAllJointState_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsSrvGetAllJointState_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetAllJointState_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetAllJointState_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetAllJointState_Response value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..2712 bytes
// and is identified by UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Response :: struct {
 // @brief aimdk_msgs/srv/GetAllJointState_Response.reponse: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/GetAllJointState_Response.head_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_head_joints: []Ros2Aimdk_msgsMsgJointState,
 // @brief aimdk_msgs/srv/GetAllJointState_Response.arm_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_arm_joints: []Ros2Aimdk_msgsMsgJointState,
 // @brief aimdk_msgs/srv/GetAllJointState_Response.waist_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_waist_joints: []Ros2Aimdk_msgsMsgJointState,
 // @brief aimdk_msgs/srv/GetAllJointState_Response.leg_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
 field_leg_joints: []Ros2Aimdk_msgsMsgJointState,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetAllJointState_Response in bytes.
// @details The inclusive bound is 2712 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Response_Maximum_Wire_Bytes :: 2712
// @brief Canonical codec identity of aimdk_msgs/srv/GetAllJointState_Response.
// @details Exact identity UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Response_Codec_Identity :: "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793"
// @brief Original ROS type name for aimdk_msgs/srv/GetAllJointState_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Response_Native_Type :: "aimdk_msgs/srv/GetAllJointState_Response"
// @brief Selected original native identity for aimdk_msgs/srv/GetAllJointState_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetAllJointState_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetAllJointState_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetAllJointState_Response :: proc() -> Ros2Aimdk_msgsSrvGetAllJointState_Response {
 v: Ros2Aimdk_msgsSrvGetAllJointState_Response
 v.field_reponse = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_head_joints = nil
 v.field_arm_joints = nil
 v.field_waist_joints = nil
 v.field_leg_joints = nil
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetAllJointState_Response.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetAllJointState_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetAllJointState_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_reponse,w) { return false }
 if len(v.field_head_joints)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_head_joints)),4) { return false }
 for e in v.field_head_joints {
 item:=e
 if !write_Ros2Aimdk_msgsMsgJointState(&item,w) { return false }
 }
 if len(v.field_arm_joints)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_arm_joints)),4) { return false }
 for e in v.field_arm_joints {
 item:=e
 if !write_Ros2Aimdk_msgsMsgJointState(&item,w) { return false }
 }
 if len(v.field_waist_joints)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_waist_joints)),4) { return false }
 for e in v.field_waist_joints {
 item:=e
 if !write_Ros2Aimdk_msgsMsgJointState(&item,w) { return false }
 }
 if len(v.field_leg_joints)>4 { w.code=22; return false }
 if !put_integer(w,u64(len(v.field_leg_joints)),4) { return false }
 for e in v.field_leg_joints {
 item:=e
 if !write_Ros2Aimdk_msgsMsgJointState(&item,w) { return false }
 }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetAllJointState_Response.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetAllJointState_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetAllJointState_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetAllJointState_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_reponse=b
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_head_joints=make([]Ros2Aimdk_msgsMsgJointState,int(n),allocator)
 }
 for &e in v.field_head_joints {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgJointState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_arm_joints=make([]Ros2Aimdk_msgsMsgJointState,int(n),allocator)
 }
 for &e in v.field_arm_joints {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgJointState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_waist_joints=make([]Ros2Aimdk_msgsMsgJointState,int(n),allocator)
 }
 for &e in v.field_waist_joints {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgJointState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 {
 n,ok:=get_integer(r,4); if !ok { return v,false }
 if n>4 { r.code=22; return v,false }
 v.field_leg_joints=make([]Ros2Aimdk_msgsMsgJointState,int(n),allocator)
 }
 for &e in v.field_leg_joints {
 {
 b,ok:=read_Ros2Aimdk_msgsMsgJointState(r,allocator); if !ok { return v,false }
 e=b
 }
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetAllJointState_Response value.
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetAllJointState_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetAllJointState_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=2712}
 if !write_Ros2Aimdk_msgsSrvGetAllJointState_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=2712}
 if !write_Ros2Aimdk_msgsSrvGetAllJointState_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetAllJointState_Response value.
// @details Require the complete 40..2712-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetAllJointState_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetAllJointState_Response,u32) {
 if len(bytes)<40 || len(bytes)>2712 { return Ros2Aimdk_msgsSrvGetAllJointState_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetAllJointState_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetAllJointState_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetCurrentInputSource_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Request :: struct {
 // @brief aimdk_msgs/srv/GetCurrentInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetCurrentInputSource_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/srv/GetCurrentInputSource_Request.
// @details Exact identity UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Request_Codec_Identity :: "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a"
// @brief Original ROS type name for aimdk_msgs/srv/GetCurrentInputSource_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Request_Native_Type :: "aimdk_msgs/srv/GetCurrentInputSource_Request"
// @brief Selected original native identity for aimdk_msgs/srv/GetCurrentInputSource_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetCurrentInputSource_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request :: proc() -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
 v: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetCurrentInputSource_Request.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetCurrentInputSource_Request.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetCurrentInputSource_Request value.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetCurrentInputSource_Request value.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsSrvGetCurrentInputSource_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetCurrentInputSource_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetCurrentInputSource_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 40..168 bytes
// and is identified by UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Response :: struct {
 // @brief aimdk_msgs/srv/GetCurrentInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonTaskResponse,
 // @brief aimdk_msgs/srv/GetCurrentInputSource_Response.input_source: aimdk_msgs/msg/McInputSource.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_input_source: Ros2Aimdk_msgsMsgMcInputSource,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetCurrentInputSource_Response in bytes.
// @details The inclusive bound is 168 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Response_Maximum_Wire_Bytes :: 168
// @brief Canonical codec identity of aimdk_msgs/srv/GetCurrentInputSource_Response.
// @details Exact identity UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Response_Codec_Identity :: "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e"
// @brief Original ROS type name for aimdk_msgs/srv/GetCurrentInputSource_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Response_Native_Type :: "aimdk_msgs/srv/GetCurrentInputSource_Response"
// @brief Selected original native identity for aimdk_msgs/srv/GetCurrentInputSource_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetCurrentInputSource_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetCurrentInputSource_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response :: proc() -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
 v: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
 v.field_response = Ros2Aimdk_msgsMsgCommonTaskResponse{}
 v.field_input_source = Ros2Aimdk_msgsMsgMcInputSource{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetCurrentInputSource_Response.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetCurrentInputSource_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonTaskResponse(&v.field_response,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcInputSource(&v.field_input_source,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetCurrentInputSource_Response.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetCurrentInputSource_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonTaskResponse(r,allocator); if !ok { return v,false }
 v.field_response=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcInputSource(r,allocator); if !ok { return v,false }
 v.field_input_source=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetCurrentInputSource_Response value.
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetCurrentInputSource_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=168}
 if !write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=168}
 if !write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetCurrentInputSource_Response value.
// @details Require the complete 40..168-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetCurrentInputSource_Response,u32) {
 if len(bytes)<40 || len(bytes)>168 { return Ros2Aimdk_msgsSrvGetCurrentInputSource_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetCurrentInputSource_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetHandType_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Request :: struct {
 // @brief aimdk_msgs/srv/GetHandType_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetHandType_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/srv/GetHandType_Request.
// @details Exact identity UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Request_Codec_Identity :: "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470"
// @brief Original ROS type name for aimdk_msgs/srv/GetHandType_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Request_Native_Type :: "aimdk_msgs/srv/GetHandType_Request"
// @brief Selected original native identity for aimdk_msgs/srv/GetHandType_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetHandType_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetHandType_Request :: proc() -> Ros2Aimdk_msgsSrvGetHandType_Request {
 v: Ros2Aimdk_msgsSrvGetHandType_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetHandType_Request.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetHandType_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetHandType_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetHandType_Request.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetHandType_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetHandType_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetHandType_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetHandType_Request value.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetHandType_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetHandType_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetHandType_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetHandType_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetHandType_Request value.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetHandType_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetHandType_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsSrvGetHandType_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetHandType_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetHandType_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetHandType_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 26..154 bytes
// and is identified by UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Response :: struct {
 // @brief aimdk_msgs/srv/GetHandType_Response.reponse: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/GetHandType_Response.left_hands_type: aimdk_msgs/msg/HandType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
 field_left_hands_type: Ros2Aimdk_msgsMsgHandType,
 // @brief aimdk_msgs/srv/GetHandType_Response.right_hands_type: aimdk_msgs/msg/HandType.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
 field_right_hands_type: Ros2Aimdk_msgsMsgHandType,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetHandType_Response in bytes.
// @details The inclusive bound is 154 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Response_Maximum_Wire_Bytes :: 154
// @brief Canonical codec identity of aimdk_msgs/srv/GetHandType_Response.
// @details Exact identity UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Response_Codec_Identity :: "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c"
// @brief Original ROS type name for aimdk_msgs/srv/GetHandType_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Response_Native_Type :: "aimdk_msgs/srv/GetHandType_Response"
// @brief Selected original native identity for aimdk_msgs/srv/GetHandType_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetHandType_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetHandType_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetHandType_Response :: proc() -> Ros2Aimdk_msgsSrvGetHandType_Response {
 v: Ros2Aimdk_msgsSrvGetHandType_Response
 v.field_reponse = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_left_hands_type = Ros2Aimdk_msgsMsgHandType{}
 v.field_right_hands_type = Ros2Aimdk_msgsMsgHandType{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetHandType_Response.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetHandType_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetHandType_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_reponse,w) { return false }
 if !write_Ros2Aimdk_msgsMsgHandType(&v.field_left_hands_type,w) { return false }
 if !write_Ros2Aimdk_msgsMsgHandType(&v.field_right_hands_type,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetHandType_Response.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetHandType_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetHandType_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetHandType_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_reponse=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandType(r,allocator); if !ok { return v,false }
 v.field_left_hands_type=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgHandType(r,allocator); if !ok { return v,false }
 v.field_right_hands_type=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetHandType_Response value.
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
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetHandType_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetHandType_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=154}
 if !write_Ros2Aimdk_msgsSrvGetHandType_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=154}
 if !write_Ros2Aimdk_msgsSrvGetHandType_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetHandType_Response value.
// @details Require the complete 26..154-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetHandType_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetHandType_Response,u32) {
 if len(bytes)<26 || len(bytes)>154 { return Ros2Aimdk_msgsSrvGetHandType_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetHandType_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetHandType_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetMcAction_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Request :: struct {
 // @brief aimdk_msgs/srv/GetMcAction_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetMcAction_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/srv/GetMcAction_Request.
// @details Exact identity UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Request_Codec_Identity :: "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe"
// @brief Original ROS type name for aimdk_msgs/srv/GetMcAction_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Request_Native_Type :: "aimdk_msgs/srv/GetMcAction_Request"
// @brief Selected original native identity for aimdk_msgs/srv/GetMcAction_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetMcAction_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetMcAction_Request :: proc() -> Ros2Aimdk_msgsSrvGetMcAction_Request {
 v: Ros2Aimdk_msgsSrvGetMcAction_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetMcAction_Request.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetMcAction_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetMcAction_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMcAction_Request.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetMcAction_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMcAction_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetMcAction_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetMcAction_Request value.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetMcAction_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetMcAction_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetMcAction_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetMcAction_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetMcAction_Request value.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetMcAction_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMcAction_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsSrvGetMcAction_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetMcAction_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetMcAction_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetMcAction_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
// and is identified by UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Response :: struct {
 // @brief aimdk_msgs/srv/GetMcAction_Response.header: aimdk_msgs/msg/ResponseHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader,
 // @brief aimdk_msgs/srv/GetMcAction_Response.info: aimdk_msgs/msg/McActionInfo.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_info: Ros2Aimdk_msgsMsgMcActionInfo,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetMcAction_Response in bytes.
// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Response_Maximum_Wire_Bytes :: 156
// @brief Canonical codec identity of aimdk_msgs/srv/GetMcAction_Response.
// @details Exact identity UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Response_Codec_Identity :: "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f"
// @brief Original ROS type name for aimdk_msgs/srv/GetMcAction_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Response_Native_Type :: "aimdk_msgs/srv/GetMcAction_Response"
// @brief Selected original native identity for aimdk_msgs/srv/GetMcAction_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMcAction_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetMcAction_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetMcAction_Response :: proc() -> Ros2Aimdk_msgsSrvGetMcAction_Response {
 v: Ros2Aimdk_msgsSrvGetMcAction_Response
 v.field_header = Ros2Aimdk_msgsMsgResponseHeader{}
 v.field_info = Ros2Aimdk_msgsMsgMcActionInfo{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetMcAction_Response.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetMcAction_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetMcAction_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgResponseHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcActionInfo(&v.field_info,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMcAction_Response.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetMcAction_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMcAction_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetMcAction_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgResponseHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcActionInfo(r,allocator); if !ok { return v,false }
 v.field_info=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetMcAction_Response value.
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetMcAction_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetMcAction_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=156}
 if !write_Ros2Aimdk_msgsSrvGetMcAction_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=156}
 if !write_Ros2Aimdk_msgsSrvGetMcAction_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetMcAction_Response value.
// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetMcAction_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMcAction_Response,u32) {
 if len(bytes)<28 || len(bytes)>156 { return Ros2Aimdk_msgsSrvGetMcAction_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetMcAction_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetMcAction_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetMute_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Request :: struct {
 // @brief aimdk_msgs/srv/GetMute_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetMute_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/srv/GetMute_Request.
// @details Exact identity UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Request_Codec_Identity :: "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5"
// @brief Original ROS type name for aimdk_msgs/srv/GetMute_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Request_Native_Type :: "aimdk_msgs/srv/GetMute_Request"
// @brief Selected original native identity for aimdk_msgs/srv/GetMute_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetMute_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetMute_Request :: proc() -> Ros2Aimdk_msgsSrvGetMute_Request {
 v: Ros2Aimdk_msgsSrvGetMute_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetMute_Request.
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
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetMute_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetMute_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMute_Request.
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
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetMute_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMute_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetMute_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetMute_Request value.
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
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetMute_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetMute_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetMute_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetMute_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetMute_Request value.
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
// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetMute_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMute_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsSrvGetMute_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetMute_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetMute_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetMute_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 25..153 bytes
// and is identified by UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Response :: struct {
 // @brief aimdk_msgs/srv/GetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/GetMute_Response.is_mute: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
 field_is_mute: bool,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetMute_Response in bytes.
// @details The inclusive bound is 153 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Response_Maximum_Wire_Bytes :: 153
// @brief Canonical codec identity of aimdk_msgs/srv/GetMute_Response.
// @details Exact identity UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Response_Codec_Identity :: "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42"
// @brief Original ROS type name for aimdk_msgs/srv/GetMute_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Response_Native_Type :: "aimdk_msgs/srv/GetMute_Response"
// @brief Selected original native identity for aimdk_msgs/srv/GetMute_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetMute_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetMute_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetMute_Response :: proc() -> Ros2Aimdk_msgsSrvGetMute_Response {
 v: Ros2Aimdk_msgsSrvGetMute_Response
 v.field_reponse = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_is_mute = false
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetMute_Response.
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
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetMute_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetMute_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_reponse,w) { return false }
 if !put_bool(w,v.field_is_mute) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMute_Response.
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
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetMute_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMute_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetMute_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_reponse=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_mute=bool(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetMute_Response value.
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
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetMute_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetMute_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=153}
 if !write_Ros2Aimdk_msgsSrvGetMute_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=153}
 if !write_Ros2Aimdk_msgsSrvGetMute_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetMute_Response value.
// @details Require the complete 25..153-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetMute_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetMute_Response,u32) {
 if len(bytes)<25 || len(bytes)>153 { return Ros2Aimdk_msgsSrvGetMute_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetMute_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetMute_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetVolume_Request value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and
// is identified by UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Request :: struct {
 // @brief aimdk_msgs/srv/GetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetVolume_Request in bytes.
// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Request_Maximum_Wire_Bytes :: 8
// @brief Canonical codec identity of aimdk_msgs/srv/GetVolume_Request.
// @details Exact identity UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Request_Codec_Identity :: "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b"
// @brief Original ROS type name for aimdk_msgs/srv/GetVolume_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Request_Native_Type :: "aimdk_msgs/srv/GetVolume_Request"
// @brief Selected original native identity for aimdk_msgs/srv/GetVolume_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetVolume_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetVolume_Request :: proc() -> Ros2Aimdk_msgsSrvGetVolume_Request {
 v: Ros2Aimdk_msgsSrvGetVolume_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetVolume_Request.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetVolume_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetVolume_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetVolume_Request.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetVolume_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetVolume_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetVolume_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetVolume_Request value.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetVolume_Request :: proc(v: ^Ros2Aimdk_msgsSrvGetVolume_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetVolume_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=8}
 if !write_Ros2Aimdk_msgsSrvGetVolume_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetVolume_Request value.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetVolume_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetVolume_Request,u32) {
 if len(bytes)<8 || len(bytes)>8 { return Ros2Aimdk_msgsSrvGetVolume_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetVolume_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetVolume_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/GetVolume_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
// and is identified by UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Response :: struct {
 // @brief aimdk_msgs/srv/GetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/GetVolume_Response.audio_volume: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
 field_audio_volume: u32,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/GetVolume_Response in bytes.
// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Response_Maximum_Wire_Bytes :: 156
// @brief Canonical codec identity of aimdk_msgs/srv/GetVolume_Response.
// @details Exact identity UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Response_Codec_Identity :: "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266"
// @brief Original ROS type name for aimdk_msgs/srv/GetVolume_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Response_Native_Type :: "aimdk_msgs/srv/GetVolume_Response"
// @brief Selected original native identity for aimdk_msgs/srv/GetVolume_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvGetVolume_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/GetVolume_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvGetVolume_Response :: proc() -> Ros2Aimdk_msgsSrvGetVolume_Response {
 v: Ros2Aimdk_msgsSrvGetVolume_Response
 v.field_reponse = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_audio_volume = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/GetVolume_Response.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvGetVolume_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetVolume_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_reponse,w) { return false }
 if !put_integer(w,u64(v.field_audio_volume),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetVolume_Response.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvGetVolume_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetVolume_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvGetVolume_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_reponse=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_audio_volume=u32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/GetVolume_Response value.
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
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvGetVolume_Response :: proc(v: ^Ros2Aimdk_msgsSrvGetVolume_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=156}
 if !write_Ros2Aimdk_msgsSrvGetVolume_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=156}
 if !write_Ros2Aimdk_msgsSrvGetVolume_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/GetVolume_Response value.
// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvGetVolume_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvGetVolume_Response,u32) {
 if len(bytes)<28 || len(bytes)>156 { return Ros2Aimdk_msgsSrvGetVolume_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvGetVolume_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvGetVolume_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/LedStripCommand_Request value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request :: struct {
 // @brief aimdk_msgs/srv/LedStripCommand_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/LedStripCommand_Request.led_strip_mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_led_strip_mode: u8,
 // @brief aimdk_msgs/srv/LedStripCommand_Request.r: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_r: u8,
 // @brief aimdk_msgs/srv/LedStripCommand_Request.g: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_g: u8,
 // @brief aimdk_msgs/srv/LedStripCommand_Request.b: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
 field_b: u8,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/LedStripCommand_Request in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of aimdk_msgs/srv/LedStripCommand_Request.
// @details Exact identity UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_Codec_Identity :: "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6"
// @brief Original ROS type name for aimdk_msgs/srv/LedStripCommand_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_Native_Type :: "aimdk_msgs/srv/LedStripCommand_Request"
// @brief Selected original native identity for aimdk_msgs/srv/LedStripCommand_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_Native_Identity :: ""
// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_CONSTANT: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_CONSTANT :: u8(0)
// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_BREATH: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_BREATH :: u8(1)
// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_FLASH: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLASH :: u8(2)
// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_FLOW: original uint8 constant.
// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLOW :: u8(3)
// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_MAX: original uint8 constant.
// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_MAX :: u8(4)
// @brief Construct the declared defaults of aimdk_msgs/srv/LedStripCommand_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvLedStripCommand_Request :: proc() -> Ros2Aimdk_msgsSrvLedStripCommand_Request {
 v: Ros2Aimdk_msgsSrvLedStripCommand_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_led_strip_mode = 0
 v.field_r = 0
 v.field_g = 0
 v.field_b = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/LedStripCommand_Request.
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvLedStripCommand_Request :: proc(v: ^Ros2Aimdk_msgsSrvLedStripCommand_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 if !put_integer(w,u64(v.field_led_strip_mode),1) { return false }
 if !put_integer(w,u64(v.field_r),1) { return false }
 if !put_integer(w,u64(v.field_g),1) { return false }
 if !put_integer(w,u64(v.field_b),1) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/LedStripCommand_Request.
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvLedStripCommand_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvLedStripCommand_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvLedStripCommand_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_led_strip_mode=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_r=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_g=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_b=u8(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/LedStripCommand_Request value.
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvLedStripCommand_Request :: proc(v: ^Ros2Aimdk_msgsSrvLedStripCommand_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Aimdk_msgsSrvLedStripCommand_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Aimdk_msgsSrvLedStripCommand_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/LedStripCommand_Request value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvLedStripCommand_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvLedStripCommand_Request,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Aimdk_msgsSrvLedStripCommand_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvLedStripCommand_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvLedStripCommand_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/LedStripCommand_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 18..18 bytes
// and is identified by UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Response :: struct {
 // @brief aimdk_msgs/srv/LedStripCommand_Response.header: aimdk_msgs/msg/ResponseHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader,
 // @brief aimdk_msgs/srv/LedStripCommand_Response.status_code: uint16.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
 field_status_code: u16,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/LedStripCommand_Response in bytes.
// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Response_Maximum_Wire_Bytes :: 18
// @brief Canonical codec identity of aimdk_msgs/srv/LedStripCommand_Response.
// @details Exact identity UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Response_Codec_Identity :: "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9"
// @brief Original ROS type name for aimdk_msgs/srv/LedStripCommand_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Response_Native_Type :: "aimdk_msgs/srv/LedStripCommand_Response"
// @brief Selected original native identity for aimdk_msgs/srv/LedStripCommand_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvLedStripCommand_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/LedStripCommand_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvLedStripCommand_Response :: proc() -> Ros2Aimdk_msgsSrvLedStripCommand_Response {
 v: Ros2Aimdk_msgsSrvLedStripCommand_Response
 v.field_header = Ros2Aimdk_msgsMsgResponseHeader{}
 v.field_status_code = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/LedStripCommand_Response.
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvLedStripCommand_Response :: proc(v: ^Ros2Aimdk_msgsSrvLedStripCommand_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgResponseHeader(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_status_code),2) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/LedStripCommand_Response.
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvLedStripCommand_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvLedStripCommand_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvLedStripCommand_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgResponseHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,2); if !ok { return v,false }
 v.field_status_code=u16(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/LedStripCommand_Response value.
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvLedStripCommand_Response :: proc(v: ^Ros2Aimdk_msgsSrvLedStripCommand_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=18}
 if !write_Ros2Aimdk_msgsSrvLedStripCommand_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=18}
 if !write_Ros2Aimdk_msgsSrvLedStripCommand_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/LedStripCommand_Response value.
// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvLedStripCommand_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvLedStripCommand_Response,u32) {
 if len(bytes)<18 || len(bytes)>18 { return Ros2Aimdk_msgsSrvLedStripCommand_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvLedStripCommand_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvLedStripCommand_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayEmoji_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 14..14 bytes
// and is identified by UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request :: struct {
 // @brief aimdk_msgs/srv/PlayEmoji_Request.header: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/PlayEmoji_Request.emotion_id: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
 field_emotion_id: u8,
 // @brief aimdk_msgs/srv/PlayEmoji_Request.mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
 field_mode: u8,
 // @brief aimdk_msgs/srv/PlayEmoji_Request.priority: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
 field_priority: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayEmoji_Request in bytes.
// @details The inclusive bound is 14 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_Maximum_Wire_Bytes :: 14
// @brief Canonical codec identity of aimdk_msgs/srv/PlayEmoji_Request.
// @details Exact identity UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_Codec_Identity :: "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43"
// @brief Original ROS type name for aimdk_msgs/srv/PlayEmoji_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_Native_Type :: "aimdk_msgs/srv/PlayEmoji_Request"
// @brief Selected original native identity for aimdk_msgs/srv/PlayEmoji_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_Native_Identity :: ""
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_UNKNOWN: original uint8 constant.
// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_UNKNOWN :: u8(0)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_BLINK: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_BLINK :: u8(1)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CALM_1: original uint8 constant.
// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_1 :: u8(10)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CALM_2: original uint8 constant.
// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_2 :: u8(11)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_GAME: original uint8 constant.
// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_GAME :: u8(20)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_1: original uint8 constant.
// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_1 :: u8(30)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_2: original uint8 constant.
// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_2 :: u8(31)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_3: original uint8 constant.
// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_3 :: u8(32)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_4: original uint8 constant.
// @details Exact admitted value 33. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_4 :: u8(33)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CLOSE: original uint8 constant.
// @details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CLOSE :: u8(40)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_OPEN: original uint8 constant.
// @details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_OPEN :: u8(50)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_BORING_1: original uint8 constant.
// @details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_BORING_1 :: u8(60)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ABNORMAL: original uint8 constant.
// @details Exact admitted value 70. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ABNORMAL :: u8(70)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SLEEPY: original uint8 constant.
// @details Exact admitted value 80. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SLEEPY :: u8(80)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_HAPPY: original uint8 constant.
// @details Exact admitted value 90. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_HAPPY :: u8(90)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEHAPPY_1: original uint8 constant.
// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_1 :: u8(100)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEHAPPY_2: original uint8 constant.
// @details Exact admitted value 101. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_2 :: u8(101)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SAD: original uint8 constant.
// @details Exact admitted value 110. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SAD :: u8(110)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SYMPATHY: original uint8 constant.
// @details Exact admitted value 120. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SYMPATHY :: u8(120)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CONFUSE: original uint8 constant.
// @details Exact admitted value 130. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CONFUSE :: u8(130)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SHOCK: original uint8 constant.
// @details Exact admitted value 140. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SHOCK :: u8(140)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ACTCUTE: original uint8 constant.
// @details Exact admitted value 150. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ACTCUTE :: u8(150)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SERIOUS: original uint8 constant.
// @details Exact admitted value 160. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SERIOUS :: u8(160)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_THINKING: original uint8 constant.
// @details Exact admitted value 170. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_THINKING :: u8(170)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ANGRY: original uint8 constant.
// @details Exact admitted value 180. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ANGRY :: u8(180)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEANGRY: original uint8 constant.
// @details Exact admitted value 190. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEANGRY :: u8(190)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ADORE: original uint8 constant.
// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ADORE :: u8(200)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEADORE: original uint8 constant.
// @details Exact admitted value 210. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEADORE :: u8(210)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CHARGE: original uint8 constant.
// @details Exact admitted value 220. This constant occupies no field bytes and is not an authority or operation
// selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CHARGE :: u8(220)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_MODE_ONCE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_ONCE :: u8(1)
// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_MODE_LOOP: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_LOOP :: u8(2)
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayEmoji_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayEmoji_Request :: proc() -> Ros2Aimdk_msgsSrvPlayEmoji_Request {
 v: Ros2Aimdk_msgsSrvPlayEmoji_Request
 v.field_header = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_emotion_id = 0
 v.field_mode = 0
 v.field_priority = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayEmoji_Request.
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayEmoji_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayEmoji_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_header,w) { return false }
 if !put_integer(w,u64(v.field_emotion_id),1) { return false }
 if !put_integer(w,u64(v.field_mode),1) { return false }
 if !put_integer(w,u64(v.field_priority),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayEmoji_Request.
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayEmoji_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayEmoji_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayEmoji_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_emotion_id=u8(b)
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=u8(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayEmoji_Request value.
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayEmoji_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayEmoji_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=14}
 if !write_Ros2Aimdk_msgsSrvPlayEmoji_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=14}
 if !write_Ros2Aimdk_msgsSrvPlayEmoji_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayEmoji_Request value.
// @details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayEmoji_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayEmoji_Request,u32) {
 if len(bytes)<14 || len(bytes)>14 { return Ros2Aimdk_msgsSrvPlayEmoji_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayEmoji_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayEmoji_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayEmoji_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
// and is identified by UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Response :: struct {
 // @brief aimdk_msgs/srv/PlayEmoji_Response.header: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/PlayEmoji_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief aimdk_msgs/srv/PlayEmoji_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayEmoji_Response in bytes.
// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Response_Maximum_Wire_Bytes :: 285
// @brief Canonical codec identity of aimdk_msgs/srv/PlayEmoji_Response.
// @details Exact identity UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Response_Codec_Identity :: "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9"
// @brief Original ROS type name for aimdk_msgs/srv/PlayEmoji_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Response_Native_Type :: "aimdk_msgs/srv/PlayEmoji_Response"
// @brief Selected original native identity for aimdk_msgs/srv/PlayEmoji_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayEmoji_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayEmoji_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayEmoji_Response :: proc() -> Ros2Aimdk_msgsSrvPlayEmoji_Response {
 v: Ros2Aimdk_msgsSrvPlayEmoji_Response
 v.field_header = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayEmoji_Response.
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayEmoji_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayEmoji_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_header,w) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayEmoji_Response.
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayEmoji_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayEmoji_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayEmoji_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayEmoji_Response value.
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayEmoji_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayEmoji_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=285}
 if !write_Ros2Aimdk_msgsSrvPlayEmoji_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=285}
 if !write_Ros2Aimdk_msgsSrvPlayEmoji_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayEmoji_Response value.
// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayEmoji_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayEmoji_Response,u32) {
 if len(bytes)<29 || len(bytes)>285 { return Ros2Aimdk_msgsSrvPlayEmoji_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayEmoji_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayEmoji_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayMediaFile_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 30..414 bytes
// and is identified by UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Request :: struct {
 // @brief aimdk_msgs/srv/PlayMediaFile_Request.header: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/PlayMediaFile_Request.media_file_req: aimdk_msgs/msg/PlayMediaFileRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
 field_media_file_req: Ros2Aimdk_msgsMsgPlayMediaFileRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayMediaFile_Request in bytes.
// @details The inclusive bound is 414 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Request_Maximum_Wire_Bytes :: 414
// @brief Canonical codec identity of aimdk_msgs/srv/PlayMediaFile_Request.
// @details Exact identity UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Request_Codec_Identity :: "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c"
// @brief Original ROS type name for aimdk_msgs/srv/PlayMediaFile_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Request_Native_Type :: "aimdk_msgs/srv/PlayMediaFile_Request"
// @brief Selected original native identity for aimdk_msgs/srv/PlayMediaFile_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayMediaFile_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayMediaFile_Request :: proc() -> Ros2Aimdk_msgsSrvPlayMediaFile_Request {
 v: Ros2Aimdk_msgsSrvPlayMediaFile_Request
 v.field_header = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_media_file_req = Ros2Aimdk_msgsMsgPlayMediaFileRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayMediaFile_Request.
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayMediaFile_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayMediaFile_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgPlayMediaFileRequest(&v.field_media_file_req,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayMediaFile_Request.
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayMediaFile_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayMediaFile_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayMediaFile_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgPlayMediaFileRequest(r,allocator); if !ok { return v,false }
 v.field_media_file_req=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayMediaFile_Request value.
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayMediaFile_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayMediaFile_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=414}
 if !write_Ros2Aimdk_msgsSrvPlayMediaFile_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=414}
 if !write_Ros2Aimdk_msgsSrvPlayMediaFile_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayMediaFile_Request value.
// @details Require the complete 30..414-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayMediaFile_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayMediaFile_Request,u32) {
 if len(bytes)<30 || len(bytes)>414 { return Ros2Aimdk_msgsSrvPlayMediaFile_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayMediaFile_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayMediaFile_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayMediaFile_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 50..690 bytes
// and is identified by UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Response :: struct {
 // @brief aimdk_msgs/srv/PlayMediaFile_Response.header: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/PlayMediaFile_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
 field_tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayMediaFile_Response in bytes.
// @details The inclusive bound is 690 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Response_Maximum_Wire_Bytes :: 690
// @brief Canonical codec identity of aimdk_msgs/srv/PlayMediaFile_Response.
// @details Exact identity UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Response_Codec_Identity :: "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099"
// @brief Original ROS type name for aimdk_msgs/srv/PlayMediaFile_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Response_Native_Type :: "aimdk_msgs/srv/PlayMediaFile_Response"
// @brief Selected original native identity for aimdk_msgs/srv/PlayMediaFile_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayMediaFile_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayMediaFile_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayMediaFile_Response :: proc() -> Ros2Aimdk_msgsSrvPlayMediaFile_Response {
 v: Ros2Aimdk_msgsSrvPlayMediaFile_Response
 v.field_header = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_tts_resp = Ros2Aimdk_msgsMsgPlayTtsResponse{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayMediaFile_Response.
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayMediaFile_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayMediaFile_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgPlayTtsResponse(&v.field_tts_resp,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayMediaFile_Response.
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayMediaFile_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayMediaFile_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayMediaFile_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgPlayTtsResponse(r,allocator); if !ok { return v,false }
 v.field_tts_resp=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayMediaFile_Response value.
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayMediaFile_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayMediaFile_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=690}
 if !write_Ros2Aimdk_msgsSrvPlayMediaFile_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=690}
 if !write_Ros2Aimdk_msgsSrvPlayMediaFile_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayMediaFile_Response value.
// @details Require the complete 50..690-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayMediaFile_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayMediaFile_Response,u32) {
 if len(bytes)<50 || len(bytes)>690 { return Ros2Aimdk_msgsSrvPlayMediaFile_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayMediaFile_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayMediaFile_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayTts_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 26..410 bytes
// and is identified by UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Request :: struct {
 // @brief aimdk_msgs/srv/PlayTts_Request.header: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/PlayTts_Request.tts_req: aimdk_msgs/msg/PlayTtsRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
 field_tts_req: Ros2Aimdk_msgsMsgPlayTtsRequest,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayTts_Request in bytes.
// @details The inclusive bound is 410 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Request_Maximum_Wire_Bytes :: 410
// @brief Canonical codec identity of aimdk_msgs/srv/PlayTts_Request.
// @details Exact identity UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Request_Codec_Identity :: "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7"
// @brief Original ROS type name for aimdk_msgs/srv/PlayTts_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Request_Native_Type :: "aimdk_msgs/srv/PlayTts_Request"
// @brief Selected original native identity for aimdk_msgs/srv/PlayTts_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayTts_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayTts_Request :: proc() -> Ros2Aimdk_msgsSrvPlayTts_Request {
 v: Ros2Aimdk_msgsSrvPlayTts_Request
 v.field_header = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_tts_req = Ros2Aimdk_msgsMsgPlayTtsRequest{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayTts_Request.
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
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayTts_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayTts_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgPlayTtsRequest(&v.field_tts_req,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayTts_Request.
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
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayTts_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayTts_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayTts_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgPlayTtsRequest(r,allocator); if !ok { return v,false }
 v.field_tts_req=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayTts_Request value.
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
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayTts_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayTts_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=410}
 if !write_Ros2Aimdk_msgsSrvPlayTts_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=410}
 if !write_Ros2Aimdk_msgsSrvPlayTts_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayTts_Request value.
// @details Require the complete 26..410-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayTts_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayTts_Request,u32) {
 if len(bytes)<26 || len(bytes)>410 { return Ros2Aimdk_msgsSrvPlayTts_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayTts_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayTts_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayTts_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 50..690 bytes
// and is identified by UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Response :: struct {
 // @brief aimdk_msgs/srv/PlayTts_Response.header: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/PlayTts_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
 field_tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayTts_Response in bytes.
// @details The inclusive bound is 690 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Response_Maximum_Wire_Bytes :: 690
// @brief Canonical codec identity of aimdk_msgs/srv/PlayTts_Response.
// @details Exact identity UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Response_Codec_Identity :: "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a"
// @brief Original ROS type name for aimdk_msgs/srv/PlayTts_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Response_Native_Type :: "aimdk_msgs/srv/PlayTts_Response"
// @brief Selected original native identity for aimdk_msgs/srv/PlayTts_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayTts_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayTts_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayTts_Response :: proc() -> Ros2Aimdk_msgsSrvPlayTts_Response {
 v: Ros2Aimdk_msgsSrvPlayTts_Response
 v.field_header = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_tts_resp = Ros2Aimdk_msgsMsgPlayTtsResponse{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayTts_Response.
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
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayTts_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayTts_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgPlayTtsResponse(&v.field_tts_resp,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayTts_Response.
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
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayTts_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayTts_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayTts_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgPlayTtsResponse(r,allocator); if !ok { return v,false }
 v.field_tts_resp=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayTts_Response value.
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
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayTts_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayTts_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=690}
 if !write_Ros2Aimdk_msgsSrvPlayTts_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=690}
 if !write_Ros2Aimdk_msgsSrvPlayTts_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayTts_Response value.
// @details Require the complete 50..690-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayTts_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayTts_Response,u32) {
 if len(bytes)<50 || len(bytes)>690 { return Ros2Aimdk_msgsSrvPlayTts_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayTts_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayTts_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideo_Request value.
// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..145 bytes
// and is identified by UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request :: struct {
 // @brief aimdk_msgs/srv/PlayVideo_Request.header: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/PlayVideo_Request.video_path: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
 field_video_path: string,
 // @brief aimdk_msgs/srv/PlayVideo_Request.mode: uint8.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
 field_mode: u8,
 // @brief aimdk_msgs/srv/PlayVideo_Request.priority: int32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
 field_priority: i32,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideo_Request in bytes.
// @details The inclusive bound is 145 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request_Maximum_Wire_Bytes :: 145
// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideo_Request.
// @details Exact identity UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request_Codec_Identity :: "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878"
// @brief Original ROS type name for aimdk_msgs/srv/PlayVideo_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request_Native_Type :: "aimdk_msgs/srv/PlayVideo_Request"
// @brief Selected original native identity for aimdk_msgs/srv/PlayVideo_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request_Native_Identity :: ""
// @brief aimdk_msgs/srv/PlayVideo_Request.EMOTION_MODE_ONCE: original uint8 constant.
// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_ONCE :: u8(1)
// @brief aimdk_msgs/srv/PlayVideo_Request.EMOTION_MODE_LOOP: original uint8 constant.
// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_LOOP :: u8(2)
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayVideo_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayVideo_Request :: proc() -> Ros2Aimdk_msgsSrvPlayVideo_Request {
 v: Ros2Aimdk_msgsSrvPlayVideo_Request
 v.field_header = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_video_path = ""
 v.field_mode = 0
 v.field_priority = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayVideo_Request.
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayVideo_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayVideo_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_header,w) { return false }
 if !put_string(w,v.field_video_path,128) { return false }
 if !put_integer(w,u64(v.field_mode),1) { return false }
 if !put_integer(w,u64(v.field_priority),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideo_Request.
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayVideo_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayVideo_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayVideo_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_video_path=b
 }
 {
 b,ok:=get_integer(r,1); if !ok { return v,false }
 v.field_mode=u8(b)
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_priority=i32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayVideo_Request value.
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayVideo_Request :: proc(v: ^Ros2Aimdk_msgsSrvPlayVideo_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=145}
 if !write_Ros2Aimdk_msgsSrvPlayVideo_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=145}
 if !write_Ros2Aimdk_msgsSrvPlayVideo_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideo_Request value.
// @details Require the complete 17..145-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayVideo_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayVideo_Request,u32) {
 if len(bytes)<17 || len(bytes)>145 { return Ros2Aimdk_msgsSrvPlayVideo_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayVideo_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayVideo_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideo_Response value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
// and is identified by UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Response :: struct {
 // @brief aimdk_msgs/srv/PlayVideo_Response.header: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/PlayVideo_Response.success: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
 field_success: bool,
 // @brief aimdk_msgs/srv/PlayVideo_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no
 // embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
 field_message: string,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideo_Response in bytes.
// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Response_Maximum_Wire_Bytes :: 285
// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideo_Response.
// @details Exact identity UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Response_Codec_Identity :: "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627"
// @brief Original ROS type name for aimdk_msgs/srv/PlayVideo_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Response_Native_Type :: "aimdk_msgs/srv/PlayVideo_Response"
// @brief Selected original native identity for aimdk_msgs/srv/PlayVideo_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvPlayVideo_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/PlayVideo_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvPlayVideo_Response :: proc() -> Ros2Aimdk_msgsSrvPlayVideo_Response {
 v: Ros2Aimdk_msgsSrvPlayVideo_Response
 v.field_header = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_success = false
 v.field_message = ""
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/PlayVideo_Response.
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvPlayVideo_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayVideo_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_header,w) { return false }
 if !put_bool(w,v.field_success) { return false }
 if !put_string(w,v.field_message,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideo_Response.
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvPlayVideo_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayVideo_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvPlayVideo_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_success=bool(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_message=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/PlayVideo_Response value.
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvPlayVideo_Response :: proc(v: ^Ros2Aimdk_msgsSrvPlayVideo_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=285}
 if !write_Ros2Aimdk_msgsSrvPlayVideo_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=285}
 if !write_Ros2Aimdk_msgsSrvPlayVideo_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideo_Response value.
// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvPlayVideo_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvPlayVideo_Response,u32) {
 if len(bytes)<29 || len(bytes)>285 { return Ros2Aimdk_msgsSrvPlayVideo_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvPlayVideo_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvPlayVideo_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..544 bytes
// and is identified by UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: struct {
 // @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.header: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.contents: aimdk_msgs/msg/AgentProperties.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
 field_contents: Ros2Aimdk_msgsMsgAgentProperties,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetAgentPropertiesRequest_Request in bytes.
// @details The inclusive bound is 544 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_Maximum_Wire_Bytes :: 544
// @brief Canonical codec identity of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
// @details Exact identity UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_Codec_Identity :: "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec"
// @brief Original ROS type name for aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_Native_Type :: "aimdk_msgs/srv/SetAgentPropertiesRequest_Request"
// @brief Selected original native identity for aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: proc() -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
 v: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
 v.field_header = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_contents = Ros2Aimdk_msgsMsgAgentProperties{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgAgentProperties(&v.field_contents,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgAgentProperties(r,allocator); if !ok { return v,false }
 v.field_contents=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=544}
 if !write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=544}
 if !write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
// @details Require the complete 12..544-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,u32) {
 if len(bytes)<12 || len(bytes)>544 { return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
// and is identified by UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: struct {
 // @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Response.header: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetAgentPropertiesRequest_Response in bytes.
// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response_Maximum_Wire_Bytes :: 152
// @brief Canonical codec identity of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
// @details Exact identity UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response_Codec_Identity :: "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b"
// @brief Original ROS type name for aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response_Native_Type :: "aimdk_msgs/srv/SetAgentPropertiesRequest_Response"
// @brief Selected original native identity for aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: proc() -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
 v: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
 v.field_header = Ros2Aimdk_msgsMsgCommonResponse{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_header,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=152}
 if !write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=152}
 if !write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
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
// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response,u32) {
 if len(bytes)<24 || len(bytes)>152 { return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMcAction_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
// and is identified by UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Request :: struct {
 // @brief aimdk_msgs/srv/SetMcAction_Request.header: aimdk_msgs/msg/RequestHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgRequestHeader,
 // @brief aimdk_msgs/srv/SetMcAction_Request.command: aimdk_msgs/msg/McActionCommand.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
 field_command: Ros2Aimdk_msgsMsgMcActionCommand,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcAction_Request in bytes.
// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Request_Maximum_Wire_Bytes :: 144
// @brief Canonical codec identity of aimdk_msgs/srv/SetMcAction_Request.
// @details Exact identity UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Request_Codec_Identity :: "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5"
// @brief Original ROS type name for aimdk_msgs/srv/SetMcAction_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Request_Native_Type :: "aimdk_msgs/srv/SetMcAction_Request"
// @brief Selected original native identity for aimdk_msgs/srv/SetMcAction_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMcAction_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMcAction_Request :: proc() -> Ros2Aimdk_msgsSrvSetMcAction_Request {
 v: Ros2Aimdk_msgsSrvSetMcAction_Request
 v.field_header = Ros2Aimdk_msgsMsgRequestHeader{}
 v.field_command = Ros2Aimdk_msgsMsgMcActionCommand{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMcAction_Request.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMcAction_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMcAction_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgRequestHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcActionCommand(&v.field_command,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcAction_Request.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMcAction_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcAction_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMcAction_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgRequestHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcActionCommand(r,allocator); if !ok { return v,false }
 v.field_command=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMcAction_Request value.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMcAction_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMcAction_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=144}
 if !write_Ros2Aimdk_msgsSrvSetMcAction_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=144}
 if !write_Ros2Aimdk_msgsSrvSetMcAction_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMcAction_Request value.
// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMcAction_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcAction_Request,u32) {
 if len(bytes)<16 || len(bytes)>144 { return Ros2Aimdk_msgsSrvSetMcAction_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMcAction_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMcAction_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMcAction_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
// and is identified by UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Response :: struct {
 // @brief aimdk_msgs/srv/SetMcAction_Response.response: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonResponse,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcAction_Response in bytes.
// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Response_Maximum_Wire_Bytes :: 152
// @brief Canonical codec identity of aimdk_msgs/srv/SetMcAction_Response.
// @details Exact identity UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Response_Codec_Identity :: "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f"
// @brief Original ROS type name for aimdk_msgs/srv/SetMcAction_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Response_Native_Type :: "aimdk_msgs/srv/SetMcAction_Response"
// @brief Selected original native identity for aimdk_msgs/srv/SetMcAction_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcAction_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMcAction_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMcAction_Response :: proc() -> Ros2Aimdk_msgsSrvSetMcAction_Response {
 v: Ros2Aimdk_msgsSrvSetMcAction_Response
 v.field_response = Ros2Aimdk_msgsMsgCommonResponse{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMcAction_Response.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMcAction_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMcAction_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_response,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcAction_Response.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMcAction_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcAction_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMcAction_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_response=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMcAction_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMcAction_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMcAction_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=152}
 if !write_Ros2Aimdk_msgsSrvSetMcAction_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=152}
 if !write_Ros2Aimdk_msgsSrvSetMcAction_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMcAction_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMcAction_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcAction_Response,u32) {
 if len(bytes)<24 || len(bytes)>152 { return Ros2Aimdk_msgsSrvSetMcAction_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMcAction_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMcAction_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMcInputSource_Request value.
// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
// and is identified by UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Request :: struct {
 // @brief aimdk_msgs/srv/SetMcInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/SetMcInputSource_Request.action: aimdk_msgs/msg/McInputAction.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_action: Ros2Aimdk_msgsMsgMcInputAction,
 // @brief aimdk_msgs/srv/SetMcInputSource_Request.input_source: aimdk_msgs/msg/McInputSource.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
 field_input_source: Ros2Aimdk_msgsMsgMcInputSource,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcInputSource_Request in bytes.
// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Request_Maximum_Wire_Bytes :: 152
// @brief Canonical codec identity of aimdk_msgs/srv/SetMcInputSource_Request.
// @details Exact identity UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Request_Codec_Identity :: "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021"
// @brief Original ROS type name for aimdk_msgs/srv/SetMcInputSource_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Request_Native_Type :: "aimdk_msgs/srv/SetMcInputSource_Request"
// @brief Selected original native identity for aimdk_msgs/srv/SetMcInputSource_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMcInputSource_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMcInputSource_Request :: proc() -> Ros2Aimdk_msgsSrvSetMcInputSource_Request {
 v: Ros2Aimdk_msgsSrvSetMcInputSource_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_action = Ros2Aimdk_msgsMsgMcInputAction{}
 v.field_input_source = Ros2Aimdk_msgsMsgMcInputSource{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMcInputSource_Request.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMcInputSource_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMcInputSource_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcInputAction(&v.field_action,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcInputSource(&v.field_input_source,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcInputSource_Request.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMcInputSource_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcInputSource_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMcInputSource_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcInputAction(r,allocator); if !ok { return v,false }
 v.field_action=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcInputSource(r,allocator); if !ok { return v,false }
 v.field_input_source=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMcInputSource_Request value.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMcInputSource_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMcInputSource_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=152}
 if !write_Ros2Aimdk_msgsSrvSetMcInputSource_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=152}
 if !write_Ros2Aimdk_msgsSrvSetMcInputSource_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMcInputSource_Request value.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMcInputSource_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcInputSource_Request,u32) {
 if len(bytes)<24 || len(bytes)>152 { return Ros2Aimdk_msgsSrvSetMcInputSource_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMcInputSource_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMcInputSource_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMcInputSource_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
// and is identified by UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Response :: struct {
 // @brief aimdk_msgs/srv/SetMcInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonTaskResponse,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcInputSource_Response in bytes.
// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Response_Maximum_Wire_Bytes :: 28
// @brief Canonical codec identity of aimdk_msgs/srv/SetMcInputSource_Response.
// @details Exact identity UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Response_Codec_Identity :: "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb"
// @brief Original ROS type name for aimdk_msgs/srv/SetMcInputSource_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Response_Native_Type :: "aimdk_msgs/srv/SetMcInputSource_Response"
// @brief Selected original native identity for aimdk_msgs/srv/SetMcInputSource_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcInputSource_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMcInputSource_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMcInputSource_Response :: proc() -> Ros2Aimdk_msgsSrvSetMcInputSource_Response {
 v: Ros2Aimdk_msgsSrvSetMcInputSource_Response
 v.field_response = Ros2Aimdk_msgsMsgCommonTaskResponse{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMcInputSource_Response.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMcInputSource_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMcInputSource_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonTaskResponse(&v.field_response,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcInputSource_Response.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMcInputSource_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcInputSource_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMcInputSource_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonTaskResponse(r,allocator); if !ok { return v,false }
 v.field_response=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMcInputSource_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMcInputSource_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMcInputSource_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=28}
 if !write_Ros2Aimdk_msgsSrvSetMcInputSource_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=28}
 if !write_Ros2Aimdk_msgsSrvSetMcInputSource_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMcInputSource_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMcInputSource_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcInputSource_Response,u32) {
 if len(bytes)<28 || len(bytes)>28 { return Ros2Aimdk_msgsSrvSetMcInputSource_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMcInputSource_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMcInputSource_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMcPresetMotion_Request value.
// @details All 5 declared fields are retained in source order. The canonical representation occupies 21..149 bytes
// and is identified by UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Request :: struct {
 // @brief aimdk_msgs/srv/SetMcPresetMotion_Request.header: aimdk_msgs/msg/RequestHeader.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgRequestHeader,
 // @brief aimdk_msgs/srv/SetMcPresetMotion_Request.area: aimdk_msgs/msg/McControlArea.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
 field_area: Ros2Aimdk_msgsMsgMcControlArea,
 // @brief aimdk_msgs/srv/SetMcPresetMotion_Request.motion: aimdk_msgs/msg/McPresetMotion.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
 field_motion: Ros2Aimdk_msgsMsgMcPresetMotion,
 // @brief aimdk_msgs/srv/SetMcPresetMotion_Request.interrupt: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
 field_interrupt: bool,
 // @brief aimdk_msgs/srv/SetMcPresetMotion_Request.ani_path: string; each string is 0..128 bytes; strict UTF-8 with
 // no embedded NUL.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
 field_ani_path: string,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcPresetMotion_Request in bytes.
// @details The inclusive bound is 149 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Request_Maximum_Wire_Bytes :: 149
// @brief Canonical codec identity of aimdk_msgs/srv/SetMcPresetMotion_Request.
// @details Exact identity UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Request_Codec_Identity :: "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea"
// @brief Original ROS type name for aimdk_msgs/srv/SetMcPresetMotion_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Request_Native_Type :: "aimdk_msgs/srv/SetMcPresetMotion_Request"
// @brief Selected original native identity for aimdk_msgs/srv/SetMcPresetMotion_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMcPresetMotion_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request :: proc() -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
 v: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
 v.field_header = Ros2Aimdk_msgsMsgRequestHeader{}
 v.field_area = Ros2Aimdk_msgsMsgMcControlArea{}
 v.field_motion = Ros2Aimdk_msgsMsgMcPresetMotion{}
 v.field_interrupt = false
 v.field_ani_path = ""
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMcPresetMotion_Request.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgRequestHeader(&v.field_header,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcControlArea(&v.field_area,w) { return false }
 if !write_Ros2Aimdk_msgsMsgMcPresetMotion(&v.field_motion,w) { return false }
 if !put_bool(w,v.field_interrupt) { return false }
 if !put_string(w,v.field_ani_path,128) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcPresetMotion_Request.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgRequestHeader(r,allocator); if !ok { return v,false }
 v.field_header=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcControlArea(r,allocator); if !ok { return v,false }
 v.field_area=b
 }
 {
 b,ok:=read_Ros2Aimdk_msgsMsgMcPresetMotion(r,allocator); if !ok { return v,false }
 v.field_motion=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_interrupt=bool(b)
 }
 {
 b,ok:=get_string(r,128); if !ok { return v,false }
 v.field_ani_path=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMcPresetMotion_Request value.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=149}
 if !write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=149}
 if !write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMcPresetMotion_Request value.
// @details Require the complete 21..149-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,u32) {
 if len(bytes)<21 || len(bytes)>149 { return Ros2Aimdk_msgsSrvSetMcPresetMotion_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMcPresetMotion_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMcPresetMotion_Response value.
// @details All 1 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
// and is identified by UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Response :: struct {
 // @brief aimdk_msgs/srv/SetMcPresetMotion_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonTaskResponse,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcPresetMotion_Response in bytes.
// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Response_Maximum_Wire_Bytes :: 28
// @brief Canonical codec identity of aimdk_msgs/srv/SetMcPresetMotion_Response.
// @details Exact identity UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Response_Codec_Identity :: "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85"
// @brief Original ROS type name for aimdk_msgs/srv/SetMcPresetMotion_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Response_Native_Type :: "aimdk_msgs/srv/SetMcPresetMotion_Response"
// @brief Selected original native identity for aimdk_msgs/srv/SetMcPresetMotion_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMcPresetMotion_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMcPresetMotion_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response :: proc() -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
 v: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
 v.field_response = Ros2Aimdk_msgsMsgCommonTaskResponse{}
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMcPresetMotion_Response.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMcPresetMotion_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonTaskResponse(&v.field_response,w) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcPresetMotion_Response.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcPresetMotion_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonTaskResponse(r,allocator); if !ok { return v,false }
 v.field_response=b
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMcPresetMotion_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMcPresetMotion_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=28}
 if !write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=28}
 if !write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMcPresetMotion_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMcPresetMotion_Response,u32) {
 if len(bytes)<28 || len(bytes)>28 { return Ros2Aimdk_msgsSrvSetMcPresetMotion_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMcPresetMotion_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMute_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 9..9 bytes and
// is identified by UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Request :: struct {
 // @brief aimdk_msgs/srv/SetMute_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/SetMute_Request.is_mute: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
 field_is_mute: bool,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMute_Request in bytes.
// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Request_Maximum_Wire_Bytes :: 9
// @brief Canonical codec identity of aimdk_msgs/srv/SetMute_Request.
// @details Exact identity UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Request_Codec_Identity :: "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3"
// @brief Original ROS type name for aimdk_msgs/srv/SetMute_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Request_Native_Type :: "aimdk_msgs/srv/SetMute_Request"
// @brief Selected original native identity for aimdk_msgs/srv/SetMute_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMute_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMute_Request :: proc() -> Ros2Aimdk_msgsSrvSetMute_Request {
 v: Ros2Aimdk_msgsSrvSetMute_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_is_mute = false
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMute_Request.
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
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMute_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMute_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 if !put_bool(w,v.field_is_mute) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMute_Request.
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
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMute_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMute_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMute_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_mute=bool(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMute_Request value.
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
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMute_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetMute_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=9}
 if !write_Ros2Aimdk_msgsSrvSetMute_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=9}
 if !write_Ros2Aimdk_msgsSrvSetMute_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMute_Request value.
// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and trailing
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
// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMute_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMute_Request,u32) {
 if len(bytes)<9 || len(bytes)>9 { return Ros2Aimdk_msgsSrvSetMute_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMute_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMute_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetMute_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 25..153 bytes
// and is identified by UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Response :: struct {
 // @brief aimdk_msgs/srv/SetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/SetMute_Response.is_mute: bool.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
 field_is_mute: bool,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetMute_Response in bytes.
// @details The inclusive bound is 153 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Response_Maximum_Wire_Bytes :: 153
// @brief Canonical codec identity of aimdk_msgs/srv/SetMute_Response.
// @details Exact identity UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50 binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Response_Codec_Identity :: "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50"
// @brief Original ROS type name for aimdk_msgs/srv/SetMute_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Response_Native_Type :: "aimdk_msgs/srv/SetMute_Response"
// @brief Selected original native identity for aimdk_msgs/srv/SetMute_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetMute_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetMute_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetMute_Response :: proc() -> Ros2Aimdk_msgsSrvSetMute_Response {
 v: Ros2Aimdk_msgsSrvSetMute_Response
 v.field_reponse = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_is_mute = false
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetMute_Response.
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
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetMute_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMute_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_reponse,w) { return false }
 if !put_bool(w,v.field_is_mute) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMute_Response.
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
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetMute_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMute_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetMute_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_reponse=b
 }
 {
 b,ok:=get_bool(r); if !ok { return v,false }
 v.field_is_mute=bool(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetMute_Response value.
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
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetMute_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetMute_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=153}
 if !write_Ros2Aimdk_msgsSrvSetMute_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=153}
 if !write_Ros2Aimdk_msgsSrvSetMute_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetMute_Response value.
// @details Require the complete 25..153-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetMute_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetMute_Response,u32) {
 if len(bytes)<25 || len(bytes)>153 { return Ros2Aimdk_msgsSrvSetMute_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetMute_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetMute_Response{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetVolume_Request value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
// and is identified by UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Request :: struct {
 // @brief aimdk_msgs/srv/SetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest,
 // @brief aimdk_msgs/srv/SetVolume_Request.audio_volume: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
 field_audio_volume: u32,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetVolume_Request in bytes.
// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Request_Maximum_Wire_Bytes :: 12
// @brief Canonical codec identity of aimdk_msgs/srv/SetVolume_Request.
// @details Exact identity UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Request_Codec_Identity :: "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad"
// @brief Original ROS type name for aimdk_msgs/srv/SetVolume_Request.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Request_Native_Type :: "aimdk_msgs/srv/SetVolume_Request"
// @brief Selected original native identity for aimdk_msgs/srv/SetVolume_Request.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Request_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetVolume_Request.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetVolume_Request :: proc() -> Ros2Aimdk_msgsSrvSetVolume_Request {
 v: Ros2Aimdk_msgsSrvSetVolume_Request
 v.field_request = Ros2Aimdk_msgsMsgCommonRequest{}
 v.field_audio_volume = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetVolume_Request.
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
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetVolume_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetVolume_Request, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonRequest(&v.field_request,w) { return false }
 if !put_integer(w,u64(v.field_audio_volume),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetVolume_Request.
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
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetVolume_Request :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetVolume_Request,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetVolume_Request()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonRequest(r,allocator); if !ok { return v,false }
 v.field_request=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_audio_volume=u32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetVolume_Request value.
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
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetVolume_Request :: proc(v: ^Ros2Aimdk_msgsSrvSetVolume_Request, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=12}
 if !write_Ros2Aimdk_msgsSrvSetVolume_Request(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=12}
 if !write_Ros2Aimdk_msgsSrvSetVolume_Request(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetVolume_Request value.
// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetVolume_Request :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetVolume_Request,u32) {
 if len(bytes)<12 || len(bytes)>12 { return Ros2Aimdk_msgsSrvSetVolume_Request{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetVolume_Request(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetVolume_Request{},reader.code }
 return value,0
}
// @brief Complete ROS 2 aimdk_msgs/srv/SetVolume_Response value.
// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
// and is identified by UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e.
// @native No native identity is established by this source record.
// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
// subscriber, service or Action owner.
// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
// readers/writers must not be shared during a call.
// @permissions None for construction or pure encoding; transport needs a separate exact grant.
// @version The selected finite schema profile fixes field order, bounds and constants.
// @see share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Response :: struct {
 // @brief aimdk_msgs/srv/SetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse,
 // @brief aimdk_msgs/srv/SetVolume_Response.audio_volume: uint32.
 // @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 // original field position and signedness; invalid bounds fail instead of truncating the value.
 // @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 // frame conversion or normalization.
 // @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 // allocator ownership follow the enclosing decode function.
 // @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
 field_audio_volume: u32,
}
// @brief Maximum canonical extent of aimdk_msgs/srv/SetVolume_Response in bytes.
// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
// reservation.
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Response_Maximum_Wire_Bytes :: 156
// @brief Canonical codec identity of aimdk_msgs/srv/SetVolume_Response.
// @details Exact identity UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e binds field
// order, shape and bounds. It does not replace the native type identity.
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Response_Codec_Identity :: "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e"
// @brief Original ROS type name for aimdk_msgs/srv/SetVolume_Response.
// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Response_Native_Type :: "aimdk_msgs/srv/SetVolume_Response"
// @brief Selected original native identity for aimdk_msgs/srv/SetVolume_Response.
// @details Absent: this source profile establishes no native identity.
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
Ros2Aimdk_msgsSrvSetVolume_Response_Native_Identity :: ""
// @brief Construct the declared defaults of aimdk_msgs/srv/SetVolume_Response.
// @details Initialize every field without transport access. Fixed arrays retain their exact shape; sequence and
// string defaults are empty unless the schema declares a supported scalar default.
// @return A fresh ordinary value with all generated defaults.
// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
// synchronous encoding; do not share mutable cursors during a call.
// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
init_Ros2Aimdk_msgsSrvSetVolume_Response :: proc() -> Ros2Aimdk_msgsSrvSetVolume_Response {
 v: Ros2Aimdk_msgsSrvSetVolume_Response
 v.field_reponse = Ros2Aimdk_msgsMsgCommonResponse{}
 v.field_audio_volume = 0
 return v
}
// @brief Append every canonical field of aimdk_msgs/srv/SetVolume_Response.
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
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
write_Ros2Aimdk_msgsSrvSetVolume_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetVolume_Response, w: ^Writer) -> bool {
 if !write_Ros2Aimdk_msgsMsgCommonResponse(&v.field_reponse,w) { return false }
 if !put_integer(w,u64(v.field_audio_volume),4) { return false }
 return true
}
// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetVolume_Response.
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
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
read_Ros2Aimdk_msgsSrvSetVolume_Response :: proc(r: ^Reader, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetVolume_Response,bool) {
 v:=init_Ros2Aimdk_msgsSrvSetVolume_Response()
 {
 b,ok:=read_Ros2Aimdk_msgsMsgCommonResponse(r,allocator); if !ok { return v,false }
 v.field_reponse=b
 }
 {
 b,ok:=get_integer(r,4); if !ok { return v,false }
 v.field_audio_volume=u32(b)
 }
 return v,true
}
// @brief Encode one complete aimdk_msgs/srv/SetVolume_Response value.
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
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
encode_Ros2Aimdk_msgsSrvSetVolume_Response :: proc(v: ^Ros2Aimdk_msgsSrvSetVolume_Response, output: []u8) -> ([]u8,u32) {
 measure:=Writer{measuring=true,limit=156}
 if !write_Ros2Aimdk_msgsSrvSetVolume_Response(v,&measure) { return nil,measure.code }
 if len(output)<measure.position { return nil,90 }
 writer:=Writer{storage=output,limit=156}
 if !write_Ros2Aimdk_msgsSrvSetVolume_Response(v,&writer) { return nil,writer.code }
 return output[:writer.position],0
}
// @brief Decode exactly one complete aimdk_msgs/srv/SetVolume_Response value.
// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
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
// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/odin/API-CONTRACT.md
decode_Ros2Aimdk_msgsSrvSetVolume_Response :: proc(bytes: []u8, allocator: runtime.Allocator) -> (Ros2Aimdk_msgsSrvSetVolume_Response,u32) {
 if len(bytes)<28 || len(bytes)>156 { return Ros2Aimdk_msgsSrvSetVolume_Response{},22 }
 reader:=Reader{storage=bytes}
 value,ok:=read_Ros2Aimdk_msgsSrvSetVolume_Response(&reader,allocator)
 if !ok || !reader_finish(&reader) { return Ros2Aimdk_msgsSrvSetVolume_Response{},reader.code }
 return value,0
}
